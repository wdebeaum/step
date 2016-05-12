(in-package :LFEvaluator)

(defstruct edge
  "a normal, direct edge"
  label
  from
  to
  )

(defun make-and-add-edge (&key label from to)
  "Like make-edge, but also add the edge to the node-edges of from and to."
  (let ((edge (make-edge :label label :from from :to to)))
    (push edge (node-edges from))
    (push edge (node-edges to))
    edge))

(defun which-sides-are-bound (e h)
  "Which sides of edge e have bindings in hypothesis h?"
  (if (has-binding h (edge-from e))
    (if (has-binding h (edge-to e))
      :both
      :from-only)
    (if (has-binding h (edge-to e))
      :to-only
      :neither)
    ))

(defun get-bound-side (e h)
  "Return the world binding of the side of edge e that is bound in h, or nil if neither side is bound"
  (cond
   ((has-binding h (edge-from e))
    (gethash (edge-from e) (hypothesis-rule2world h)))
   ((has-binding h (edge-to e))
    (gethash (edge-to e) (hypothesis-rule2world h)))
   (t
    nil)
   ))

(defun edge-possible-bindings (e h)
  (case (which-sides-are-bound e h)
    (:both
      (let ((world-to (gethash (edge-to e) (hypothesis-rule2world h)))
            (world-from (gethash (edge-from e) (hypothesis-rule2world h))))
        (dolist (ne (get-node-edges world-from))
	  (when (and (eq (edge-from ne) world-from)
	             (eq (edge-to ne) world-to)
		     )
	    ;; FIXME? is it OK to assume that there is at most one edge from a given node to a given node?
	    (return-from edge-possible-bindings (list (list
	      (let ((role-name-match (if (equalp (edge-label ne) (edge-label e))
	      			       0 1)))
		(make-binding :score (/ role-name-match 2)
			      :rule e
			      :world ne
			      :counts
			        `((role 1 1)
			          (role-name ,(- 1 role-name-match) 1)
				  ))))))
	    ))
	;; if we got here, there were no real matches
	;; fake it with a bad score
	(list (list (fake-binding e)))
	))
    (:from-only
      (let (ret
            (world-from (gethash (edge-from e) (hypothesis-rule2world h)))
	    )
        (dolist (ne (get-node-edges world-from))
	  (when (and (not (has-binding h ne))
		     (eq (edge-from ne) world-from)
		     )
	    (let ((nb (scored-binding (edge-to e) (edge-to ne))))
	      (when nb
	        (push
		  (list
		    (let ((role-name-match (if (equalp (edge-label ne)
						       (edge-label e))
					     0 1)))
		      (make-binding
		        :score (/ role-name-match 2)
		        :rule e
			:world ne
			:counts `((role 1 1)
			          (role-name ,(- 1 role-name-match) 1))))
		    nb)
		  ret)))
	    ))
	(push (list (fake-binding e)
		    ;(fake-binding (edge-to e))
		    )
	      ret)
	ret))
    (:to-only
      (let (ret
	    (world-to (gethash (edge-to e) (hypothesis-rule2world h))))
	(dolist (ne (get-node-edges world-to))
	  (when (and (not (has-binding h ne))
		     (eq (edge-to ne) world-to)
		     )
	    (let ((nb (scored-binding (edge-from e) (edge-from ne))))
	      (when nb
	        (push
		  (list
		    (let ((role-name-match (if (equalp (edge-label ne)
		    			       (edge-label e))
					     0 1)))
		      (make-binding
		        :score (/ role-name-match 2)
		        :rule e
			:world ne
			:counts `((role 1 1)
			          (role-name ,(- 1 role-name-match) 1))))
		    nb)
		  ret)))
	    ))
	(push (list (fake-binding e)
		    ;(fake-binding (edge-from e))
		    )
	      ret)
	ret))
    (:neither
      (error "Attempted to get possible bindings for an edge where neither edge is bound"))
    ))

;; for the world edge in a binding returned by possible-bindings, this returns
;; the real world edges corresponding to this edge
(defun edge-real-edges (e)
  (list e))

(defun edge-fake-binding (e)
  (make-binding :rule e :world (make-edge) :score 1
                :counts '((role 0 1)
		          (role-name 0 1))))

