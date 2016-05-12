(in-package :LFEvaluator)

(defstruct (start-edge (:include edge))
  "An edge from the start node to one of the LF-nodes"
  )

(defun make-and-add-start-edge (&key from to)
  "Like make-start-edge, but also add the edge to the node-edges of from and to."
  (let ((edge (make-start-edge :label 'start :from from :to to)))
    (push edge (node-edges from))
    (push edge (node-edges to))
    edge))

(defun start-edge-possible-bindings (e h)
  (case (which-sides-are-bound e h)
    (:both
      (let ((world-to (gethash (edge-to e) (hypothesis-rule2world h)))
            (world-from (gethash (edge-from e) (hypothesis-rule2world h))))
        (dolist (ne (get-node-edges world-from))
	  (when (and (eq (edge-from ne) world-from)
	             (eq (edge-to ne) world-to)
		     )
	    (return-from start-edge-possible-bindings (list (list
	      (make-binding :score (if (equalp (edge-label ne) (edge-label e))
	      			     0 1)
	                    :rule e
			    :world ne))))
	    ))
        ;; make a fake binding for the sake of completeness
	(list (list (fake-binding e)))
	))
    (:from-only
      (let (ret
            (world-from (gethash (edge-from e) (hypothesis-rule2world h)))
	    )
        (dolist (ne (get-node-edges world-from))
	  (when (and (start-edge-p ne)
		     (not (has-binding h ne))
		     (eq (edge-from ne) world-from)
		     )
	    (let ((nb (scored-binding (edge-to e) (edge-to ne))))
	      (when nb
	        (push (list (make-binding :score 0 :rule e :world ne) nb)
		      ret)))
	    ))
	(push (list (fake-binding e)
		    (fake-binding (edge-to e)))
	      ret)
	ret))
    (:to-only
      (error "sepb :to-only shouldn't happen")
      (let (ret
	    (world-to (gethash (edge-to e) (hypothesis-rule2world h))))
	(dolist (ne (get-node-edges world-to))
	  (when (and (start-edge-p ne)
	             (not (has-binding h ne))
		     (eq (edge-to ne) world-to)
		     )
	    (let ((nb (scored-binding (edge-from e) (edge-from ne))))
	      (when nb
	        (push (list (make-binding :score 0 :rule e :world ne) nb)
		      ret)))
	    ))
	(push (list (fake-binding e)
		    (fake-binding (edge-from e)))
	      ret)
	ret))
    (:neither
      (error "Attempted to get possible bindings for an edge where neither edge is bound"))
    ))

(defun start-edge-real-edges (e)
  (list e))

(defun start-edge-fake-binding (e)
  (make-binding :rule e :world (make-start-edge) :score 1
                :counts nil))

