;;;;
;;;; File: compare.lisp
;;;; Creator: George Ferguson
;;;; Created: Thu Jun 21 12:46:16 2012
;;;; Time-stamp: <Thu Jun 21 12:59:14 EDT 2012 ferguson>
;;;;

(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up "config" "lisp")
		       :name "trips")))

(load #!TRIPS"src;LexiconManager;defsys")

(mk:load-system :lxm)

(in-package :lxm)

(setq *lexicon-data* (init-lexicon-db))
(load-lexicon-data :version :old)
(defvar *old-lexicon-data* *lexicon-data*)

(setq *lexicon-data* (init-lexicon-db))
(load-lexicon-data :version :new)
(defvar *new-lexicon-data* *lexicon-data*)

(let ((old-words (lexicon-words *old-lexicon-data*))
      (new-words (lexicon-words *new-lexicon-data*)))
  (format t "old words: ~D~%" (length old-words))
  (format t "new words: ~D~%" (length new-words))
  (format t "old not in new: ~S~%"
	  (remove-if #'(lambda (x)
			 (member x new-words))
		     old-words))
  (format t "new not in old: ~S~%"
	  (remove-if #'(lambda (x)
			 (member x old-words))
		     new-words))
)


