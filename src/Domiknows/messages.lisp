(in-package :domiknows)

(defvar *temp-question-id* 9999) 

(defun add-temp-question (question-text)
  (let ((question (make-question
		    :id *temp-question-id*
		    :text question-text
		    :reference-answer nil
		    :scene-id nil
		    )))
    (push question *questions*)
    question))

(defun remove-temp-question (question)
  "Remove question from *questions* if it was only temporary."
  (when (= (question-id question) *temp-question-id*)
    (pop *questions*)))

(defun lookup-question (args)
  "Given the args from an answer-question or display-query request, return the
   relevant question structure (maybe creating a temporary one)."
  (let* ((question-id (find-arg args :id))
	 (question-text (find-arg args :text)))
    (cond
      (question-id t)
      (question-text
	(setf question-id *temp-question-id*)
	(add-temp-question question-text)
	)
      (t (error "expected either :id or :text in display-query request"))
      )
    (or (find question-id *questions* :key #'question-id)
	(error "unknown question id ~s" question-id))))

(defun lookup-scene-graph (question)
  (let ((scene-id (or (question-scene-id question)
		      (error "question has no scene, can't answer it"))))
    (or (find scene-id *scenes* :key #'scene-graph-id)
	(error "unknown scene id ~s" scene-id))))

(defun question-to-query-and-dot (question)
  "Handle the parts common to handling answer-question and display-query (KQML
   and HTTP versions). Take a question, parse it, make the query graphs, and
   make the dot graph from them. Return the query structure and the dot graph
   as multiple values."
  (let* ((hyps (or (parse-and-wait (question-text question) :prefer 'question)
		   (error "failed to parse question ~s" question)))
	 (q (lf-to-query (hyp-lf-terms (car hyps))))
	 (dot (with-output-to-string (s)
		(write-dot-clusters s (query-graphs q))))
	 )
    (values q dot)))

(defun question-to-dot (question)
  (nth-value 1 (question-to-query-and-dot question)))

(defun display-dot (dot)
  (send-msg `(tell :content (lf-graph :content ,dot))))

(defun handle-display-query (msg args)
  (let ((question (lookup-question args)))
    (display-dot (question-to-dot question))
    (remove-temp-question question)
    ))

(defcomponent-handler
  '(request &key :content (display-query . *))
  #'handle-display-query
  :subscribe t)

(defun generate-answer (q sg answer-id)
    (declare (type query q) (type scene-graph sg))
  "Generate a text answer to the question given the query, the scene it was
   asked about and an answer-id which is t, nil, or a node in the scene
   graph."
  (if (eq (query-mode q) :yn)
    ; yes-no question
    (if answer-id "yes" "no")
    ; wh question (roughly)
    (if answer-id
      ; NOTE: this works for a node or an edge, both labeled with (:* ont w)
      (let ((answer-words (third (label answer-id sg))))
        (etypecase answer-words
	  (symbol (string-downcase (symbol-name answer-words)))
	  (cons (format nil "~(~{~a~^ ~}~)" answer-words))
	  ))
      "I don't know")
    ))

(defun answer-query (q sg)
  "Apply the query to the scene and return the answer ID and text as multiple
   values."
  (let* ((answer-id (query-scene q sg))
	 (answer-text (generate-answer q sg answer-id)))
    (values answer-id answer-text)))

(defun handle-answer-question (msg args)
  (let* ((question (lookup-question args))
	 (sg (lookup-scene-graph question)))
  (multiple-value-bind (q dot)
      (question-to-query-and-dot question)
    (display-dot dot)
    (multiple-value-bind (answer-id answer-text) (answer-query q sg)
      ;; reply with answer
      (reply-to-msg msg 'tell :content
	`(answer
	  :id ,answer-id
	  :text ,answer-text
	  :correct-p
	    ,(string-equal answer-text
			   (question-reference-answer question))
	  ))))))

(defcomponent-handler
  '(request &key :content (answer-question . *))
  #'handle-answer-question
  :subscribe t)

;; these handlers are just here so that we subscribe to the messages that
;; parse-and-wait needs to hear
(defcomponent-handler
  '(tell &key :content (new-speech-act-hyps . *))
  (lambda (msg args) nil)
  :subscribe t)
(defcomponent-handler
  '(tell &key :content (failed-to-parse . *))
  (lambda (msg args) nil)
  :subscribe t)
