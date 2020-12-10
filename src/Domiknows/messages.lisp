(in-package :domiknows)

(defun parse-question (question)
  "Send the question to the Parser to be parsed. Returns immediately without
   waiting for results."
  (with-slots (id text) question
    (send-msg `(tell :content
      (utterance :text ,text :uttnum ,id :direction input :channel desktop)))))

(defun handle-answer-question (msg args)
  (let* ((question-id (find-arg args :id))
	 (question (find question-id *questions* :key #'question-id)))
    (unless question
      (error "unknown question id ~s" question-id))
    (setf (question-request question) msg)
    (parse-question question)
    ))

(defcomponent-handler
  '(request &key :content (answer-question . *))
  #'handle-answer-question
  :subscribe t)

(defun handle-display-query (msg args)
  (let* ((question-id (find-arg args :id))
	 (question-text (find-arg args :text)))
    (cond
      (question-id
	(handle-answer-question msg args))
      (question-text
	(let ((question (make-question
			  :id 1 ; TODO?
			  :text question-text
			  :reference-answer nil
			  :scene-id nil
			  :request msg)))
	  (push question *questions*)
	  (parse-question question)
	  ))
      (t (error "expected either :id or :text in display-query request"))
      )))

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
      (string-downcase (symbol-name (third (label answer-id sg))))
      "I don't know")
    ))

(declaim (ftype (function (question query string) t) handle-sentence-lfs-for-web))

(defun handle-sentence-lfs (msg args)
  "Receive a sentence-lfs message from IM, and if it's from a question we know
   about, convert it to an lf-graph and store it in the question object."
  ;(sleep 5) ; DEBUG (so trace messages don't overlap with KQML)
  (let* ((sentence (find-arg args :content))
	 (uttnum (find-arg-in-act sentence :uttnum))
	 (lf-terms (find-arg-in-act sentence :terms))
	 (question (find uttnum *questions* :key #'question-id))
	 )
    (when question ; this parse's uttnum matched a question we know about, therefore we must have sent that question to be parsed
      (let ((orig-request (question-request question)))
	(handler-bind
	    ;; if there's an error, reply to orig-request, not sentence-lfs
	    ((error (lambda (err)
		      (dfc::indicate-error *component* err orig-request))))
	  (let* ((orig-request-verb
		   (car (find-arg-in-act orig-request :content)))
		 (q (lf-to-query lf-terms))
		 (scene-id (question-scene-id question))
		 (dot (with-output-to-string (s)
			(write-dot-clusters s (query-graphs q)))))
	    (when (eq 'http orig-request-verb)
	      (return-from handle-sentence-lfs
		(handle-sentence-lfs-for-web question q dot)))
	    ;; display query graph
	    (send-msg `(tell :content (lf-graph
		:uttnum ,(question-id question)
		:content ,dot)))
	    ;; answer the question if we were asked to
	    (when (eq 'answer-question orig-request-verb)
	      (unless scene-id
		(error "question has no scene, can't answer it"))
	      ;; run query
	      (let* ((sg (find scene-id *scenes* :key #'scene-graph-id))
		     (answer-id (query-scene q sg))
		     (answer-text (generate-answer q sg answer-id))
		     )
		;; reply with answer
		(reply-to-msg (question-request question) 'tell :content
		  `(answer
		    :id ,answer-id
		    :text ,answer-text
		    :correct-p
		      ,(string-equal answer-text
				     (question-reference-answer question))
		    ))))))))))

(defcomponent-handler
  '(tell &key :content (sentence-lfs . *))
  #'handle-sentence-lfs
  :subscribe t)
