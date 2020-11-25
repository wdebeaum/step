(in-package :domiknows)

(defun count-dupes (l)
  "Return a list of pairs like (count item) describing how many times each item
   appears in the given list, sorted from most to least frequent. Items are
   assumed to be strings."
  (loop with ret = nil
	for item in (stable-sort (copy-list l) #'string<)
	do (if (or (null ret) (string/= item (second (car ret))))
	     (push (list 1 item) ret)
	     (incf (caar ret))
	     )
	finally (return (stable-sort (nreverse ret) #'> :key #'car))))

(defun take (n l)
  "Return a sequence containing the first n elements of l, if there are that
   many."
  (if (< n (length l))
    (subseq l 0 n)
    l))

(defun html-form ()
  (format nil "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Domiknows</title>
</head>
<body>
<h1>Domiknows</h1>
<hr>
<form action=\"#\" method=\"POST\">
<div style=\"display: inline-block\">
<label>Select a question:
<select name=\"question-id\">
<option value=\"custom\">custom</option>
~{~a~%~}
</select></label>
or
<br>
<input type=\"text\" name=\"question-text\" placeholder=\"enter a custom question\" size=\"50\">
<br>
<input type=\"submit\" name=\"op\" value=\"display-query-graph\">
</div>
<div style=\"display: inline-block; border-left: 1px solid black;\">
<label>Select a scene:
<select name=\"scene-id\">
<option value=\"from-question\">use the scene from the question*</option>
<option value=\"custom\">custom</option>
~{~a~%~}
</select></label>
or
<br>
<textarea name=\"scene-json\" placeholder=\"enter a JSON scene graph, including its ID. { &quot;1234567&quot;: { &quot;objects&quot;: { ... } ... } } (only the first scene will be displayed)\" rows=\"20\" cols=\"80\"></textarea>
<br>
<input type=\"submit\" name=\"op\" value=\"display-scene-graph\">
<br>
*This option doesn't work with custom questions.
</div>
<hr>
<input type=\"submit\" name=\"op\" value=\"answer-question\">
(requires both a question and a scene it's asking about)
</form>
</body>
</html>"
(mapcar
  (lambda (q)
    (format nil "<option value=\"~a\">(~a) ~a</option>"
	    (question-id q) (question-id q) (question-text q)))
  (remove-if-not #'question-scene-id *questions*))
(mapcar
  (lambda (s)
    (format nil "<option value=\"~a\">(~a) ~(~{~{~a×~a~}~^, ~}~)...</option>"
	    (scene-graph-id s) (scene-graph-id s)
	    (take 5
	      (count-dupes
		(mapcar (lambda (o) (symbol-name (scene-graph-object-name o)))
			(scene-graph-objects s))))
	    ))
  *scenes*)
))

(defun escape-for-xml (str)
  "Return a copy of str with < \" > & replaced with &lt; &quot; &gt; &amp;."
  (let ((esc-pos (position-if (lambda (c) (member c '(#\< #\" #\> #\&))) str)))
    (if esc-pos
      (let* ((esc-char (elt str esc-pos))
	     (before (subseq str 0 esc-pos))
	     (after (subseq str (1+ esc-pos))))
	(concatenate 'string
	    before
	    (ecase esc-char
	      (#\< "&lt;")
	      (#\" "&quot;")
	      (#\> "&gt;")
	      (#\& "&amp;")
	      )
	    (escape-for-xml after)))
      str)))

(defun reply-with-dot (msg dot)
  (reply-to-msg msg 'tell :content
    `(http 200 :content-type "text/html" :charset "UTF-8" :content ,(format nil
      "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Domiknows</title>
<script type=\"text/javascript\" src=\"../style/parser-interface.js\"></script>
</head>
<body onload=\"dotsToSVG();\">
<pre class=\"dot\">
~a
</pre>
</body>
</html>" (escape-for-xml dot)))))

(defun handle-sentence-lfs-for-web (question qg scene-id dot)
  (let* ((orig-request (question-request question))
	 (query (find-arg-in-act (find-arg-in-act orig-request :content) :query))
	 (op (intern (string-upcase (find-arg query :op)) :keyword))
	 (scene (find-arg query :scene)))
    (ecase op
      (:display-query-graph
	(reply-with-dot orig-request dot))
      (:answer-question
	(let* ((answer-id (query-scene qg scene))
	       (answer-text (generate-answer qg scene answer-id)))
	  (reply-to-msg orig-request 'tell :content
	    `(http 200 :content-type "text/html" :charset "UTF-8"
		   :content ,(format nil "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Domiknows</title>
<script type=\"text/javascript\" src=\"../style/parser-interface.js\"></script>
</head>
<body onload=\"dotsToSVG();\">
Question: ~a<br>
System answer: ~a (~a)<br>
~a
<hr>
Query:<br>
<pre class=\"dot\">
~a
</pre>
<hr>
Scene:<br>
<pre class=\"dot\">
~a
</pre>
</body>
</html>"
(escape-for-xml (question-text question))
(escape-for-xml answer-text)
answer-id
(if (question-reference-answer question)
  (format nil "Reference answer: ~a<br>~%Correct: ~a<br>~%"
	  (escape-for-xml (question-reference-answer question))
	  (if (string-equal answer-text (question-reference-answer question))
	    "YES" "NO"))
  "")
(escape-for-xml dot)
(escape-for-xml (with-output-to-string (s) (write-dot s scene)))
))))))))

(defun handle-http-request (msg args)
  (destructuring-bind (request-method request-uri &key query) args
      (declare (ignore request-method))
    (let* ((slash-pos (position #\/ request-uri :from-end t))
	   (uri-basename (if slash-pos (subseq request-uri (1+ slash-pos)) request-uri))
	   question scene)
      (unless (string= uri-basename "domiknows") ; only handle our requests
	(return-from handle-http-request nil))
      (destructuring-bind (&key op (question-id "custom") (question-text "")
				(scene-id "custom") (scene-json "")) query
	(setf op (intern (string-upcase op) :keyword))
	(when (or (member op '(:display-query-graph :answer-question))
		  (and (eq op :display-scene-graph)
		       (string= "from-question" scene-id)))
	  (cond
	    ((string= "custom" question-id)
	      (unless (find-if #'alphanumericp question-text)
		(error "missing or blank question text"))
	      (setf question (make-question
			       :id 1 ; TODO!!!
			       :text question-text
			       :reference-answer nil
			       :scene-id nil
			       :request msg))
	      (push question *questions*))
	    (t
	      (setf question-id (parse-integer question-id))
	      (setf question (find question-id *questions* :key #'question-id))
	      (unless question
		(error "unknown question-id ~a" question-id))
	      (setf (question-request question) msg)
	      )
	    ))
	(when (member op '(:display-scene-graph :answer-question))
	  (cond
	    ((string= "custom" scene-id)
	      (setf scene (first (read-scene-graphs-from-json-string scene-json))))
	    (t
	      (when (string= "from-question" scene-id)
		(setf scene-id (question-scene-id question))
		(unless scene-id
		  (error "question has no scene"))
		)
	      (when (stringp scene-id)
		(setf scene-id (parse-integer scene-id)))
	      (setf scene (find scene-id *scenes* :key #'scene-graph-id))
	      (unless scene
		(error "unknown scene-id ~a" scene-id))
	      )
	    ))
	(case op
	  (:display-query-graph
	    (parse-question question))
	  (:display-scene-graph
	    (reply-with-dot msg (with-output-to-string (s) (write-dot s scene))))
	  (:answer-question
	    (setf (second (member :query args))
		  `(:scene ,scene ,@query)) ; FIXME ick.
	    (parse-question question))
	  (otherwise
	    (reply-to-msg msg 'tell :content `(http 200 :content-type "text/html" :charset "UTF-8" :content ,(html-form))))
	  )))))
(defcomponent-handler
  '(request &key :content (http . *))
  #'handle-http-request
  :subscribe t)
