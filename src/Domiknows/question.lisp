(in-package :domiknows)

(defstruct question
  id
  text
  reference-answer
  scene-id
  )

(defun read-questions (filename)
  (with-open-file (f filename :direction :input)
    (loop with raw-qs = (read f)
	  for qs-tail = raw-qs then (cddr qs-tail)
	  while qs-tail
	  collect
	    (let ((id (parse-integer (string (car qs-tail))))
		  (desc (second qs-tail)))
	      (make-question
		  :id id
		  :text (find-arg desc :question)
		  :reference-answer (find-arg desc :answer)
		  :scene-id (parse-integer (find-arg desc :imageId))
		  )))))

(defun question-scene-graph (question)
  (find (question-scene-id question) *scenes* :key #'scene-graph-id))
