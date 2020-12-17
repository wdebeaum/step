(in-package :domiknows)

;;;
;;; Generic graph interface
;;;

(defgeneric nodes (graph))
(defgeneric edges (graph))
(defgeneric out-edges (node graph))
(defgeneric label (part graph))
(defgeneric source (edge graph))
(defgeneric target (edge graph))

;;;
;;; Generic graph functions
;;;

(defun write-dot (s g)
  "Write a single graph g as a Graphviz dot file to the stream s."
  (let ((*print-pretty* nil))
    (format s "digraph ~a {~%"
	    (typecase g
	      (lf-graph "LF")
	      (scene-graph "Scene")
	      (query-graph "Query")
	      (otherwise "G")
	      ))
    (dolist (n (nodes g))
      (format s "  \"~a\" [label=<~s>~a]~%"
	      n
	      (label n g)
	      (if (and (typep g 'query-graph)
		       (eq n (query-graph-focus g)))
		",color=green"
		"")))
    (dolist (e (edges g))
      (format s "  \"~a\" -> \"~a\" [label=<~s>~a]~%"
	      (source e g) (target e g) (label e g)
	      (if (and (typep g 'query-graph)
		       (equalp e (query-graph-focus g)))
		",color=green"
		"")))
    (format s "}~%")
    ))

(defun write-dot-clusters (s gs)
  "Write multiple graphs gs as a Graphviz dot file, with each graph in a
   separate cluster, to the stream s. Fall back on write-dot if there is only
   one graph."
  (when (= 1 (length gs))
    (return-from write-dot-clusters (write-dot s (car gs))))
  (let ((*print-pretty* nil))
    (format s "digraph Clusters {~%")
    (loop for g in gs for i upfrom 0 do
      (format s "  subgraph cluster~s {~%" i)
      (dolist (n (nodes g))
	(format s "    \"C~s_~a\" [label=<~s>~a]~%"
		i
		n
		(label n g)
		(if (and (typep g 'query-graph)
			 (eq n (query-graph-focus g)))
		  ",color=green"
		  "")))
      (dolist (e (edges g))
	(format s "    \"C~s_~a\" -> \"C~s_~a\" [label=<~s>~a]~%"
		i (source e g) i (target e g) (label e g)
		(if (and (typep g 'query-graph)
		       (equalp e (query-graph-focus g)))
		  ",color=green"
		  "")))
      (format s "  }~%")
      )
    (format s "}~%")
    ))

(defun traverse-edge (source label graph)
  "Return the list of targets of edges with the given source and label in the
   given graph."
  (mapcar (lambda (e) (target e graph))
	  (remove-if-not
	    (lambda (e)
	      (eq label (label e graph)))
	    (out-edges source graph))))

(defun traverse-only-edge (source label graph)
  "Like traverse-edge, but return only one target, or cause an error if there
   isn't exactly one."
  (let* ((targets (traverse-edge source label graph))
	 (num-targets (length targets)))
    (unless (= 1 num-targets)
      (error "expected exactly one ~s edge from node ~s, but got ~s"
	     label source num-targets))
    (first targets)))

(defun has-edge (source label graph)
  (member label (out-edges source graph) :key (lambda (e) (label e graph))))

(defun maybe-traverse-path (source path graph)
  "Attempt to traverse multiple edges in sequence. Return the node at the end
   of the path, or NIL if any traversal failed or resulted in multiple nodes."
  (if path
    (let ((mids (traverse-edge source (car path) graph)))
      (when (= 1 (length mids))
	(maybe-traverse-path (car mids) (cdr path) graph)))
    source))

;;;
;;; TRIPS LF Graph
;;;

(defstruct lf-graph
  terms
  )

(defun find-lf-term (n g)
    (declare (type symbol n) (type lf-graph g))
  (find n (lf-graph-terms g) :key #'second))

(defun speechact-node (g)
    (declare (type lf-graph g))
  (find 'ONT::speechact (nodes g) :key (lambda (n) (car (label n g)))))

(defmethod nodes ((g lf-graph))
  (mapcar #'second (lf-graph-terms g)))

(defmethod edges ((g lf-graph))
  (loop for n in (lf-graph-terms g) append (out-edges n g)))

(defmethod out-edges ((n symbol) (g lf-graph))
  (loop with term = (find-lf-term n g)
	for tail = (cdddr term) then (cddr tail)
	while tail
	append
	  (let ((arg (first tail))
		(val (second tail)))
	    (if (eq :mods arg)
	      ;; split single :MODS arg into multiple :MOD edges
	      (mapcar (lambda (v) (list n :mod v)) val)
	      (list (list n arg val))
	      ))
	))

(defmethod label ((n symbol) (g lf-graph))
  (let ((term (find-lf-term n g)))
    (list (first term) (third term))))

(defmethod label ((e cons) (g lf-graph))
  (second e))

(defmethod source ((e cons) (g lf-graph))
  (first e))

(defmethod target ((e cons) (g lf-graph))
  (third e))

;;;
;;; GQA Scene Graph
;;;

(defstruct scene-graph-part
  type
  name
  )

(defstruct (scene-graph-reln (:include scene-graph-part))
  target
  )

(defstruct (scene-graph-attr (:include scene-graph-part))
  )


(defstruct (scene-graph-object (:include scene-graph-part))
  id
  relns
  attrs
  )

(defstruct scene-graph
  id
  objects
  attrs
  )

(defun find-scene-graph-object (id g)
    (declare (type integer id) (type scene-graph g))
  (find id (scene-graph-objects g) :key #'scene-graph-object-id))

(defmethod label ((p scene-graph-part) g)
    (declare (ignore g))
  (with-slots (type name) p
    (list :* type name)))

(defmethod label ((n integer) (g scene-graph))
  (label (find-scene-graph-object n g) g))

(defmethod print-object ((o scene-graph-part) s)
  (format s "~s" (label o nil)))

(defmethod nodes ((g scene-graph))
  (with-slots (objects attrs) g
    (append (mapcar #'scene-graph-object-id objects) attrs)))

(defmethod edges ((g scene-graph))
  (loop for n in (scene-graph-objects g)
	append (out-edges (scene-graph-object-id n) g)))

(defmethod out-edges ((n scene-graph-attr) (g scene-graph))
  nil)

(defmethod out-edges ((n integer) (g scene-graph))
  (with-slots (relns attrs) (find-scene-graph-object n g)
    (append
      (loop for reln in relns
	    collect (list n (label reln g) (scene-graph-reln-target reln)))
      (loop for attr in attrs
	    collect (list n :attr attr))
      )))

(defmethod label ((e cons) (g scene-graph))
  (second e))

(defmethod source ((e cons) (g scene-graph))
  (first e))

(defmethod target ((e cons) (g scene-graph))
  (third e))

(defun str2ont (str)
  (intern (string-upcase str) :ont))

(defun read-type-from-scene-graph (sg-part-desc)
  "Unpack a type from a scene graph into a (type role type) list, or just a
   single ONT type."
  (unless (and (listp sg-part-desc) (member :type sg-part-desc))
    (return-from read-type-from-scene-graph nil))
  (let* ((type-str (second (member :type sg-part-desc)))
	 (scale-pos (search "-_scale-" type-str))
	 (ground-pos (search "-_ground-" type-str))
	 (result-pos (search "-_result-" type-str))
	 (location-pos (search "-_location-" type-str))
	 (assoc-with-pos (search "-_assoc-with-" type-str))
	 role-pos role-len role)
    (cond
      (scale-pos
	(setf role-pos scale-pos role-len 8 role :scale))
      (ground-pos
	(setf role-pos ground-pos role-len 9 role :ground))
      (result-pos
	(setf role-pos result-pos role-len 9
	      role :location ; convert :result to :location since they overlap
	      ))
      (location-pos
	(setf role-pos location-pos role-len 11 role :location))
      (assoc-with-pos
	(setf role-pos assoc-with-pos role-len 13 role :assoc-with))
      )
    (if role
      (list (str2ont (subseq type-str 0 role-pos))
	    role
	    (str2ont (subseq type-str (+ role-pos role-len))))
      ; no role, just single ont type
      (str2ont type-str)
      )
    ))

(defun word-string-to-symbols (word-str)
  "Convert a word or words in a string like \"foo bar\" to a symbol or list of
   symbols like (W::foo W::bar)."
  (let* ((strs (util:split-string word-str))
	 (syms (loop for w in strs collect (intern (string-upcase w) :w))))
    (if (> (length syms) 1)
      syms
      (car syms))))

(defun word-symbols-to-string (word-syms)
  "Rough inverse of word-string-to-symbols."
  (if (consp word-syms)
    (format nil "~(~{~a~^ ~}~)" word-syms)
    (string-downcase (symbol-name word-syms))
    ))

(defun scene-sexp-to-graphs (raw-sgs)
  ;; for each scene
  (loop for sgs-tail = raw-sgs then (cddr sgs-tail)
	while sgs-tail
	collect
    ;; for each object in the scene
    (loop with scene-id = (parse-integer (string (first sgs-tail)))
	  with scene-desc = (second sgs-tail)
	  with raw-objects = (second (member :objects scene-desc))
	  with objects = nil
	  with scene-attrs = nil
	  for objs-tail = raw-objects then (cddr objs-tail)
	  while objs-tail
	  do
      (let* ((object-id (parse-integer (string (first objs-tail))))
	     (object-desc (second objs-tail))
	     relns attrs)
	;; for each relation from the object
	(loop for raw-reln in (second (member :relations object-desc))
	      for target = (parse-integer (second (member :object raw-reln)))
	      for name = (word-string-to-symbols (second (member :name raw-reln)))
	      for type = (read-type-from-scene-graph raw-reln)
	      for reln =
		(make-scene-graph-reln :name name :type type :target target)
	      do (push reln relns)
	      )
	;; for each attribute of the object
	(loop for raw-attr in (second (member :attributes object-desc))
	      for name =
	        (word-string-to-symbols
		    (etypecase raw-attr
		      (list
			(second (member :name raw-attr)))
		      (string
			raw-attr)
		      ))
	      for type = (read-type-from-scene-graph raw-attr)
	      for attr = (make-scene-graph-attr :name name :type type)
	      do (push attr attrs)
		 (push attr scene-attrs)
	      )
	;; make the structure for the object
	(push (make-scene-graph-object
		  :name (word-string-to-symbols (second (member :name object-desc)))
		  :type (read-type-from-scene-graph object-desc)
		  :id object-id
		  :relns (nreverse relns)
		  :attrs (nreverse attrs))
	      objects)
	)
      ;; make the structure for the scene
      finally
	(return (make-scene-graph
		    :id scene-id
		    :objects (nreverse objects)
		    :attrs (nreverse scene-attrs)))
      )))

(defun read-scene-graphs-from-lisp-file (filename)
  (with-open-file (f filename :direction :input)
    (scene-sexp-to-graphs (read f))))

(defun read-scene-graphs-from-json-string (json-str)
  (scene-sexp-to-graphs (parse-json-string json-str)))

;;;
;;; Query Graph
;;;

(defstruct query-graph
  focus ; id of node we're being asked to report the matches for
  nodes ; (id label) pairs
  edges ; (source-id label target-id) triples
  )

(defmethod nodes ((g query-graph))
  (mapcar #'car (query-graph-nodes g)))

(defmethod edges ((g query-graph))
  (query-graph-edges g))

(defmethod out-edges (n (g query-graph))
  (remove-if-not (lambda (e) (eq n (car e))) (query-graph-edges g)))

(defmethod label ((n symbol) (g query-graph))
  (second (assoc n (query-graph-nodes g))))

(defmethod label ((e cons) (g query-graph))
  (second e))

(defmethod source ((e cons) (g query-graph))
  (first e))

(defmethod target ((e cons) (g query-graph))
  (third e))

;;; constructing query graphs (by imitating parts of lf graphs)

(defun add-node (graph id label)
    (declare (type query-graph graph) (type symbol id))
  "Add a node in graph with the given id and label unless a node with that id
   already exists. Return id."
  (unless (assoc id (query-graph-nodes graph))
    (push (list id label) (query-graph-nodes graph)))
  id)

(defun add-edge (graph source label target)
    (declare (type query-graph graph) (type symbol source target))
  "Add an edge in graph from source labeled label to target. Return the edge."
  (let ((edge (list source label target)))
    (push edge (query-graph-edges graph))
    edge))

(defun imitate-node (dst-graph src-graph id)
    (declare (type query-graph dst-graph) (type symbol id))
  "Add a node in dst-graph that has the same label and id as the id'd node in
   src-graph (unless the node already exists in dst-graph). Return id."
  (add-node dst-graph id (second (label id src-graph)))) ; ignore indicator

(defun imitate-edge (dst-graph src-graph source label target)
    (declare (type query-graph dst-graph) (type symbol source target))
  "Add an edge in dst-graph specified by source/label/target, and imitate the
   source and target nodes from src-graph. Return the edge."
  (imitate-node dst-graph src-graph source)
  (imitate-node dst-graph src-graph target)
  (add-edge dst-graph source label target)
  )

(defun update-query-graph (dst-qg src-qg)
    (declare (type query-graph dst-qg src-qg))
  "Add any nodes and edges from src-qg to dst-qg that weren't already there."
  (setf (query-graph-nodes dst-qg)
	(union (query-graph-nodes dst-qg) (query-graph-nodes src-qg)
	       :key #'car))
  (setf (query-graph-edges dst-qg)
	(union (query-graph-edges dst-qg) (query-graph-edges src-qg)
	       :test #'equalp))
  )

;;; displaying query graphs as lf-like lists

(defun query-graph-to-list (g)
  (loop with terms = (mapcar #'copy-list (query-graph-nodes g))
	with focus = (query-graph-focus g)
	for (source label target) in (query-graph-edges g)
	for source-term =
	  (let ((st (assoc source terms)))
	    (unless st ; the source term is missing, add a dummy term for it
	      (setf st (list source '???))
	      (push st terms))
	    st)
	do (push target (cddr source-term))
	   (push label (cddr source-term))
	finally
	  (return
	    `(query
	      ,@(when focus `(:focus ,focus))
	      :terms ,terms
	      ))
	))
