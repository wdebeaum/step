(in-package :LFEvaluator)

(defstruct node
  label edges goal id uttnum)

(defmethod print-object ((n node) s)
  (format s "#<~a: label=~a, id=~a, goal=~a, number of edges=~a>"
    (type-of n)
    (node-label n) (get-node-id n) (node-goal n) (length (node-edges n))
    ))

(defun get-node-id (n)
  "this node's id, generated if necessary"
  (if (slot-value n 'id)
    (slot-value n 'id)
    (setf (slot-value n 'id)
          (gentemp (concatenate 'string
	                        "LFE-"
				(when (symbolp (node-label n))
				  (string (node-label n)))
				"-")))
    ))

(defun get-node-edges (n)
  "all edges adjacent to this node, retrieved from WebTracker if neccessary"
  (node-edges n))

(defun filter-edges (predicate n &key cached-only)
  "@return those edges adjacent to n that satisfy predicate"
  (let (ret)
    (dolist (e (if cached-only
                 (node-edges n)
		 (get-node-edges n)))
      (when (funcall predicate e)
        (push e ret)))
    (nreverse ret)))

(defun find-edge (predicate n &key cached-only)
  (declare (ignore cached-only)) ; for now
  "@return an edge connected to n that satisfies predicate
   (often callers know there is at most one, so this is more efficient than filter-edges)"
  ;; first try to find among the edges we already know about
  (dolist (e (node-edges n))
    (when (funcall predicate e)
      (return-from find-edge e)))
  nil)

(defun find-inbound-edge (n)
  "Find the edge pointing to node n. (useful for finding parent->child edges from the child)"
  (find-edge (lambda (e)
               (eq (edge-to e) n))
             n))

(defun find-descendant (predicate n &optional traversed)
  "Find some descendant of n that satisifies predicate."
  (unless traversed
    (setf traversed (make-hash-table :test #'eq)))
  (setf (gethash n traversed) t)
  (if (funcall predicate n)
    n
    (dolist (c (get-edges-opposites n :out))
      (unless (gethash c traversed)
        (let ((found (find-descendant predicate c traversed)))
	  (when found
	    (return found)))))
    ))

(defun delete-edges-from-graph-if (predicate n &optional traversed)
  "Destructively delete any edges in the graph rooted at the node n which satisfy the predicate. Such edges are not considered to be part of the graph during the traversal."
  (unless traversed
    (setf traversed (make-hash-table :test #'eq)))
  (setf (gethash n traversed) t)
  (setf (node-edges n) (delete-if predicate (node-edges n)))
  (dolist (e (node-edges n))
    (let ((opposite (if (eq n (edge-from e)) (edge-to e) (edge-from e))))
      (unless (gethash opposite traversed)
        (delete-edges-from-graph-if predicate opposite traversed))))
  n)

(defun get-edges-opposites (n
                            direction ; :in or :out
  	                    &optional label
			    &key cached-only)
  "return the other sides of the edges labeled label in the direction direction"
  (case direction
    (:in
      (mapcar #'edge-from
              (filter-edges (lambda (e)
	                      (and (eq (edge-to e) n)
			           (or (null label) 
				       (equalp (edge-label e) label))))
	                    n
			    :cached-only cached-only))
      )
    (:out
      (mapcar #'edge-to
              (filter-edges (lambda (e)
	                      (and (eq (edge-from e) n)
			           (or (null label)
			               (equalp (edge-label e) label))))
	                    n
			    :cached-only cached-only))
      )
    (otherwise
      (error "get-edges-opposites takes :in or :out as the second parameter"))))

(defun get-edge-opposite (n
                          direction ; :in or :out
  	                  &optional label
			  &key cached-only)
  "return the other side of the first edge labeled label in the direction direction"
  (case direction
    (:in
      (let ((found (find-edge (lambda (e)
				(and (eq (edge-to e) n)
				     (or (null label)
					 (equalp (edge-label e) label))))
	                      n :cached-only cached-only)))
        (if found
	  (edge-from found)
	  nil)))
    (:out
      (let ((found (find-edge (lambda (e)
				(and (eq (edge-from e) n)
				     (or (null label)
					 (equalp (edge-label e) label))))
	                      n :cached-only cached-only)))
        (if found
	  (edge-to found)
	  nil)))
    (otherwise
      (error "get-edge-opposite takes :in or :out as the second parameter"))))

(defun node-scored-binding (rule-node world-node)
  (when (and (eq (type-of rule-node) (type-of world-node))
             (packageless-equalp (node-label rule-node)
                                 (node-label world-node))
             (packageless-equalp (node-uttnum rule-node)
	                         (node-uttnum world-node))
	     )
    (make-binding :score 0 :rule rule-node :world world-node
    		  :counts '((other-node 1 1)))))

(defun node-fake-binding (rule-node)
  (make-binding :rule rule-node :world (make-node) :score 1
                :counts '((other-node 0 1))))

(defun fake-node-p (n)
  "Was n created in order to bind a rule node to nothing in the world?"
  ;; I hope this is thorough enough
  (and (null (node-label n))
       (null (node-edges n))
       (null (node-uttnum n))
       ))

(defun graph-total-importance (n &optional traversed)
  "@return The total of the importances of nodes and edges that can be reached from n (including n itself).
   @param traversed A hash table mapping nodes to whether we've traversed them yet. We won't recurse on any already-traversed nodes."
  (unless traversed
    (setf traversed (make-hash-table :test #'eq)))
  (setf (gethash n traversed) t)
  (+ (binding-score-importance n) ; count n
     ;; count outgoing edges (outgoing only, to prevent double counting)
     (loop for e in (node-edges n) sum
       (if (eq n (edge-from e))
         (binding-score-importance e)
	 0))
     ;; recurse on nodes we haven't traversed yet
     (loop for e in (node-edges n) sum
       (+ (if (gethash (edge-from e) traversed)
	    0
	    (graph-total-importance (edge-from e) traversed))
	  (if (gethash (edge-to e) traversed)
	    0
	    (graph-total-importance (edge-to e) traversed))
	  ))
     ))

(defun add-to-counts (old-counts new-counts)
  "@param old-counts a list containing a single item, being a list of old counts to add to (this is destructively modified)
   @param new-counts a list of new counts to add
   A count is a list of a symbol followed by two or three numbers. The numbers are added for each pair of counts with matching symbols.
   "
  (dolist (new-count new-counts)
    (let ((old-count (assoc (car new-count) (car old-counts))))
      (cond
       (old-count
        (incf (second old-count) (second new-count))
        (incf (third old-count) (third new-count))
	(when (fourth new-count)
	  (if (fourth old-count)
	    (incf (fourth old-count) (fourth new-count))
	    (nconc old-count (list (fourth new-count)))
	    ))
	)
       (t
        (push (copy-list new-count) (car old-counts)))
       ))))

(defun graph-total-fake-counts (n &optional traversed)
  "@return The totals of the counts for fake-binding nodes and edges that can be reached from n (including n itself).
   @param traversed A hash table mapping nodes to whether we've traversed them yet. We won't recurse on any already-traversed nodes."
  (unless traversed
    (setf traversed (make-hash-table :test #'eq)))
  (setf (gethash n traversed) t)

  (let ((accumulated-counts (list (copy-tree (binding-counts (fake-binding n))))))
    ;; count outgoing edges (outgoing only, to prevent double counting)
    (loop for e in (node-edges n) do
      (when (eq n (edge-from e))
        (add-to-counts accumulated-counts (binding-counts (fake-binding e)))))
    ;; recurse on nodes we haven't traversed yet
    (loop for e in (node-edges n) do
      (unless (gethash (edge-from e) traversed)
	(add-to-counts accumulated-counts (graph-total-fake-counts (edge-from e) traversed)))
      (unless (gethash (edge-to e) traversed)
	(add-to-counts accumulated-counts (graph-total-fake-counts (edge-to e) traversed)))
      )
    (car accumulated-counts)))

(defun add-test-counts (gold-counts test-graph)
  "Destructively modify gold-counts to include the max counts for the test graph as well. Each count will then be of the form:
   (count-name num-matched num-in-gold num-in-test)
   @param gold-counts A list of the counts for a hypothesis as seen from the gold LF's perspective.
   @param test-graph The test LF graph.
   @return the modified gold-counts
   "
  (let ((test-counts (graph-total-fake-counts test-graph)))
    (dolist (test-count test-counts)
      (let ((gold-count (assoc (car test-count) gold-counts)))
        (cond
	 (gold-count
	  (rpush (third test-count) gold-count))
	 (t
	  (push (list (first test-count) 0 0 (third test-count))
	        gold-counts))
	 ))))
  (dolist (gold-count gold-counts)
    (unless (fourth gold-count)
      (rpush 0 gold-count)))
  gold-counts)

