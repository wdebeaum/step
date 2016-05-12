(in-package :LFEvaluator)

(defun evaluate-lf-lists-by-sentences (gold-paragraph test-paragraph)
  (let ((gold-sentences (getk (car gold-paragraph) :terms))
        (test-sentences (getk (car test-paragraph) :terms))
        (total-matched 0)
        (total-gold 0)
	(total-test 0)
	(total-counts (list nil))
	)
    (dolist (gold-sent gold-sentences)
      (let ((test-sent (find (getk gold-sent :uttnum) test-sentences :key (lambda (s) (getk s :uttnum)))))
        (multiple-value-bind (matched gold test counts)
	    (evaluate-lf-lists (list gold-sent) (list test-sent))
	  (incf total-matched matched)
	  (incf total-gold gold)
	  (incf total-test test)
	  (add-to-counts total-counts counts)
	  )))
    ;; TODO account for :COREF edges between sentences
    (values total-matched total-gold total-test (car total-counts))
    ))

(defun evaluate-lf-lists (gold-list test-list)
  (let ((flat-gold-list (flatten-lf-list gold-list))
        (flat-test-list (flatten-lf-list test-list)))
    (when *remove-corefs*
      (setf flat-gold-list (remove-corefs-from-list flat-gold-list))
      (setf flat-test-list (remove-corefs-from-list flat-test-list))
      )
    (let* ((*map-pairs*
             (when *use-rdf-matcher*
	       (getk (send-and-wait
		       `(request :content
			  (match-rdf-strings ,(lf-to-rdf flat-gold-list)
					     ,(lf-to-rdf flat-test-list)
					     :return-types (resource))))
		     :pairs)))
           (gold-root-id (second (first flat-gold-list)))
	   (test-root-id (second (first flat-test-list)))
	   (gold-id2node (nth-value 1 (lf-node-from-list gold-root-id flat-gold-list)))
	   (test-id2node (nth-value 1 (lf-node-from-list test-root-id flat-test-list)))
	   (gold-start-node (add-start-node-to-graph gold-id2node))
	   (test-start-node (add-start-node-to-graph test-id2node)))
      (evaluate-lf-graphs gold-start-node test-start-node))))

(defun remove-corefs-from-list (l)
  (mapcar (lambda (term)
            ;; I hope there are never multiple :corefs per term...
            (remove-keyword-arg term :coref))
          l))

(defun evaluate-lf-graphs (gold test)
  "Attempt to match the two graphs rooted at the nodes gold and test, respectively.
   @return four values:  a. the number of things correctly matched,
                         b. the total number of things in the gold graph
			 c. the total number of things in the test graph
			 d. an assoc list of various counts from the match
			    each item is of the format:
			    (thing-counted num-counted max-countable)
	   From these you can compute recall = a/b and precision = a/c.
	   These scores are for the hypothesis with the greatest recall.
   "
  (let* ((root-binding (scored-binding gold test))
         (hypotheses (when root-binding
	               (list (extend-hypothesis nil (list root-binding)))))
	 complete-hypothesis
	 (max-gold-score (graph-total-importance gold))
	 (max-test-score (graph-total-importance test))
	 (i 0))
    (loop until (or complete-hypothesis (null hypotheses))
	  do
      (print-debug 'evaluate "number of hypotheses = ~s~%" (length hypotheses))
      (let ((current-hypothesis (pop hypotheses)))
	(print-debug 'evaluate " current hypothesis has score = ~s and number of bindings = ~s~%" (float (hypothesis-avg-score current-hypothesis)) (hypothesis-num-bindings current-hypothesis))
        (when (and (member 'visualize-intermediate-hypotheses *debug-tags*)
	           (= 3000 (incf i)))
	  (send-msg `(tell :content (lf-graph :content
            ,(format nil "digraph Hypothesis {~%  node [shape=none]~%~a}~%" (hypothesis-to-dot current-hypothesis)))))
	  (setf i 0))
	;; add extensions of the current hypothesis to the list
        (setf hypotheses (append hypotheses (hypothesis-extensions current-hypothesis)))
	;; sort the list so that the hypothesis we should extend next is first
	;; (the best, most complete hypothesis)
	(setf hypotheses (sort hypotheses (lambda (a b)
	    (< (hypothesis-avg-score a) (hypothesis-avg-score b))
	    )))
	(when (> (length hypotheses) *max-hypotheses*)
	  (print-debug 'debug "WARNING! maximum number of hypotheses reached; results may not be correct.~%")
	  (setf hypotheses (subseq hypotheses 0 *max-hypotheses*)))
	(when (and hypotheses (hypothesis-complete-p (first hypotheses)))
	  (setf complete-hypothesis (first hypotheses)))
	))
    (unless complete-hypothesis (error "Didn't find a complete hypothesis!"))
    (send-msg `(tell :content (lf-graph :content
      ,(format nil "digraph Hypothesis {~%  node [shape=none]~%~a}~%" (hypothesis-to-dot complete-hypothesis)))))
;    (values (- (hypothesis-num-bindings complete-hypothesis)
;               (hypothesis-score complete-hypothesis))
;            max-gold-score
;	    max-test-score
;	    (add-test-counts (hypothesis-counts complete-hypothesis)
;	                     test)
;	    )
    (let* ((counts (add-test-counts (hypothesis-counts complete-hypothesis)
                                    test))
           (relevant-counts
	     (remove-if-not (lambda (c)
	                      (member (car c)
			              '(role-name
				        lftype
					indicator
					other-node
					)))
	                    counts)))
      (values (loop for c in relevant-counts sum (second c))
              (loop for c in relevant-counts sum (third c))
              (loop for c in relevant-counts sum (fourth c))
	      counts))
    ))

