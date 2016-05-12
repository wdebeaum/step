(in-package :LFEvaluator)

;; template:
;; (ONT::indicator id (:* ONT::lftype W::word) :edge-label edge-to-id ...)
;; or just
;; (ONT::indicator id ONT::lftype :edge-label edge-to-id ...)
;; but occasionally
;; (ONT::indicator id1 (ONT::SET-OF id2) :MEMBERS (id3 id4) ...)
(defstruct (lf-node (:include node))
  indicator
  lftype
  word
  )

(defun lf-roles-from-list (roles from-node context id2node)
  "Add the roles as edges from from-node, getting to-nodes by calling
   lf-node-from-list."
  (unless roles
    (return-from lf-roles-from-list))
  (let ((role (first roles))
	(value (second roles))
	(remaining-roles (cddr roles))
	)
    (cond
     ((and (is-trips-variable value)
	    (find-if (lambda (trm) (eql (second trm) value)) context))
      ;; it's a variable in the context, so recurse
      (make-and-add-edge :label role
                         :from from-node
			 :to (lf-node-from-list value context id2node)))
     ((and (listp value) (member role '(:members :mods)))
      ;; it's a plural role, split it up
      (let* ((plural-role (string role))
             (singular-role (intern (subseq plural-role
	                                    0 (- (length plural-role) 1)
					    )
	                            'keyword)))
        (setf remaining-roles
	      (append (mapcan (lambda (v) (list singular-role v))
	                      value)
	              remaining-roles)
	      )))
     (t ; it's something else, so use it as a normal node label
      (let ((n (make-node :label value :uttnum (node-uttnum from-node))))
	;; We need to add this to the id2node hash too, even though we weren't
	;; given an ID for it. Add-start-node-to-graph uses the id2node hash
	;; values to find all the nodes in the graph.
	(setf (gethash (get-node-id n) id2node) n)
	(make-and-add-edge :label role
			   :from from-node
			   :to n)))
     )
    (lf-roles-from-list remaining-roles from-node context id2node)
    ))

(defun lf-node-from-list (id context &optional id2node)
  "Create the graph of LF-nodes corresponding to context, returning the node with the specified ID. The hash table id2node will be filled with mappings from term IDs to the corresponding new nodes if it is given.
  @returns two values: the node specified by ID and the id2node hash (filled)"
  (unless id2node
    (setf id2node (make-hash-table :test #'eql))
    ;; make sure we get _all_ the terms
    (dolist (term context)
      (lf-node-from-list (second term) context id2node))
    )
  (when (gethash id id2node)
    (return-from lf-node-from-list (values (gethash id id2node) id2node)))
  (let ((new-node (make-lf-node)))
    (setf (gethash id id2node) new-node)
    ;; find id in context
    (let ((term (find-if (lambda (trm) (eql (second trm) id)) context)))
      (unless term
        (error "Can't find ID ~s in LF context ~s" id context))
      (setf (lf-node-indicator new-node) (first term))
      (setf (node-id new-node) (second term))
      (let ((full-lftype (third term)))
        (setf (node-label new-node) full-lftype) ; redundant but useful
        (cond
	 ((and (consp full-lftype) (eql :* (first full-lftype)))
	  (setf (lf-node-lftype new-node) (second full-lftype))
	  (setf (lf-node-word new-node) (third full-lftype))
	  )
	 ((and (consp full-lftype)
	       (member (first full-lftype) '(set-of w::set-of ont::set-of)))
	  (setf (lf-node-lftype new-node) 'set)
	  (setf term (append term (list :of (second full-lftype))))
	  )
	 (t
	  (setf (lf-node-lftype new-node) full-lftype))
	 )
	)
      (when (getk term :uttnum)
        (setf (node-uttnum new-node) (getk term :uttnum))
	(setf term (remove-keyword-arg term :uttnum))
	)
      
      ;; make edges for roles
      (lf-roles-from-list (cdddr term) new-node context id2node)
      )
    (values new-node id2node)))

(defun lf-node-to-list (n context)
  "Convert the graph of LF-nodes starting with n back to LF, appending each term to the given context list in place.
   @param n The root of the LF-node graph to convert
   @param context A list whose only element is the context list to be added to.
   @return the ID of n
   "
  (print-debug 'lf "lf-node-to-list ~a ~s~%" n context)
  (unless (find-if (lambda (term) (eql (get-node-id n) (second term)))
                   (car context))
    ;; this node isn't in context, so add it and recurse on its outgoing edges
    (let ((term (list (lf-node-indicator n) (get-node-id n)))
          members mods)
      (setf (car context) (nconc (car context) (list term)))
      (setf term
            (nconc term (list
			  (cond
			    ((lf-node-word n)
			     `(:* ,(lf-node-lftype n) ,(lf-node-word n)))
			    ((and (eql 'set (lf-node-lftype n))
			          (get-edge-opposite n :out :of))
			     `(set-of ,(lf-node-to-list
			     		      (get-edge-opposite n :out :of)
					      context)))
			    (t
			      (lf-node-lftype n))
			    ))))
      (print-debug 'lf " context is now ~s~%" context)
      (dolist (e (reverse (node-edges n)))
        (when (eq n (edge-from e))
	  (case (edge-label e)
	   (:of
	    (unless (eql 'set (lf-node-lftype n))
	      (nconc term (list (edge-label e)
				(if (typep (edge-to e) 'lf-node)
				  (lf-node-to-list (edge-to e) context)
				  (node-label (edge-to e))
				  )))))
	   (:member (push (lf-node-to-list (edge-to e) context) members))
	   (:mod    (push (lf-node-to-list (edge-to e) context) mods))
	   (otherwise
	    (nconc term (list (edge-label e)
			      (if (typep (edge-to e) 'lf-node)
				(lf-node-to-list (edge-to e) context)
				(node-label (edge-to e))
				))))
	  )))
      (when members (nconc term (list :members (reverse members))))
      (when mods    (nconc term (list :mods    (reverse mods))))
      ;; recurse on incoming edges too, just in case
      (dolist (e (node-edges n))
        (when (eq n (edge-to e))
	  (lf-node-to-list (edge-from e) context)))
      ))
  (print-debug 'lf "lf-node-to-list returning ~a (context is ~s )~%" (get-node-id n) context)
  (get-node-id n))

(defun lf-node-scored-binding (rule-node world-node)
  (when (and (lf-node-p world-node)
             (packageless-equalp (node-uttnum rule-node)
	                         (node-uttnum world-node)))
    (let* ((mp (find-if (lambda (p)
    			  (and (stringp (first p)) (stringp (second p))
			       (or (string= (first p)
					    (symbol-name (node-id rule-node)))
				   (string= (second p)
					    (symbol-name (node-id world-node)))
				   )))
			*map-pairs*))
	   (mp-score (if mp
		       (if (and (string= (first mp)
					 (symbol-name (node-id rule-node)))
				(string= (second mp)
					 (symbol-name (node-id world-node))))
			 (- 1 (third mp))
			 1.0)
		       1.0))
	   (indicator-match (packageless-equalp
				(lf-node-indicator rule-node)
				(lf-node-indicator world-node)))
	   (lftype-match (packageless-equalp
			     (lf-node-lftype rule-node)
			     (lf-node-lftype world-node))))
      (if (lf-node-word rule-node)
        ; we must match the word if it's there
	(when (words-match-p (lf-node-word rule-node)
			     (lf-node-word world-node))
	  (let ((score (* (/ (+ (if indicator-match 0 1)
	                        (if lftype-match 0 1))
	                     3)
	                  mp-score)))
	    (make-binding :rule rule-node :world world-node :score score
			  :counts `((term-node 1 1)
				    (word 1 1)
				    (indicator ,(if indicator-match 1 0) 1)
				    (lftype ,(if lftype-match 1 0) 1)
				    ))))
	; no word, so either the indicator or the lftype must match
	(when (and (not (lf-node-word world-node))
	           (or indicator-match lftype-match))
          (let ((score (* (/ (+ (if indicator-match 0 1)
	                        (if lftype-match 0 1))
	                     2)
	                  mp-score)))
	    (make-binding :rule rule-node :world world-node :score score
			  :counts `((term-node 1 1)
				    (indicator ,(if indicator-match 1 0) 1)
				    (lftype ,(if lftype-match 1 0) 1)
				    ))))
	))))

(defun lf-node-fake-binding (rule-node)
  (make-binding :rule rule-node :world (make-lf-node) :score 1
                :counts `((term-node 0 1)
		          (word 0 ,(if (lf-node-word rule-node) 1 0))
			  (indicator 0 1)
			  (lftype 0 1)
			  )))

(defun flatten-lf-list (hier-list)
  "Given a hierarchical LF with paragraph and sentence terms, return the flat version with :uttnums from the sentence terms added to each contained term."
  (mapcan (lambda (term)
  	    (case (car term)
	      (paragraph
	        (flatten-lf-list (getk term :terms)))
	      (sentence
	        (let ((uttnum (getk term :uttnum))
		      (subterms (flatten-lf-list (getk term :terms))))
		  (dolist (subterm subterms)
		    (if (getk subterm :uttnum)
		      (setf (second (member :uttnum subterm)) uttnum)
		      (nconc subterm (list :uttnum uttnum))))
		  subterms))
	      (otherwise
	        (list term))
	      ))
          hier-list))

