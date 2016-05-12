(in-package :LFEvaluator)

(defstruct (start-node (:include node))
  "The node all start-edges are from"
  )

(defun start-node-scored-binding (rule-node world-node)
  (when (equalp (node-label rule-node)
                (node-label world-node))
    (make-binding :score 0 :rule rule-node :world world-node)))

;; it's kinda silly that I need this
(defun start-node-fake-binding (rule-node)
  (make-binding :score 1 :rule rule-node :world (make-start-node) :counts nil))

(defun add-start-node-to-graph (id2node)
  (let ((sn (make-start-node :label 'start)))
    (loop for lfn being the hash-values in id2node do
      (make-and-add-start-edge :from sn :to lfn))
    sn))

(defun gold-graph-to-dot (start h)
  "Return a Graphviz dot digraph fragment representing the gold graph whose start node is start. SPEECHACTS will each get their own subgraph cluster, and start-nodes and start-edges won't be included. The graph is colored based on hypothesis h."
  (with-output-to-string (s)
    (let ((traversed (make-hash-table :test #'eq)))
      (dolist (e (node-edges start))
	(setf (node-id (edge-to e))
	      (intern (concatenate 'string "GOLD"
				   (symbol-name (get-node-id (edge-to e)))
				   ))))
      (dolist (e (node-edges start))
	(when (and (lf-node-p (edge-to e))
		   (packageless-equalp 'speechact
				       (lf-node-indicator (edge-to e))))
	  (format s "subgraph cluster_~s {~%~a}~%" (get-node-id (edge-to e))
		    (connected-component-to-dot (edge-to e) h traversed))
	  ))
      (when (member-if (lambda (e)
			 (not (nth-value 1 (gethash (edge-to e) traversed))))
		       (node-edges start))
	(format s "subgraph cluster_leftovers {~%")
	(dolist (e (node-edges start))
	  (when (not (nth-value 1 (gethash (edge-to e) traversed)))
	    (format s "~a" (connected-component-to-dot (edge-to e) h traversed))
	    ))
	(format s "}~%")
	)
      (format s "~a" (coref-edges-to-dot start h))
      )))

(defun test-graph-to-dot (start h)
  "Return a Graphviz dot digraph fragment representing the test graph whose start node is start. No clustering is done, and start-nodes and start-edges won't be included. The graph is colored based on hypothesis h."
  (with-output-to-string (s)
    (let ((traversed (make-hash-table :test #'eq)))
      (dolist (e (node-edges start))
	(setf (node-id (edge-to e))
	      (intern (concatenate 'string "TEST"
				   (symbol-name (get-node-id (edge-to e)))
				   ))))
      (dolist (e (node-edges start))
        (unless (gethash (edge-to e) traversed)
	  (format s "~a" (connected-component-to-dot (edge-to e) h traversed))
	  ))
      (format s "~a" (coref-edges-to-dot start h))
      )))

(defun coref-edges-to-dot (start h)
  "Return a Graphviz dot digraph fragment representing just the :coref edges in the graph with start-node start."
  (with-output-to-string (s)
    (dolist (se (node-edges start))
      (dolist (ce (node-edges (edge-to se)))
        (when (and (eql :coref (edge-label ce))
	           (eq (edge-to se) (edge-from ce)))
	  (format s "~a" (edge-to-dot ce h))
	  )))))

(defun connected-component-to-dot (n h &optional traversed)
  "Return a Graphviz dot digraph fragment representing the part of the graph reachable from node n (including n) by traversing edges forward, stopping at nodes in the hash table traversed, and at :coref edges. The graph is colored based on hypothesis h."
  (unless traversed
    (setf traversed (make-hash-table :test #'eq)))
  (setf (gethash n traversed) t)
  (with-output-to-string (s)
    (format s "  \"~s\" " (get-node-id n))
    (let ((bound-node (has-binding h n)))
      (if (and bound-node (not (fake-node-p bound-node)))
        (cond
         ((and (lf-node-p n) (lf-node-word n))
          (format s "[label=<<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td>(</td><td><font color=\"~s\">~s</font></td><td> (:* </td><td><font color=\"~s\">~s</font></td><td> ~s))</td></tr></table>>,fontcolor=darkgreen]~%"
	          (if (packageless-equalp (lf-node-indicator n)
		                          (lf-node-indicator bound-node))
		    'darkgreen 'maroon)
		  (lf-node-indicator n)
		  (if (packageless-equalp (lf-node-lftype n)
		                          (lf-node-lftype bound-node))
		    'darkgreen 'maroon)
		  (lf-node-lftype n)
		  (lf-node-word n)
		  ))
	 ((lf-node-p n) ; no word
          (format s "[label=<<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td>(</td><td><font color=\"~s\">~s</font></td><td> </td><td><font color=\"~s\">~s</font></td><td>)</td></tr></table>>,fontcolor=darkgreen]~%"
	          (if (packageless-equalp (lf-node-indicator n)
		                          (lf-node-indicator bound-node))
		    'darkgreen 'maroon)
		  (lf-node-indicator n)
		  (if (packageless-equalp (lf-node-lftype n)
		                          (lf-node-lftype bound-node))
		    'darkgreen 'maroon)
		  (lf-node-lftype n)
		  ))
	 (t ; not an lf-node
	  (format s "[label=~s,fontcolor=darkgreen]~%"
	          (format nil "~s" (node-label n))))
	 )
	;; not bound
	(format s "[label=~s,fontcolor=maroon]~%"
		(format nil "~s"
			(ecase (type-of n)
			  (lf-node
			   (list (lf-node-indicator n)
			         (if (lf-node-word n)
				  `(:* ,(lf-node-lftype n) ,(lf-node-word n))
				  (lf-node-lftype n)
				  )))
			  (node (node-label n))
			  )))
	))
    (dolist (e (node-edges n))
      (when (and (not (eql :coref (edge-label e)))
                 (eq n (edge-from e)))
	(format s "~a" (edge-to-dot e h))
	(unless (gethash (edge-to e) traversed)
	  (format s "~a" (connected-component-to-dot (edge-to e) h traversed)))
	))
    ))

(defun edge-to-dot (e h)
  (with-output-to-string (s)
    (let* ((bound-edge (has-binding h e))
	   (edge-color (if (and bound-edge
				(edge-label bound-edge))
			 'darkgreen 'maroon))
	   (label-color (if (and bound-edge
				 (eql (edge-label e)
				      (edge-label bound-edge)))
			  'darkgreen 'maroon)))
      (format s "  \"~s\" -> \"~s\" [label=\"~s\",color=~s,fontcolor=~s]~%"
		(get-node-id (edge-from e)) (get-node-id (edge-to e))
		(edge-label e)
		edge-color label-color
		))))

