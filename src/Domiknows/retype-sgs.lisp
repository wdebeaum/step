;;;; retype-sgs.lisp - code for redoing the types in the few scenes we saved
;;;; (not part of Domiknows proper, not normally loaded)
;;;;
;;;; USAGE:
;;;;   sbcl \
;;;;     --load test \
;;;;     --load $TRIPS_BASE/src/Domiknows/retype-sgs.lisp \
;;;;     --eval '(run)'
;;;;
;;;;   (request :content (retype-sgs))

(in-package :domiknows)
(in-component :domiknows)

(defun kwid (nid)
  "Turn a numeric id to a keyword."
  (intern (format nil "~a" nid) :keyword))

(defun type-str (sgp)
  (let ((tipe (scene-graph-part-type sgp)))
    (etypecase tipe
      (cons (format nil "~(~{~a~^-~}~)"
		    (mapcar
		      (lambda (s)
			(if (keywordp s) (format nil "_~a" s) (symbol-name s)))
		      tipe)))
      (symbol (string-downcase (symbol-name tipe)))
      )))

(defun untype-sg (sg)
  "Remove all types from the scene-graph so they can be replaced."
  (with-slots (objects attrs) sg
    (dolist (p (append objects attrs (loop for o in objects append (scene-graph-object-relns o))))
      (setf (scene-graph-part-type p) nil))))

(defun retype-raw-sg (raw-sg sg)
  "Copy types from sg to raw-sg"
  (loop with raw-objects = (find-arg raw-sg :objects)
	for obj in (scene-graph-objects sg)
	for raw-obj = (find-arg raw-objects (kwid (scene-graph-object-id obj)))
	for relns = (scene-graph-object-relns obj)
	for raw-relns = (find-arg raw-obj :relations)
	for attrs = (scene-graph-object-attrs obj)
	for raw-attrs = (find-arg raw-obj :attributes)
	do
	  (setf (second (member :type raw-obj)) (type-str obj))
	  (loop for raw-reln in raw-relns
		for target-id = (parse-integer (find-arg raw-reln :object))
		for reln-words = (word-string-to-symbols (find-arg raw-reln :name))
		for reln =
		  (find-if
		    (lambda (r)
		      (and (= target-id (scene-graph-reln-target r))
			   (equalp reln-words (scene-graph-part-name r))))
		    relns)
		do (setf (second (member :type raw-reln)) (type-str reln))
		)
	  (loop for raw-attr in raw-attrs
		for attr-words = (word-string-to-symbols (find-arg raw-attr :name))
		for attr =
		  (find attr-words attrs
			:key #'scene-graph-part-name :test #'equalp)
		do (setf (second (member :type raw-attr)) (type-str attr))
		)
	))

(defun retype-sgs (msg args)
  "Read raw lisp scene graphs, update their type annotations, and write them
   back out."
  (loop with raw-sgs =
	  (with-open-file (f #!TRIPS"src;Domiknows;data;train-sgs-typed-sample.lisp" :direction :input) (read f))
	for sg in *scenes*
	for raw-sg = (find-arg raw-sgs (kwid (scene-graph-id sg)))
	do
	  (format t "retyping scene ~a" (scene-graph-id sg))
	  (untype-sg sg)
	  (add-types-to-scene sg)
	  (retype-raw-sg raw-sg sg)
	finally
	  (with-open-file (f #!TRIPS"src;Domiknows;data;train-sgs-typed-sample.lisp" :direction :output :if-exists :supersede)
	    (let ((*print-pretty* nil))
	      (write raw-sgs :stream f)))
	  (reply-to-msg msg 'tell :content '(ok))
	))
(defcomponent-handler
  '(request &key :content (retype-sgs . *))
  #'retype-sgs
  :subscribe t)
