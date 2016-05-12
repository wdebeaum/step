(in-package :LFEvaluator)

(in-component :LFEvaluator)

(defcomponent-handler
  '(tell &key :content (paragraph-lfs . *))
  (lambda (msg args)
      (declare (ignore msg))
    (when *paragraph-gold-lfs*
      (let ((gold-list *paragraph-gold-lfs*)
	    (test-list (getk args :content)))
        (setf *paragraph-gold-lfs* nil)
	(multiple-value-bind (matched gold-total test-total counts)
	    (evaluate-lf-lists-by-sentences gold-list test-list)
	  (send-msg `(tell :content
	     (lf-evaluation :matched ,matched
			    :gold-total ,gold-total
			    :test-total ,test-total
			    :recall ,(float (* 100 (/ matched gold-total)))
			    :precision ,(float (* 100 (/ matched test-total)))
			    :counts ,counts
			    )))))))
  :subscribe t)

(defcomponent-handler
  '(tell &key :content (sentence-lfs . *))
  (lambda (msg args)
      (declare (ignore msg))
    (when *sentences-gold-lfs*
      (let ((gold-list (pop *sentences-gold-lfs*))
	    (test-list (getk args :content)))
	(multiple-value-bind (matched gold-total test-total counts)
	    (evaluate-lf-lists gold-list test-list)
	  (send-msg `(tell :content
	     (lf-evaluation :matched ,matched
			    :gold-total ,gold-total
			    :test-total ,test-total
			    :recall ,(float (* 100 (/ matched gold-total)))
			    :precision ,(float (* 100 (/ matched test-total)))
			    :counts ,counts
			    )))))))
  :subscribe t)

(defcomponent-handler
  '(tell &key :content (paragraph-gold-lfs . *))
  (lambda (msg args)
      (declare (ignore msg))
    (setf *paragraph-gold-lfs* (getk args :content))
    (setf *sentences-gold-lfs* (getk *paragraph-gold-lfs* :terms))
    )
  :subscribe t)

(defcomponent-handler
  '(tell &key :content (sentence-gold-lfs . *))
  (lambda (msg args)
      (declare (ignore msg))
    (setf *sentences-gold-lfs* (list (getk args :content)))
    )
  :subscribe t)

(defcomponent-handler
  '(request &key :content (evaluate-lfs . *))
  (lambda (msg args)
    (let ((gold-list (getk args :gold))
          (test-list (getk args :test)))
      (multiple-value-bind (matched gold-total test-total counts)
          (evaluate-lf-lists-by-sentences gold-list test-list)
	(reply-to-msg msg 'tell :content
	  `(lf-evaluation :matched ,matched
	                  :gold-total ,gold-total
			  :test-total ,test-total
			  :recall ,(float (* 100 (/ matched gold-total)))
			  :precision ,(float (* 100 (/ matched test-total)))
			  :counts ,counts
			  )))))
  :subscribe t)

(defcomponent-cancellation-pattern '(tell &key :content (start-conversation . *)))
(defcomponent-handler
  '(tell &key :content (start-conversation . *))
  (lambda (msg args)
      (declare (ignore msg args))
    (clear-cache)
    )
  )

