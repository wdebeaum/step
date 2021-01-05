(in-package :domiknows)

(defun label-ont-type (l)
  "Return the simple ONT type associated with the given graph part label, if
   any."
  (cond
    ((and (symbolp l) (eq (find-package :ont) (symbol-package l)))
      l)
    ((and (consp l) (eq :* (car l)))
      (label-ont-type (second l)))
    ((consp l)
      (label-ont-type (car l)))
    (t nil)
    ))

(defun ont-type-scale (ot)
  "Return the value of the scale feature of the given ONT type, if any."
  (when ot
    (let ((desc (gethash ot (om::ling-ontology-lf-table om::*lf-ontology*))))
      (when desc
	(let ((feats (slot-value (slot-value desc 'om::sem) 'om::features)))
	  (second (assoc 'F::scale feats)))))))

(defun labels-match-p (qp qg sp sg)
    (declare (type query-graph qg) (type scene-graph sg))
  "Does the label of the given part (node or edge) of a query graph match the
   label of the given part of a scene graph? ONT types in the query must
   subsume ONT types in the scene for them to match."
  (let* ((ql (label qp qg))
	 (sl (label sp sg))
	 (qt (label-ont-type ql))
	 (st (label-ont-type sl))
	 )
    (cond
      ;; when query label is a keyword, scene label must match exactly
      ((keywordp ql)
        (eq ql sl))
      ;; when query label is of the form (main-type :scale scale-type), scene
      ;; label must also have main and scale types that are subtypes
      ((and qt (listp ql) (= 3 (length ql)) (eq :scale (second ql)))
        ;(format t "~&DEBUG: query label has :scale~%  query label = ~s~%  scene label = ~s~%" ql sl)
        ;; ensure scene label's main type is subtype
        (unless (and st (om::is-sublf st qt))
	  ;(format t "~&DEBUG: ~s is not a subtype of ~s~%" st qt)
	  (return-from labels-match-p nil))
	;; get scale types
        (let ((qs (third ql))
	      (ss
		(if (and (listp sl) (= 3 (length sl)) (eq :* (car sl))
			 (listp (second sl)) (= 3 (length (second sl)))
			 (eq :scale (second (second sl))))
		  ; scene label has :scale too
		  (third (second sl))
		  ; no explicit :scale, look it up in ontology
		  (ont-type-scale st)
		  )))
	  ;(format t "~&DEBUG:~%  query scale type = ~s~%  scene scale type = ~s~%" qs ss)
	  ;; ensure scene label's scale type is a subtype
	  (and ss (om::is-sublf ss qs))))
      ;; when query has an ONT type, scene must have a subtype of that type
      (qt
	(and st (om::is-sublf st qt)))
      ;; otherwise I don't know what do to
      (t (error "weird query part label: ~s" ql))
      )))

;; forward declare match-nodes because mutual recursion
(declaim (ftype (function (t query-graph t scene-graph list) list) match-nodes))

(defun match-edges (qe qg se sg bindings)
    (declare (type query-graph qg) (type scene-graph sg) (type list bindings))
  "Attempt to match the given edge from a query graph to the given edge from a
   scene graph, recursively. Assumes the source nodes of the two edges are
   already bound to each other. If the match succeeds, return the extended set
   of bindings between parts of the two graphs. Otherwise, return nil."
  ;; ensure edge labels match
  (unless (labels-match-p qe qg se sg)
    (return-from match-edges nil))
  ; TODO? add edge binding? doesn't matter
  ;; ensure edge targets match, and add bindings, recursively
  (let* ((qt (target qe qg))
	 (st (target se sg)))
    (match-nodes qt qg st sg bindings))
  )

(defun match-nodes (qn qg sn sg bindings)
  "Attempt to match the given node from a query graph to the given node from a
   scene graph, recursively. If the match succeeds, return the extended set of
   bindings between parts of the two graphs. Otherwise, return nil."
  (let ((existing-binding (assoc qn bindings)))
    (when existing-binding ; already bound qn to something, return early
      (if (eql sn (cdr existing-binding))
	(return-from match-nodes bindings) ; to the same node, success
	(return-from match-nodes nil) ; to a different node, fail
	)))
  ;; ensure node labels match
  (unless (labels-match-p qn qg sn sg)
    (return-from match-nodes nil))
  ;; add the node binding
  (push (cons qn sn) bindings)
  ;; ensure each edge from the query node matches an edge from the scene node,
  ;; and add bindings, recursively
  (loop for qe in (out-edges qn qg)
	for new-bindings =
	  (loop for se in (out-edges sn sg)
		for nbs = (match-edges qe qg se sg bindings)
		when nbs do (return nbs)
		finally (return nil))
	unless new-bindings do (return nil)
	do (setf bindings new-bindings)
	finally (return bindings)
	)
  )

(defun match-graphs (qg sg &optional bindings)
    (declare (type query-graph qg) (type scene-graph sg))
  "Match a query graph to a scene graph, and return the scene graph node
   corresponding to the focus of the query, if any. If the query has no focus
   (it's a yes-no question), return T if there was a match. Return NIL if there
   was no match.
   Note that if there are multiple ways for the query to match the scene, which
   one this finds is arbitrary."
  (loop with qfocus = (query-graph-focus qg)
	;; start with the last query graph node, since we happen to know it was
	;; added first, and thus is near the root (FIXME this is shakey)
	with qn = (car (last (nodes qg)))
	;; try to match it against each scene graph node
        for sn in (nodes sg)
	;; recursively match from selected nodes
        for new-bindings = (match-nodes qn qg sn sg bindings)
	;; if there's a match, return immediately
	when new-bindings
        do (return
	     (if qfocus
	       (cdr (assoc qfocus new-bindings)) ; wh-question, return focus
	       t ; yes/no question, return t
	       ))
	;; no match found, return nil
	finally (return nil)
	))

(defun match-graphs-all (qg sg)
  "Like match-graphs, but return the list of possible results based on
   different ways of matching the graph. Only useful for wh-questions."
  ;; HACK: just get the first result, and try again recursively with the scene
  ;; minus that result, until the match fails
  (let ((first-result (match-graphs qg sg)))
    (when first-result
      (cons first-result
	    (match-graphs-all qg
		(copy-scene-graph-without-part first-result sg))))))

(defun match-graphs-with-nodes (qn qg sn sg)
  "Like match-graphs, but try to match the given nodes first, and then try to
   bind the rest of the graph from the usual root."
  (let ((bindings (match-nodes qn qg sn sg nil)))
    (when bindings
      (match-graphs qg sg bindings))))

(defun query-scene (q sg)
    (declare (type query q) (type scene-graph sg))
  "Return the ID of the answer to the query in relation to the scene. Like
   match-graphs, but this takes a query, not a query-graph."
  (ecase (query-mode q)
    ((:yn :wh)
      (loop for qg in (query-graphs q)
	    for match = (match-graphs qg sg)
	    when match return match))
    (:mc
      (let ((answer-ids
	      (remove nil (mapcar (lambda (qg) (match-graphs qg sg))
				  (query-graphs q)))))
	(case (length answer-ids)
	  (0
	    ;(error "none of the options in a multiple-choice question matched")
	    nil)
	  (1
	    (car answer-ids))
	  (otherwise
	    ;(error "multiple options in a multiple-choice question matched")
	    nil)
	  )))
    (:est
      ;; get the three query graphs we need to do superlative matching: the one
      ;; for the noun the superlative applies to, the comparative version of
      ;; the superlative connecting two copies of that noun, and the rest of
      ;; the question
      (destructuring-bind (noun-qg comp-qg rest-qg) (query-graphs q)
	(let* ((noun-qg-node (query-graph-focus noun-qg))
	       ;; get all the matches for the noun (if there are none, the
	       ;; answer will still work out to NIL/IDK)
	       (noun-matches (match-graphs-all noun-qg sg))
	       ;; test whether each allows the comparative to match
	       (comp-matches
		 (mapcar
		   (lambda (noun-sg-node)
		     (match-graphs-with-nodes noun-qg-node comp-qg
					      noun-sg-node sg))
		   noun-matches)))
	  (format t "~&noun-matches=~%  ~s~%comp-matches=~%  ~s~%" noun-matches comp-matches)
	  ;; if exactly one doesn't allow the comparative to match (i.e. there
	  ;; is no other noun match that fits on the other end of the
	  ;; comparative)
	  (when (= 1 (count nil comp-matches))
	    ;; get that one noun node in the scene
	    (let* ((match-position (position nil comp-matches))
		   (noun-sg-node (nth match-position noun-matches)))
	      ;; and use it while matching the rest of the question
	      (match-graphs-with-nodes noun-qg-node rest-qg
				       noun-sg-node sg))))))
    ))
