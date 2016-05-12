(in-package :LFEvaluator)

(defstruct hypothesis
  rule2world ; bindings from the rule graph to the world graph
  world2rule ; vice-versa
  score ; sum of the scores of the bindings
  num-bindings ; number of bindings
  fringe ; edges which have at least one side bound, but are not
	 ; themselves bound yet, sorted in order of priority
  counts ; accumulated counts from bindings
  )

(defun edge-to-string (e)
  (if (edge-label e)
    (format nil "~a ~a ~a"
	    (get-node-id (edge-from e))
	    (ecase (type-of e)
	      (start-edge 's>)
	      (edge '->)
	      (string-match '=>)
	      (spatial-relation '*>)
	      (boundary-edge ']>)
	      )
	    (get-node-id (edge-to e))
	    )
    ; no label, must be a fake edge
    "fake edge"))

(defun extend-hypothesis (old-hypothesis new-bindings)
  "Create a new hypothesis by adding new-bindings to old-hypothesis. Old-hypothesis may be nil, representing the null starting hypothesis."
  (unless new-bindings
    (error "tried to make a hypothesis exactly like the old one"))
  (let ((new-hypothesis
	  (if (null old-hypothesis)
	    (make-hypothesis
		:rule2world (make-hash-table :test #'eq)
		:world2rule (make-hash-table :test #'eq)
		:score 0
		:num-bindings 0
		:fringe nil
		:counts nil
		)
	    (make-hypothesis
		:rule2world (copy-hash-table (hypothesis-rule2world old-hypothesis))
		:world2rule (copy-hash-table (hypothesis-world2rule old-hypothesis))
		:score (hypothesis-score old-hypothesis)
		:num-bindings (hypothesis-num-bindings old-hypothesis)
		:fringe (copy-list (hypothesis-fringe old-hypothesis))
		:counts (copy-tree (hypothesis-counts old-hypothesis))
		)
	    )))

    ;; add bindings to the hash, and score
    ;; while deleting bound edges from the fringe
    (dolist (b new-bindings)
      (when (or (< (binding-score b) 0.0) (> (binding-score b) 1.0))
	(error "binding has score outside the interval [0,1]: ~s"
	       (binding-score b)))
      (setf (binding-score b) (* (binding-score b) (binding-score-importance (binding-rule b))))
      (setf (gethash (binding-rule b) (hypothesis-rule2world new-hypothesis))
            (binding-world b))
      (setf (gethash (binding-world b) (hypothesis-world2rule new-hypothesis))
            (binding-rule b))
      (incf (hypothesis-score new-hypothesis) (binding-score b))
      (incf (hypothesis-num-bindings new-hypothesis) (binding-score-importance (binding-rule b)))
      (dolist (cnt (binding-counts b))
        (let ((summed-cnt (assoc (car cnt) (hypothesis-counts new-hypothesis))))
	  (cond
	   (summed-cnt
	    (incf (second summed-cnt) (second cnt))
	    (incf (third summed-cnt) (third cnt)))
	   (t
	    (push (copy-list cnt) (hypothesis-counts new-hypothesis)))
	   )))
      (when (typep (binding-rule b) 'edge)
	(dolist (e (real-edges (binding-world b)))
	  (setf (gethash e (hypothesis-world2rule new-hypothesis))
	        (binding-rule b)))
	(setf (hypothesis-fringe new-hypothesis)
	      (delete (binding-rule b) (hypothesis-fringe new-hypothesis)))
	))

    ;; add edges adjacent to newly bound nodes to fringe
    (dolist (b new-bindings)
      (when (typep (binding-rule b) 'node)
	(dolist (e (node-edges (binding-rule b)))
	  (unless (or (has-binding new-hypothesis e)
	              (member e (hypothesis-fringe new-hypothesis)))
	    (push e (hypothesis-fringe new-hypothesis))))))

    ;; sort the fringe by priority
    (setf (hypothesis-fringe new-hypothesis)
          (sort (hypothesis-fringe new-hypothesis)
	        (lambda (a b)
		  (< (priority a new-hypothesis) (priority b new-hypothesis)))))

    (when (member 'hypothesis *debug-tags*)
      (print-debug 'hypothesis "Hypothesis:~%")
      (print-debug 'hypothesis " score = ~a~%" (float (hypothesis-avg-score new-hypothesis)))
      (when old-hypothesis
	(print-debug 'hypothesis " old edge bindings:~%")
	(maphash
	  (lambda (r w)
	    (when (typep r 'edge)
	      (print-debug 'hypothesis "  ~a == ~a~%"
			   (edge-to-string r)
			   (edge-to-string w)
			   )))
	  (hypothesis-rule2world old-hypothesis))
	)
      (print-debug 'hypothesis " new edge bindings:~%")
      (dolist (b new-bindings)
	(let ((r (binding-rule b))
	      (w (binding-world b)))
	  (when (typep r 'edge)
	    (print-debug 'hypothesis "  ~a == ~a~%"
			 (edge-to-string r)
			 (edge-to-string w)
			 ))))
      )
    new-hypothesis))

(defun has-binding (h piece)
  "is the rule/world piece bound to some world/rule piece in this hypothesis?"
  (or (gethash piece (hypothesis-rule2world h))
      (gethash piece (hypothesis-world2rule h))))

(defun hypothesis-complete-p (h)
  "does this hypothesis completely map all parts of the rule to parts of the world?"
  (null (hypothesis-fringe h))) ; no more extensions are necessary

(defun hypothesis-avg-score (h)
  "Return the average score of all the bindings in hypothesis h"
  (if (= 0 (hypothesis-num-bindings h))
    0
    (/ (hypothesis-score h) (hypothesis-num-bindings h))
    ))

(defun hypothesis-goal (h)
  "return the world binding of the rule's goal node, or nil if it isn't bound yet"
  (maphash (lambda (rule world)
	     (when (and (typep rule 'node) (node-goal rule))
	       (return-from hypothesis-goal world)))
           (hypothesis-rule2world h))
  nil)

(defun hypothesis-extensions (h)
  "return a list of new hypotheses that are possible extensions of this one
   assumes (not (hypothesis-complete-p h))"
  (print-debug 'hypothesis "extending hypothesis through edge ~a~%"
	       (edge-to-string (first (hypothesis-fringe h))))
;  (print-debug 'fringe "fringe:~%~{  ~a~%~}" (mapcar #'edge-to-string (hypothesis-fringe h)))

  ;; extend only through the first priority fringe edge
  ;; (leave the other fringe edges for the extensions to deal with)
  (let (ret
        (e (first (hypothesis-fringe h))))
    (dolist (pb (possible-bindings e h))
      (push (extend-hypothesis h pb) ret))
    (print-debug 'hypothesis "found ~a extensions.~%" (length ret))
    ret))

(defun hypothesis-to-dot (h)
  "Return a graphiz dot digraph fragment representing the hypothesis h."
  (with-output-to-string (s)
    (maphash (lambda (rule-element world-element)
	       (when (start-node-p rule-element)
	         (format s "~a~a"
		         (gold-graph-to-dot rule-element h)
			 (test-graph-to-dot world-element h)
			 ))
	       )
             (hypothesis-rule2world h)
	     )
    (maphash (lambda (rule-element world-element)
               (when (and (node-p rule-element)
	                  (not (start-node-p rule-element))
			  (not (fake-node-p world-element)))
	         ; a successful binding between real nodes
	         (format s "  \"~s\" -> \"~s\" [color=green]~%"
		           (get-node-id rule-element)
			   (get-node-id world-element)
			   ))
	       )
             (hypothesis-rule2world h)
	     )
    ))
