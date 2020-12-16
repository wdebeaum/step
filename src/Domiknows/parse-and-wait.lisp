(in-package :domiknows)

(defun speech-act-uttnum (sa)
  (if (eq (car sa) 'compound-communication-act)
    (speech-act-uttnum (car (find-arg-in-act sa :acts)))
    (find-arg-in-act sa :uttnum)
    ))

(defvar *next-uttnum* 1)

;; TODO memoize?
(defun parse-and-wait (utt-text &key (prefer 'tell))
  "Sends an utterance message with the given text (to TT). Then reads messages
   until a new-speech-act-hyps message is received (from Parser). Queues
   anything that arrives in between for later handling (via the same mechanism
   as dfc:send-and-wait). Returns the hyps from NSAH, or NIL if the Parser
   failed. The :prefer argument adjusts the parser's cost table temporarily for
   this parse so that the given kind of sentence is preferred: 'tell for full
   declarative sentences, 'question for questions, and 'identify for noun
   phrases."
  (ecase prefer
    (tell nil) ; default
    (question
      (send-msg `(request :content (adjust-cost-table :mods (
	  (ont::SA_YN-QUESTION 1) (ont::SA_WH-QUESTION 1)
	  )))))
    (identify
      (send-msg `(request :content (adjust-cost-table :mods (
	  (ont::SA_IDENTIFY 1)
	  )))))
    )
  ;; Send our message
  (send-msg `(tell :content
    (utterance
      :text ,utt-text
      :uttnum ,*next-uttnum*
      :direction input
      :channel desktop)))
  ;; Process messages
  (logging2:log-message :note (list :waiting-for-nsah))
  (loop with curr-uttnum = *next-uttnum*
        with success-pat =
	  `(tell &key :content (new-speech-act-hyps . *))
	with failure-pat =
	  `(tell &key :content
	      (failed-to-parse &key :uttnum ,curr-uttnum))
	initially (incf *next-uttnum*)
        for msg = (dfc::component-read-msg *component*)
	do
	  ;; Handle EOF
	  (when (null msg)
	    (throw :exit 0))
	  ;; Handle bogus msg
	  (when (not (listp msg))
	    (error 'dfc::message-error :comment "message is not a list"))
	  ;; Otherwise see if we want it
	  (cond
	    ((and (dfc::match-msg-pattern success-pat msg)
		  (eq curr-uttnum
		      (speech-act-uttnum
			  (caadr (find-arg-in-act msg :content)))))
	      ;; Yes, it's our NSAH; take the hyps for the answer
	      (logging2:log-message :note (list :received-nsah msg))
	      (return-from parse-and-wait
		(second (find-arg-in-act msg :content))))
	    ((dfc::match-msg-pattern failure-pat msg)
	      ;; Yes, it's a failure message from Parser or IM; return NIL
	      (logging2:log-message :note (list :received-ftp msg))
	      (return-from parse-and-wait nil))
	    ((dfc::is-cancellation-msg msg)
	      ;; got a cancelation message?
	      (format t "got cancellation message!~%")
	      (setq dfc::*pending-messages* (list msg))
	      (throw :main-loop nil))
	    (t
	      ;; No, save for later
	      (logging2:log-message :note (list :deferred-message msg))
	      (setq dfc::*pending-messages*
		    (append dfc::*pending-messages* (list msg)))))
	)
  )

(defun hyp-roots (hyp)
  (ecase (car hyp)
    (utt (list (find-arg-in-act hyp :root)))
    (compound-communication-act
      (loop for a in (find-arg-in-act hyp :acts)
	    append (hyp-roots a)))
    ))

(defun hyp-lf-terms (hyp)
  (ecase (car hyp)
    (utt (mapcar (lambda (term) (find-arg-in-act term :lf))
		 (find-arg-in-act hyp :terms)))
    (compound-communication-act
      (loop for a in (find-arg-in-act hyp :acts)
	    append (hyp-lf-terms a)))
    ))

