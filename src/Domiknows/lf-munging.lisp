(in-package :domiknows)

;;;;
;;;; lf-munging.lisp - various manipulations of lf-terms and lf-graphs to make
;;;; them better fit into graphs and queries
;;;;

;;;
;;; non-node values -> nodes
;;;

(defun add-terms-for-values (lf-terms)
  "Given a list of lf-terms, return a copy that has extra terms replacing
   argument values that were previously inline in other terms, particularly
   :scale."
  (loop for old-term in lf-terms
	for scale-pos = (position :scale old-term) ; TODO? other args
	append
    (if scale-pos
      (let ((id (gentemp "V" :ont))
	    (val-pos (1+ scale-pos)))
	`((nil ,id ,(nth val-pos old-term))
	  (,@(subseq old-term 0 val-pos) ,id ,@(subseq old-term (1+ val-pos)))
	  ))
      (list old-term))))

(defun split-list-valued-roles (lf-terms)
  "Given a list of lf-terms, return a copy that has any roles whose values are
   lists of term IDs instead of single term IDs split into multiple roles, e.g.
   :sequence (V1 V2) becomes :sequence V1 :sequence1 V2."
  (loop for old-term in lf-terms
	for old-prefix = (subseq old-term 0 3)
	for old-args = (cdddr old-term)
	collect
	  (append old-prefix
	    (loop for old-rest = old-args then (cddr old-rest)
		  for old-key = (car old-rest)
		  for old-val = (cadr old-rest)
		  while old-rest
		  append
		    ;; if old-val is a nonempty list of term IDs
		    (if (and old-val (listp old-val)
			     (every #'is-trips-variable old-val))
		      ;; split the role
		      (loop with old-key-str = (symbol-name old-key)
			    with lm1 = (- (length old-key-str) 1)
			    with new-key-base =
			      ;; remove final S if any, e.g. :MODS -> :MOD
			      (if (char= #\S (char old-key-str lm1))
				(subseq old-key-str 0 lm1)
				old-key-str)
			    for new-val in old-val
			    for i upfrom 0
			    for new-key =
			      (intern (if (eq 0 i)
					new-key-base
					(format nil "~a~s" new-key-base i))
				      :keyword)
			    append (list new-key new-val)
			    )
		      ;; normal role, don't split
		      (list old-key old-val)
		      )
		    ))
	  ))

(defun prepare-lf-terms-for-graph (lf-terms)
  (add-terms-for-values (split-list-valued-roles lf-terms)))


;;;
;;; AND/OR operators -> lf-graph per operand
;;;

(defun find-operator-node (lfg)
    (declare (type lf-graph lfg))
  "Find the AND/OR operator node, if any, in the given lf-graph. Signal an
   error if there is more than one. Return nil if there are none."
  (let ((operator-nodes
	  (remove-if-not
	    (lambda (n)
	      (and (has-edge n :operator lfg)
		   (has-edge n :sequence lfg)
		   (has-edge n :sequence1 lfg)))
	    (nodes lfg))))
    (case (length operator-nodes)
      (0 nil)
      (1 (car operator-nodes))
      (otherwise
	(error "can't handle question with more than one AND/OR operator"))
      )))

(defun copy-lf-graph-choosing-operand-rec (n operator-node operand-edge-label dst-graph src-graph visited)
    (declare
      (type symbol n operator-node operand-edge-label)
      (type lf-graph dst-graph src-graph)
      (type hash-table visited))
  "Copy the node n from src-graph to dst-graph and recurse on its out edges,
   but if operator-node is encountered, skip it and instead use the target of
   the edge with the operand-edge-label. Keep track of which nodes have been
   visited already (and which nodes they map to) in the hash-table visited, and
   return the node in the dst-graph."
  (let ((v (gethash n visited)))
    (when v
      (return-from copy-lf-graph-choosing-operand-rec v)))
  (if (eq n operator-node)
    ; operator node, replace with operand edge target and recurse on that
    (let ((operand-node (traverse-only-edge n operand-edge-label src-graph)))
      (setf (gethash n visited) operand-node)
      (copy-lf-graph-choosing-operand-rec operand-node operator-node operand-edge-label dst-graph src-graph visited))
    ; not the operator node, copy and recurse
    (let* ((old-term (find-lf-term n src-graph))
	   (new-term
	     ;; take first part of term (no arguments) and reverse so we can
	     ;; push new arguments
	     (reverse (subseq old-term 0 3))))
      (setf (gethash n visited) n)
      (loop for e in (out-edges n src-graph)
	    for edge-label = (label e src-graph)
	    for src-target = (target e src-graph)
	    for dst-target =
	      ;; make sure this role really points to a term in the lf graph
	      ;; before we recurse on it
	      (if (and (is-trips-variable src-target)
		       (find-lf-term src-target src-graph))
		(copy-lf-graph-choosing-operand-rec src-target operator-node operand-edge-label dst-graph src-graph visited)
		src-target)
	    do (push edge-label new-term)
	       (push dst-target new-term)
	    )
      ;; undo push reversal and add new-term to dst-graph
      (push (nreverse new-term) (lf-graph-terms dst-graph))
      n)
    ))

(defun copy-lf-graph-choosing-operand (operator-node operand-edge-label src-graph)
  "Make a new lf-graph that is a copy of src-graph with the specified operand
   selected (see (this)-rec)."
  (let ((dst-graph (make-lf-graph :terms nil)))
    (copy-lf-graph-choosing-operand-rec
        (speechact-node src-graph)
	operator-node operand-edge-label
	dst-graph src-graph
	(make-hash-table :test #'eq))
    ; undo push reversal
    (setf (lf-graph-terms dst-graph) (nreverse (lf-graph-terms dst-graph)))
    dst-graph))

(defun split-operator (operator-node lfg)
    (declare (type symbol operator-node) (type lf-graph lfg))
  "Given a node representing an AND or OR operator in an lf-graph, return a
   list of lf-graphs corresponding to choosing one of the operands of that
   operator, and otherwise copying the original lf-graph. See also
   find-operator-node."
  (loop for i upfrom 0
	for seq-label =
	  (if (= i 0)
	    :sequence
	    (intern (format nil "SEQUENCE~a" i) :keyword))
	while (has-edge operator-node seq-label lfg)
	collect (copy-lf-graph-choosing-operand operator-node seq-label lfg)
	))

;;;
;;; simplify superlatives: "the X-est of the Ys" -> "the X-est Y"
;;;

; TODO!!!
