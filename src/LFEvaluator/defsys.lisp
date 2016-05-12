;;
;; defsys.lisp for LFEvaluator
;;

(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up "config" "lisp")
		       :name "trips")))

(unless (find-package :dfc)
  (load #!TRIPS"src;defcomponent;loader"))

(unless (find-package :comm)
  (load #!TRIPS"src;Comm;defsys"))

(unless (find-package :logging)
  (load #!TRIPS"src;Logging;defsys"))

(unless (find-package :util)
  (load #!TRIPS"src;util;defsys"))

(unless (find-package :lxm)
  (load #!TRIPS"src;LexiconManager;defsys"))

(defpackage :LFEvaluator
  (:use :common-lisp :util :dfc)
  )

(in-package :LFEvaluator)

;;; global variables

(defvar *debug-tags* '(10 debug) "Print-debugs with any of these tags will be printed")

(defvar *paragraph-gold-lfs* nil "The gold LFs for the single current paragraph")
(defvar *sentences-gold-lfs* nil "The gold LFs for the remaining current sentences. Corresponds to (getk *paragraph-gold-lfs* :terms).")

(defvar *use-rdf-matcher* t "Should we use RDFMatcher to guide the search?")
(defvar *map-pairs* nil "The mappings we got from RDFMatcher.")

;; cache
(defvar *node-cache* (make-hash-table :test #'eql) "Maps from node IDs to node objects")
(defvar *terminal-states* (make-hash-table :test #'eql) "Maps from state IDs to terminal-state objects")
(defvar *current-state* nil "the most-recently seen terminal-state")
(defvar *request-cache* (make-hash-table :test #'equalp) "Maps from WebTracker request contents to the results received from WebTracker.")
(defvar *word-penalty-cache* (make-hash-table :test #'eql) "Maps from word symbols to the penalty for omitting the word in gen-words-accuracy (based on POS, which is slow to get from LXM).")
(defun clear-cache ()
  (setf *node-cache* (make-hash-table :test #'eql))
  (setf *terminal-states* (make-hash-table :test #'eql))
  (setf *request-cache* (make-hash-table :test #'equalp))
  (setf *word-penalty-cache* (make-hash-table :test #'eql))
  )

;;; cancellation message checking

(defvar *cancellation-point-counter* 0)
(defvar *cancellation-point-max-count* 100)
(defun cancellation-point ()
  "check for cancellation messages every *cancellation-point-max-count* times this function is called"
; disabled so that calling LFE functions directly instead of via messaging works
;  (when (>= (incf *cancellation-point-counter*)
;            *cancellation-point-max-count*)
;    (setf *cancellation-point-counter* 0)
;    (check-for-cancellation-msg)
;    )
  )

;;; parameters

(defvar *region-label-order*
  '(screen column attribute-run spaced-chunk named-entity word number subword subnumber punctuation rectangle cursor)
  "This is the order for node-labels of regions that rectangle-region-before-p uses. It's roughly from large to small.")

;; search limiting parameters
(defvar *max-node-candidates* 20 "The maximum number of candidates rule-match will return.")

(defvar *max-hypotheses* 6000 "The maximum number of hypotheses we will entertain at once. The ones we'd try later will be discarded.")

(defvar *remove-corefs* t "When true, remove all :coref roles before evaluation.")

;; neighbor parameters
(defvar *neighbor-contained-coeff* 2 "How much does it count whether or not the neighbor is contained within the goal-node?")
(defvar *neighbor-shared-boundary-coeff* 1 "How much does each boundary shared with the goal-node count?")
(defvar *neighbor-width-coeff* 0.5 "How much does it count to have a width closer to the root-node's width?")
(defvar *neighbor-height-coeff* 1.5 "How much does it count to have a height closer to the root-node's height?")
(defvar *neighbor-score-denominator*
        (+ *neighbor-contained-coeff*
	   (* 4 *neighbor-shared-boundary-coeff*)
	   *neighbor-width-coeff*
	   *neighbor-height-coeff*
	   ))
(defvar *neighbor-score-threshold* 0.35 "The worst score for a neighbor we will add to a new rule")
(defvar *max-neighbors* 5 "The maximum number of neighbors we will add to a new rule.")

;; spatial-relation parameters
(defvar *distance-score-threshold* 1 "The worst score a spatial-relation binding returned by spatial-relation-possible-bindings will have.")

;; FIXME this may need to be lower than 0.1
;; FIXME I think a threshold like this might be too simple
(defvar *index-score-diff-threshold* 0.01 "The amount the scores of the two best-scoring candidates must differ by to avoid learning an ordinal/the indices of the endpoint candidates")

;; string match parameters
(defvar *word-match-score-threshold* 0.5 "The worst score we will allow a raw word-set match to have.")
(defvar *word-sequence-score-coeff* 0.2 "How much does the quality of the word sequence used for each side of a string-match count?")
(defvar *edit-score-coeff* 1 "How much does the edit-distance score between the word sequences for the sides of a string-match count?")
(defvar *string-match-score-denominator*
        (+ (* 2 *word-sequence-score-coeff*)
	   *edit-score-coeff*))
(defvar *string-match-score-threshold* 0.5 "The worst total score we will allow a string match to have. (a lower score is a better score)")
(defvar *max-akrl-string-alternatives* 5 "The maximum number of alternative stringifications of an AKRL node we will consider")
(defvar *max-num-words-to-search* 100 "The maximum number of words we will fail to find a string-match in before giving up learning a string-match")

;; this is a temporary mechanism until the world model/cache is set up for
;; PLOT
(defvar *table-rows* nil "A list of regions that we found were table rows")

(defun remember-rows (rows table)
    (declare (ignore table)) ;; for now; later I'll make edges between the table and each row
  "Remember that the rows are rows of the table."
  (setf *table-rows* 
        (append (mapcar #'rectangle-region-from-id rows)
                *table-rows*))
  )

(defun row-containing-region (region)
  "Return the row that contains the region, or nil if none do. Assumes no rows overlap."
  (find-if (lambda (row) (rect-contains-p (region-rectangle row)
                                          (region-rectangle region)))
           *table-rows*)
  )

(dfc:defcomponent :LFEvaluator
		  :use (:util :common-lisp)
		  :system (
		    :depends-on (:util :comm :logging)
		    :components (
		    		 "lf-to-rdf"
				 "binding"
				 "util"
				 "node"
				 "priority"
				 "edge"
				 "lf-node"
				 "start-edge"
				 "start-node"
				 "dispatch-functions"
				 "hypothesis"
				 "evaluate"
				 "handlers"
				 )))

(defun run ()
  (dfc:run-component :LFEvaluator))

