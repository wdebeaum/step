(in-package :domiknows)

(defun subtype-member (descendant-type acceptable-ancestor-types)
  (member (if (consp descendant-type)
	    (car descendant-type)
	    descendant-type)
	  acceptable-ancestor-types
	  :test #'om::is-sublf))

(defun first-type-under (ont-type-options acceptable-ancestor-types)
  (find-if
    (lambda (descendant-type)
      (subtype-member descendant-type acceptable-ancestor-types))
    ont-type-options))

(defun ensure-list (x)
  (if (consp x) x (list x)))

(defun word-senses (word &key pos)
  "Return the list of ONT types for the senses of the given word (as a W::
   symbol or list thereof) in the given part of speech."
  ;; NOTE: making sure the word is a list when we pass it to get-lf prevents it
  ;; from matching a multiword when we give it only the first word, e.g.
  ;; (get-lf 'w::hand) gets ONT::device because of "hand held", but (get-lf
  ;; '(w::hand)) does not.
  (mapcar #'car (lxm::get-lf (ensure-list word) :pos pos)))

(defun first-sense-under (word acceptable-ancestor-types &key pos)
  "Return the ONT type for the first sense of the given word in the given part
   of speech that is under one of the given ancestor ONT types, or NIL."
   (first-type-under (word-senses word :pos pos) acceptable-ancestor-types))

;; work around parser bug where fragments don't always have a speechact node
;; with :content as the root
(defun content-or-root (root lfg)
  (if (has-edge root :content lfg)
    (traverse-only-edge root :content lfg)
    root))

(defun get-object-type-from-hyp (hyp)
  ;; :ROOT->:CONTENT->type
  (let* ((root (car (hyp-roots hyp))) ; FIXME more than 1?
	 (terms (hyp-lf-terms hyp))
	 (lfg (make-lf-graph :terms (prepare-lf-terms-for-graph terms)))
	 (content (content-or-root root lfg))
	 (obj-type (lf-node-type content lfg)))
    ;; add any :assoc-with edges
    (if (has-edge content :assoc-with lfg)
      (cons obj-type
	    (loop for target in (traverse-edge content :assoc-with lfg)
		  for target-type = (lf-node-type target lfg)
		  append (list :assoc-with target-type)))
      obj-type)))

(defun add-type-to-object (obj)
    (declare (type scene-graph-object obj))
  (let* ((preferred-supertypes '(ONT::phys-object ONT::part))
	 (fallback-supertypes '(ONT::situation-root))
	 (obj-name (scene-graph-part-name obj))
	 (looked-up-types (word-senses obj-name :pos 'W::N))
	 (preferred-looked-up-type
	   (first-type-under looked-up-types preferred-supertypes))
	 (parsed-types
	   (unless preferred-looked-up-type ; avoid parsing if we have answer
	     (loop with attr = (car (scene-graph-object-attrs obj))
		   with attr-name =
		     (if attr
		       (word-symbols-to-string (scene-graph-part-name attr))
		       "")
		   with utt-text =
		     (format nil "The ~a ~a."
			     attr-name
			     (word-symbols-to-string obj-name))
		   with hyps = (parse-and-wait utt-text :prefer 'identify)
		   for hyp in hyps
		   for ont-type = (get-object-type-from-hyp hyp)
		   when ont-type
		   collect ont-type
		   ))))
    (setf (scene-graph-part-type obj)
      (or
	preferred-looked-up-type
	(first-type-under parsed-types preferred-supertypes)
	(first-type-under looked-up-types fallback-supertypes)
	(first-type-under parsed-types fallback-supertypes)
	'ONT::referential-sem
	))))

(defun get-reln-type-from-hyp (hyp)
  ;; :ROOT->:CONTENT...
  (let* ((root (car (hyp-roots hyp))) ; FIXME more than 1?
	 (terms (hyp-lf-terms hyp))
	 (lfg (make-lf-graph :terms (prepare-lf-terms-for-graph terms)))
	 (content (content-or-root root lfg))
	 ont-type)
    (cond
      ;; ...->:FORMAL->type, plus :SCALE if ONT::more-val
      ((has-edge content :formal lfg)
        (let* ((reln-node (traverse-only-edge content :formal lfg))
	       (reln-type (lf-node-type reln-node lfg)))
	  ;; err... ->:FORMAL->:GROUND->type in some cases
	  (when (and (member reln-type '(ONT::at-loc-relative ONT::to-loc))
		     (has-edge reln-node :ground lfg))
	    (setf reln-node (traverse-only-edge reln-node :ground lfg))
	    (setf reln-type (lf-node-type reln-node lfg))
	    )
	  (setf ont-type (list reln-type))
	  (when (and (equalp '(ONT::more-val) ont-type)
		     (has-edge reln-node :scale lfg))
	    (let* ((scale-node (traverse-only-edge reln-node :scale lfg))
		   (scale-type (lf-node-type scale-node lfg)))
	      ;(format t "~&DEBUG: adding :scale ~s (node ~s) to ONT::more-val~%" scale-type scale-node)
	      (setf ont-type
		    (util:insert-arg-in-act ont-type :scale scale-type))))))
      ;; ...->type if not W::BE
      ((not (eq 'W::BE (nth-value 2 (destructure-lf-node-label content lfg))))
        (setf ont-type (list (lf-node-type content lfg))))
      ;; ...->:NEUTRAL1->type if content was W::BE
      ((has-edge content :neutral1 lfg)
        (let ((reln-node (traverse-only-edge content :neutral1 lfg)))
	  (setf ont-type (list (lf-node-type reln-node lfg)))))
      ;; can't find the reln node
      (t (return-from get-reln-type-from-hyp nil))
      )
    ;; add certain args
    (dolist (edge-label '(:location :source :result))
      (when (has-edge content edge-label lfg)
	(let* ((target-node (traverse-only-edge content edge-label lfg))
	       (target-type (lf-node-type target-node lfg))
	       ;; convert :result to :location since they overlap
	       (edge-label2 (if (eq :result edge-label) :location edge-label)))
	  (setf ont-type
		(util:insert-arg-in-act ont-type edge-label2 target-type)))))
    ;; return only the ont type if there are no args added
    (if (= 1 (length ont-type))
      (car ont-type)
      ont-type)
    ))

(defun add-type-to-reln (sg source reln)
    (declare (type scene-graph sg) (type scene-graph-object source) (type scene-graph-reln reln))
  (let ((reln-name (scene-graph-part-name reln)))
    (setf (scene-graph-part-type reln)
      (or
	;; save some time parsing all those left/right relations:
	(when (equalp reln-name '(w::to w::the w::left w::of))
	  'ONT::left-loc)
	(when (equalp reln-name '(w::to w::the w::right w::of))
	  'ONT::right-loc)
	;; first try to parse "The <source> will be <reln> the <target>." and
	;; find the type of the reln if appropriate
	(loop with source-name = (scene-graph-part-name source)
	      with target-id = (scene-graph-reln-target reln)
	      with target = (find-scene-graph-object target-id sg)
	      with target-name = (scene-graph-part-name target)
	      with utt-text =
		(format nil "The ~a will be ~a the ~a."
			(word-symbols-to-string source-name)
			(word-symbols-to-string reln-name)
			(word-symbols-to-string target-name))
	      with hyps = (parse-and-wait utt-text :prefer 'tell)
	      for hyp in hyps
	      for ont-type = (get-reln-type-from-hyp hyp)
	      when ont-type
	      return ont-type
	      )
	;; failing that, look up the reln name and take one under
	;; ONT::position-reln, or the first one
	(let ((reln-senses (word-senses reln-name)))
	  (or (first-type-under reln-senses '(ONT::position-reln))
	      (first reln-senses)))
	))))

(defun get-attr-type-from-hyp (hyp)
  ;; :ROOT->:CONTENT->{:MOD,:ASSOC-WITH,:FIGURE}->type
  (let* ((root (car (hyp-roots hyp))) ; FIXME more than 1?
	 (terms (hyp-lf-terms hyp))
	 (lfg (make-lf-graph :terms (prepare-lf-terms-for-graph terms)))
	 (content (content-or-root root lfg))
	 )
    (dolist (edge-label '(:mod :assoc-with :figure))
      (when (has-edge content edge-label lfg)
	(let ((attr-nodes (traverse-edge content edge-label lfg)))
	  (when (= 1 (length attr-nodes))
	    (return-from get-attr-type-from-hyp
	      (lf-node-type (car attr-nodes) lfg))))))))

(defun add-type-to-attr (obj attr)
    (declare (type scene-graph-object obj) (type scene-graph-attr attr))
  (let ((attr-name (scene-graph-part-name attr)))
    (setf (scene-graph-part-type attr)
      (or
	;; first try to parse "The <attribute> <object>." and find the type of
	;; the attribute if appropriate
	(loop with obj-name = (scene-graph-part-name obj)
	      with utt-text =
	        (format nil "The ~a ~a."
			(word-symbols-to-string attr-name)
			(word-symbols-to-string obj-name))
	      with hyps = (parse-and-wait utt-text :prefer 'identify)
	      for hyp in hyps
	      for ont-type = (get-attr-type-from-hyp hyp)
	      when ont-type
	      return ont-type
	      )
	;; failing that, look up the attr name and take the first sense
	(first (word-sensese attr-name))
	))))

(defun add-types-to-scene (sg)
    (declare (type scene-graph sg))
  "Given a scene-graph whose parts have :type nil, find types for those parts
   by looking up and/or parsing relevant phrases, and set the relevant :type
   slots."
  (dolist (o (scene-graph-objects sg))
    (unless (scene-graph-part-type o)
      (add-type-to-object o))
    (dolist (r (scene-graph-object-relns o))
      (unless (scene-graph-part-type r)
	(add-type-to-reln sg o r)))
    (dolist (a (scene-graph-object-attrs o))
      (unless (scene-graph-part-type a)
	(add-type-to-attr o a)))
    ))
