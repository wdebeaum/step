(in-package :LFEvaluator)

;; NOTE: it sucks that I have to do dispatch this way, but OpenMCL doesn't like it when I use real CLOS objects and generic functions (methods).

;; edge methods
(defun possible-bindings (e h)
  "Return a list of lists of bindings which can extend hypothesis h. Each list should have a different binding for the rule edge e, along with the other bindings that go with it (nodes)."
  (cancellation-point) ; this is a good cancellation point because this function is called a lot in learning and execution
  (ecase (type-of e)
    (edge (edge-possible-bindings e h))
    (start-edge (start-edge-possible-bindings e h))
    ))

;; TODO rethink the need for this function
(defun real-edges (e)
  "Return the list of edges in the real world corresponding to edge e, which was the world side of a binding returned by possible-bindings. Such bound edges are potentially fake in that they are created by possible-bindings to correspond to a rule edge that represents many edges."
  (ecase (type-of e)
    (edge (edge-real-edges e))
    (start-edge (start-edge-real-edges e))
    ))

;; node methods
(defun scored-binding (rule-node world-node)
  "Return the scored binding from rule-node to world-node, or nil if no binding is possible."
  (ecase (type-of rule-node)
    (node (node-scored-binding rule-node world-node))
    (start-node (start-node-scored-binding rule-node world-node))
    (lf-node (lf-node-scored-binding rule-node world-node))
    ))

(defun fake-binding (rule-element)
  "Return a binding to a fake world-element with score 1, and the appropriate counts."
  (ecase (type-of rule-element)
    (edge (edge-fake-binding rule-element))
    (start-edge (start-edge-fake-binding rule-element))
    (node (node-fake-binding rule-element))
    (lf-node (lf-node-fake-binding rule-element))
    (start-node (start-node-fake-binding rule-element))
    ))

(defun binding-score-importance (rule-element)
  "How important is the score we would get from binding rule-element to some world element? That is, how much should it affect the overall score of the hypothesis?
   @param rule-element A node or edge in a rule
   @return a number to be multiplied with the binding-score"
  1)
#|  
  (ecase (type-of rule-element)
    (node 1)
    (lf-node (if (lf-node-word rule-element) 3 2))
    (edge 5)
    (start-edge 0)
    (start-node 0)
    ))
|#
