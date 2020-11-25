(in-package :domiknows)

(defvar *preferred-roles* '(
  :agent :agent1
  :experiencer :experiencer1
  :affected :affected1
  :neutral :neutral1
  :figure
  :ground
  )
  "LF roles in order from most to least preferred to be selected as an endpoint
   of an edge in the query graph; the source of an edge is selected first, and
   then the target of the edge is selected from what remains.")

(defun destructure-complex-type (complex-type)
  "Return two values: the simple ONT type, and the word, if any."
  (cond
    ((symbolp complex-type)
      (values complex-type nil))
    ((and (listp complex-type) (eq :* (car complex-type)))
      (values (second complex-type) (third complex-type)))
    (t (error "type too complex: ~s" complex-type))
    ))

(defun destructure-lf-node-label (n lfg)
  (let* ((label (label n lfg))
	 (indicator (first label)))
    (multiple-value-bind (ont-type word)
	(destructure-complex-type (second label))
      (values indicator ont-type word))))

(defun adj-p (ont-type)
  "Is the given ONT type used for adjectives?"
  (om::is-sublf ont-type 'ONT::property-val))

(defun direction-p (ont-type)
  "Is the given ONT type used for a direction like left or right?"
  (om::is-sublf ont-type 'ONT::loc-wrt-orientation))

(defun lf-to-query-node (n qg lfg &optional (visited (make-hash-table :test #'eq)))
     (declare (type query-graph qg) (type lf-graph lfg))
  "Recursively convert nodes from an LF graph to nodes in a query graph, as
   appropriate, starting with the given node."
  (when (gethash n visited) ; already added this node
    (return-from lf-to-query-node nil))
  (setf (gethash n visited) t)
  (multiple-value-bind (indicator ont-type word)
      (destructure-lf-node-label n lfg)
    (cond
      ((eq 'ONT::F indicator)
	(cond
	  ((and (eq ont-type 'ONT::exists) (eq word 'W::be)
		(has-edge n :neutral lfg))
	    (lf-to-query-node (traverse-only-edge n :neutral lfg)
			      qg lfg visited))
	  ((and (has-edge n :formal lfg)
		(member ont-type
			'(ONT::have-property ONT::appears-to-have-property)))
	    (lf-to-query-node (traverse-only-edge n :formal lfg)
			      qg lfg visited))
	  ;; scale value
	  ((and (eq ont-type 'ONT::at-scale-value)
		(has-edge n :scale lfg)
		(has-edge n :figure lfg)
		)
	    (let* ((scale (traverse-only-edge n :scale lfg))
		   (scale-type (second (label scale lfg)))
		   (figure (traverse-only-edge n :figure lfg))
		  )
	      (lf-to-query-node figure qg lfg visited)
	      (imitate-node qg lfg figure)
	      (if (has-edge n :ground lfg)
		(let ((ground (traverse-only-edge n :ground lfg)))
		  (if (eq 'ont::wh-term (car (label ground lfg)))
		    ; ground is wh-term
		    (let ((dpn (gentemp "V" :ont)))
		      (add-node qg dpn `(ONT::domain-property :scale ,scale-type))
		      (add-edge qg figure :attr dpn)
		      (when (eq ground (query-graph-focus qg))
			(setf (query-graph-focus qg) dpn))
		      )
		    ; else ground present but isn't wh-term
		    (progn
		      (add-node qg ground (list (second (label ground lfg)) :scale scale-type))
		      (add-edge qg figure :attr ground)
		      )
		    ))
		; else ground not present
		(let ((ground (gentemp "V" :ont)))
		  (add-node qg ground `(ONT::domain-property :scale ,scale-type))
		  (add-edge qg figure :attr ground)
		  )
		)
	      ))
	  ;; comparative
	  ((and (member ont-type '(ONT::less-val ONT::as-much-as ONT::more-val))
		(has-edge n :scale lfg)
		(has-edge n :figure lfg)
		)
	    (let* ((scale (traverse-only-edge n :scale lfg))
		   (figure (traverse-only-edge n :figure lfg))
		   (edge-type (list ont-type :scale (second (label scale lfg))))
		   )
	      (lf-to-query-node figure qg lfg visited)
	      (imitate-node qg lfg figure)
	      (if (has-edge n :compar lfg)
		(let ((compar (traverse-only-edge n :compar lfg)))
		  (imitate-node qg lfg compar)
		  (add-edge qg figure edge-type compar)
		  )
		; else compar not present
		(let ((compar (gentemp "V" :ont)))
		  (add-node qg compar 'ONT::referential-sem)
		  (add-edge qg figure edge-type compar)
		  )
		)
	      ))
	  ;; adjective/attribute
	  ((and (adj-p ont-type) (has-edge n :figure lfg))
	    (let ((figure (traverse-only-edge n :figure lfg)))
	      (lf-to-query-node figure qg lfg visited)
	      (imitate-node qg lfg figure)
	      (imitate-node qg lfg n)
	      (add-edge qg figure :attr n)
	      ))
	  ;; superlative
	  ((and (member ont-type '(ONT::min-val ONT::max-val))
		(has-edge n :figure lfg)
		(has-edge n :scale lfg))
	    (let* ((figure (traverse-only-edge n :figure lfg))
		   (scale (traverse-only-edge n :scale lfg))
		   (scale-type (second (label scale lfg))))
	      (lf-to-query-node figure qg lfg visited)
	      (imitate-node qg lfg figure)
	      (imitate-node qg lfg n)
	      (add-node qg n (list (second (label n lfg)) :scale scale-type))
	      (add-edge qg figure :attr n)
	      ))
	  (t
	    ;; if the term has two roles from the preferred list, make an edge
	    ;; from the earlier one to the later one
	    (loop with source = nil
		  with target = nil
		  for role in *preferred-roles*
		  when (has-edge n role lfg)
		  do (cond
		       (source
			 (setf target (traverse-only-edge n role lfg))
			 (lf-to-query-node source qg lfg visited)
			 (lf-to-query-node target qg lfg visited)
			 (imitate-edge qg lfg source ont-type target)
			 (loop-finish)
			 )
		       (t (setf source (traverse-only-edge n role lfg)))
		       )
		  finally
		    (when (and source (not target))
		      ; found only one role from the list
		      ;; try to use :ground of :location/:result as target,
		      ;; folding the intermediate node into the relation
		      ;; (always using :location in the label, even if it was
		      ;; :result)
		      ;; set mid to the intermediate node and target to the
		      ;; target node if this is possible
		      (let (mid-role mid)
			;; :result or location?
			(cond
			  ((has-edge n :location lfg) (setf mid-role :location))
			  ((has-edge n :result lfg) (setf mid-role :result))
			  )
			;; :ground?
			(when mid-role
			  (setf mid (traverse-only-edge n mid-role lfg))
			  (when (has-edge mid :ground lfg)
			    (setf target (traverse-only-edge mid :ground lfg))))
			(cond
			  (target ; it worked!
			    (let* ((mid-ont-type (second (label mid lfg)))
				   (label (list ont-type :location mid-ont-type)))
			      (lf-to-query-node source qg lfg visited)
			      (lf-to-query-node target qg lfg visited)
			      (add-edge qg source label target)
			      ))
			  (t
			    ; it didn't work; instead make the one role we
			    ; found an attribute instead of a relation
			    ;(lf-to-query-node source qg lfg visited)
			    (imitate-node qg lfg source)
			    (imitate-node qg lfg n)
			    (add-edge qg source :attr n)
			    )
			  )
			))
		  )
	    )
	  ))
      ;; "what kind of ..."
      ((and (eq 'ONT::wh-term indicator)
	    (eq 'ONT::kind ont-type)
	    (has-edge n :figure lfg))
	(let ((figure (traverse-only-edge n :figure lfg)))
	  ;; add the "kind" node but use the label of its :figure
	  (add-node qg n (second (label figure lfg)))
	  ; TODO? follow :MODS of figure
	  ))
      (t
	;; follow :MODS if any
	(dolist (mod (traverse-edge n :mod lfg))
	  (lf-to-query-node mod qg lfg visited))
	;; also, if we have :location with a :ground, try to make a relation
	;; for it
	(when (has-edge n :location lfg)
	  (let ((location (traverse-only-edge n :location lfg)))
	    (when (has-edge location :ground lfg)
	      (let* ((ground (traverse-only-edge location :ground lfg))
		     (ground-type
		       (nth-value 1 (destructure-lf-node-label ground lfg))))
		(imitate-node qg lfg n)
		(cond
		  ((direction-p ground-type) ; on/to the left/right
		    ;; use ground as relation and add dummy target
		    (let ((target (gentemp "V" :ont)))
		      (add-node qg target 'ONT::referential-sem)
		      (add-edge qg n ground-type target)
		      ))
		  (t ; not left/right, use ground as target
		    (let ((location-type (second (label location lfg))))
		      (imitate-node qg lfg ground)
		      (add-edge qg n location-type ground)
		      ))
		  )))))
	)
      )))

(defun lf-to-query-graph (lf-terms)
  "Convert a list of LF terms from parsing a question to a simpler query graph
   we can match against a GQA scene graph."
  (let* ((lfg (make-lf-graph :terms (add-terms-for-values lf-terms)))
	 (qg (make-query-graph))
	 (sa (find 'ONT::speechact (nodes lfg)
		   :key (lambda (n) (car (label n lfg)))))
	 (sa-type (second (label sa lfg)))
	 (content (traverse-only-edge sa :content lfg))
	 )
    (ecase sa-type
      (ONT::SA_YN-QUESTION
	nil)
      (ONT::SA_WH-QUESTION
	(setf (query-graph-focus qg) (traverse-only-edge sa :focus lfg)))
      )
    (lf-to-query-node content qg lfg)
    (unless (nodes qg)
      (error "query graph has no nodes"))
    (when (and (query-graph-focus qg)
	       (not (member (query-graph-focus qg) (nodes qg))))
      (error "query graph has focus ~s, but that node didn't make it into the graph:~%  ~s" (query-graph-focus qg) (query-graph-to-list qg)))
    qg
    ))
