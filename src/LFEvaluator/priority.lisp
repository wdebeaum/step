(in-package :LFEvaluator)

;; One could argue that these functions belong in dispatch-functions.lisp and
;; their respective edge *.lisps, but I think it's nice to be able to look at
;; all these numbers together so it's easy to see how they relate to each
;; other.

(defun priority (e h)
  "What level of priority should rule edge e get when deciding which edge to use to extend hypothesis h?
   Generally the number represents how easy it is to find possible bindings for the edge, and/or how many different possible bindings there could be. Lower numbers represent easier searches with fewer results, and are preferred for extending a hypothesis.
  "
  (ecase (type-of e)
    (edge (edge-priority e h))
    (start-edge (start-edge-priority e h))
    ))

(defun edge-priority (e h)
  (case (which-sides-are-bound e h)
    (:both 0)
    ;; don't extend from fake nodes
    (:from-only 
      (if (fake-node-p (gethash (edge-from e) (hypothesis-rule2world h)))
        1000
        (if (eql :tense (edge-label e)) ; prefer :tense edges
	  2 6)
	))
    (:to-only 
      (if (fake-node-p (gethash (edge-to e) (hypothesis-rule2world h)))
        1000 6))
    (:neither
      (error "Attempted to get the priority of an edge where neither end is bound"))
    ))

(defun start-edge-priority (e h)
  (case (which-sides-are-bound e h)
   (:both 0)
   (:from-only
    (cond
     ;; this is pretty much cheating: we count the number of possibilities we'll get if we extend this node
     ((not (lf-node-p (edge-to e)))
      (+ 2 ; disprefer non-term nodes, since term nodes have subtler scores that can help us weed out bad hypotheses
	(loop for world-edge in (node-edges (gethash (edge-from e) (hypothesis-rule2world h))) count
	  (and (not (lf-node-p (edge-to world-edge)))
	       (not (has-binding h (edge-to world-edge)))
	       (packageless-equalp (node-label (edge-to e))
				   (node-label (edge-to world-edge)))))))
     ((lf-node-word (edge-to e))
      (loop for world-edge in (node-edges (gethash (edge-from e) (hypothesis-rule2world h))) count
        (and (lf-node-p (edge-to world-edge))
	     (not (has-binding h (edge-to world-edge)))
             (words-match-p (lf-node-word (edge-to e))
	                    (lf-node-word (edge-to world-edge))))))
     ;; non-cheating estimates for lf-nodes without words
     ((packageless-equalp (lf-node-indicator (edge-to e)) 'speechact) 5)
     ((packageless-equalp (lf-node-lftype (edge-to e)) 'referential-sem) 8)
     ((packageless-equalp (lf-node-lftype (edge-to e)) 'set) 9)
     (t 7)
     ))
   (:to-only
     (error "This case should never happen"))
   (:neither
     (error "Attempted to get the priority of an edge where neither end is bound"))
   ))

