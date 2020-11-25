(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up "config" "lisp")
                       :name "trips")))

(unless (find-package :dfc)
  (load #!TRIPS"src;defcomponent;loader"))

(unless (find-package :util)
  (load #!TRIPS"src;util;defsys"))

(unless (find-package :parser)
  (load #!TRIPS"src;Parser;defsys"))

(dfc:defcomponent :domiknows
		  :use (:util :common-lisp)
		  :system (
		    :depends-on (:util :om)
		    :components (
		      "json"
		      "graph"
		      "lf-to-query-graph"
		      "match"
		      "question"
		      "messages"
		      "http"
		      )))

(defvar *questions* nil)
(defvar *scenes* nil)

(dfc:defcomponent-method dfc:init-component :after ()
  ;; read train sample data
  (setf *scenes*
	(read-scene-graphs-from-lisp-file
	    #!TRIPS"src;Domiknows;data;train-sgs-typed-sample.lisp"))
  (setf *questions*
	(read-questions
	    #!TRIPS"src;Domiknows;data;train-questions-sample.lisp"))
  ;; also add questions from jallen's document
  (loop for text in '(
		      "Who is wearing shorts"
		      "who is on the beach?"
		      "Is someone on the beach"
		      "Who is the man wearing shorts talking to?"
		      "What is the tall man next to?"
		      "Is the tie large?"
		      "What size is the garbage can"
		      "What shape is the dog?"
		      "What is the soda can smaller than?"
		      "What is the smallest dog wearing?"
		      "What is the smallest of the objects"
		      "Is the dog brown and furry?"
		      "How does the chair look like, large or small."
		      "Which material is the napkin made of, paper or cloth?"
		      ;; also variations on "which kind of furniture..."
		      ;; (these should all produce the same query graph)
		      "Which animal ate the pizza?"
		      "What type of animal ate the pizza?"
		      "What sort of animal ate the pizza?"
		      "What kind of animal ate the pizza?"
		      ;; and a few more
		      ; TODO use scene 2380687 for these two (we don't have type-augmented version of this yet)
		      "Is the dog sitting?"
		      "Is the dog running?"
		      "Is the person standing under the umbrella?" ; question 15192363, scene 2341592
		      "Is the person holding the spatula on the right?" ; question 00905754, scene 2322797
		      )
	for id upfrom 100
	collect
	  (make-question
	      :id id
	      :text text
	      ;; first few are in reference to scene 2374375 and have answers
	      :reference-answer
	        (case id ((100 101) "guy") (102 "yes") (103 "guy"))
	      :scene-id (if (< id 104) 2374375 nil)
	      :request nil)
	into jallen-questions
	finally (setf *questions* (nconc jallen-questions *questions*))
	)
  )

(defvar *next-question-index* 0)
(defun test-next-question ()
  (in-component :domiknows)
  (with-slots (id text reference-answer scene-id)
      (nth *next-question-index* *questions*)
    (cond
      (scene-id
	(format t "answering question ~s: ~a (reference answer: ~a)~%"
		id text reference-answer)
	(send-msg `(request :content (answer-question :id ,id)))
	)
      (t
	(format t "displaying query graph for question ~s: ~a~%" id text)
	(send-msg `(request :content (display-query :id ,id)))
	)
      ))
  (incf *next-question-index*)
  )
