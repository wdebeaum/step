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
;;; and split questions using superlatives into useful parts
;;;

(defun find-superlative-node (lfg)
    (declare (type lf-graph lfg))
  "Find the min-val/max-val node, if any, in the given lf-graph. Signal an
   error if there is more than one. Return nil if there are none."
  (let ((superlative-nodes
	  (remove-if-not
	    (lambda (n)
	      (member (lf-node-type n lfg) '(ONT::min-val ONT::max-val)))
	    (nodes lfg))))
    (case (length superlative-nodes)
      (0 nil)
      (1 (car superlative-nodes))
      (otherwise
	(error "can't handle question with more than one superlative"))
      )))

(defun simplify-superlative-of-the (superlative-node lfg)
  "If the given LF graph with a superlative node uses the more complicated \"of
   the\"/:refset construction, return a copy that doesn't. Otherwise return the
   original graph."
  (if (has-edge superlative-node :refset lfg)
    (loop with refset = (traverse-only-edge superlative-node :refset lfg)
	  with figure = (traverse-only-edge superlative-node :figure lfg)
	  for old-term in (lf-graph-terms lfg)
	  for new-term = (copy-list old-term)
	  for term-id = (second old-term)
	  do
	    ;; remove :refset arg from superlative term
	    (when (eq superlative-node term-id)
	      (setf (cdddr new-term) (remove-arg (cdddr new-term) :refset)))
	    ;; replace figure node with refset node in args
	    (setf (cdddr new-term) (substitute refset figure (cdddr new-term)))
	    ;; add :mod from refset term to superlative term (replacing the
	    ;; :mod from the figure to the superlative)
	    (when (eq refset term-id)
	      (push superlative-node (cdddr new-term))
	      (push :mod (cdddr new-term)))
	  when (not (eq figure (second old-term))) ; don't take figure term
	    collect new-term
	    into new-terms
	  finally (return (make-lf-graph :terms new-terms)))
    ; no :refset, just return the original graph
    lfg))

;; common lisp, y u no have this already?
(defun copy-hash-table (old-hash)
  (loop with new-hash =
	  (make-hash-table
	    :test (hash-table-test old-hash)
	    :size (hash-table-size old-hash)
	    :rehash-size (hash-table-rehash-size old-hash)
	    :rehash-threshold (hash-table-rehash-threshold old-hash)
	    )
	for k being the hash-keys of old-hash using (hash-value v)
	do (setf (gethash k new-hash) v)
	finally (return new-hash)))

(defun show-hash-table-entries (h)
  (loop for k being the hash-keys of h using (hash-value v)
	do (format t "  ~s => ~s~%" k v)))

(defun split-superlative (superlative-node lfg)
    (declare (type symbol superlative-node) (type lf-graph lfg))
  "Given a node representing superlative adjective in an lf-graph, return three
   lf-graphs and certain nodes in them as multiple values:
    - a graph for just the noun the superlative applies to (with any other
      modifiers)
    - the node for that noun (to be used as the focus of a query-graph)
    - a graph that is like two copies of the above graph with a comparative
      linking the two nouns that is similar to the superlative (i.e. max-val
      becomes more-val and min-val becomes less-val)
    - the node for the duplicate copy of the noun that the comparative is
      pointing to
    - a graph for the rest of the original graph, including the noun but not
      its modifiers
   This function also handles normalizing stilted superlative phrases like
   \"the X-est of the Ys\" to be the same as \"the X-est Y\".
   See also find-superlative-node."
  (let* ((slfg (simplify-superlative-of-the superlative-node lfg))
	 ;; parts we'll need
	 (sa-node (speechact-node slfg))
	 (superlative-type (second (label superlative-node slfg)))
	 (comparative-type
	   `(:*
	      ,(ecase (second superlative-type)
		 (ONT::MAX-VAL 'ONT::MORE-VAL)
		 (ONT::MIN-VAL 'ONT::LESS-VAL))
	      ,(third superlative-type)
	      ))
	 (superlative-scale (traverse-only-edge superlative-node :scale slfg))
	 (noun-node (traverse-only-edge superlative-node :figure slfg))
	 (noun-term (find-lf-term noun-node slfg))
	 (stripped-noun-term (subseq noun-term 0 3)) ; no args
	 ;; set up basics of new graphs
	 (other-noun-node (gentemp "V" :ONT)) ; not final
	 (be-node (gentemp "V" :ONT))
	 ;; "What/is there a <NP>?"
	 ;; (this is sort of a weird hybrid that the parser wouldn't actually
	 ;; produce, but lf-to-query-graph works on it)
	 (noun-lfg (make-lf-graph :terms `(
	   (ONT::SPEECHACT ,sa-node ONT::SA_WH-QUESTION
	       :content ,be-node
	       :focus ,noun-node)
	   (ONT::F ,be-node (:* ONT::exists W::be) :neutral ,noun-node)
	   )))
	 ;; "Is (another) <NP> <comparative> than <NP>?"
	 (comp-lfg (make-lf-graph :terms `(
	   (ONT::SPEECHACT ,sa-node ONT::SA_YN-QUESTION :content ,be-node)
	   (ONT::F ,be-node (:* ONT::have-property W::be)
	       :neutral ,other-noun-node
	       :formal ,superlative-node)
	   (ONT::F ,superlative-node ,comparative-type
	       :scale ,superlative-scale
	       :figure ,other-noun-node
	       :compar ,noun-node)
	   ,(find-lf-term superlative-scale slfg)
	   )))
	 ;; everything from the original question except the superlative and
	 ;; anything else under the noun node
	 (rest-lfg (make-lf-graph :terms nil))
	 ;; visited hash for masking out nodes involved with the superlative
	 ;; itself
	 (superlative-mask (make-hash-table :test #'eq))
	 ;; visited hash for collecting the nodes in the noun subgraph
	 noun-subgraph-nodes
	 other-noun-subgraph-nodes
	 )
    ;(format t "~&superlative-node=~s~%superlative-scale=~s~%initial noun-lfg=~%  ~s~%initial comp-lfg=~%  ~s~%" superlative-node superlative-scale noun-lfg comp-lfg)
    (setf (gethash superlative-node superlative-mask) superlative-node
	  (gethash superlative-scale superlative-mask) superlative-scale)
    ;(format t "superlative-mask=~%")
    ;(show-hash-table-entries superlative-mask)
    ;; copy just the noun subgraph into noun-lfg (without superlative)
    (setf noun-subgraph-nodes (copy-hash-table superlative-mask))
    ;(format t "noun-subgraph-nodes (before) =~%")
    ;(show-hash-table-entries noun-subgraph-nodes)
    (copy-lf-subgraph noun-node noun-lfg slfg :visited noun-subgraph-nodes)
    ;(format t "noun-subgraph-nodes (after noun-lfg) =~%")
    ;(show-hash-table-entries noun-subgraph-nodes)
    ;; delete :mod superlative-node from noun term in noun-lfg
    (delete-specific-arg-from-term noun-node :mod superlative-node noun-lfg)
    ;; copy the noun subgraph into comp-lfg twice; first time add it with the
    ;; same term IDs, and second time add it with distinct term IDs (starting
    ;; with other-noun-node)
    (setf noun-subgraph-nodes (copy-hash-table superlative-mask))
    (copy-lf-subgraph noun-node comp-lfg slfg :visited noun-subgraph-nodes)
    ;(format t "noun-subgraph-nodes (after comp-lfg) =~%")
    ;(show-hash-table-entries noun-subgraph-nodes)
    (setf other-noun-subgraph-nodes (copy-hash-table superlative-mask))
    (copy-lf-subgraph noun-node comp-lfg slfg
	:fresh-vars t :new-node other-noun-node
	:visited other-noun-subgraph-nodes)
    ;(format t "other-noun-subgraph-nodes=~%")
    ;(show-hash-table-entries other-noun-subgraph-nodes)
    ;; copy everything from the original question except the noun subgraph into
    ;; rest-lfg
    (copy-lf-subgraph sa-node rest-lfg slfg :visited noun-subgraph-nodes)
    ;(format t "noun-subgraph-nodes (after rest-lfg) =~%")
    ;(show-hash-table-entries noun-subgraph-nodes)
    ;; but add the noun node itself with no args
    (setf (lf-graph-terms rest-lfg)
	  (append (lf-graph-terms rest-lfg) (list stripped-noun-term)))
    ;; return what's needed to make queries
    (values noun-lfg noun-node comp-lfg other-noun-node rest-lfg)
    ))
