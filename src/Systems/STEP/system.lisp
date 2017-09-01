;;;;
;;;; File: Systems/STEP/system.lisp
;;;; Creator: George Ferguson
;;;; Created: Wed Jul 11 12:51:11 2007
;;;; Time-stamp: <Sat Feb  4 08:17:58 EST 2017 jallen>
;;;;
;;;; Defines and loads an instance of the TRIPS system.
;;;;

(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up :up "config" "lisp")
		       :name "trips")))

(load #!TRIPS"src;Systems;core;system")

(trips:def-trips-system :step
  (:old-trips-component	:lxm	#!TRIPS"src;LexiconManager;")
  (:dfc-component	:parser	#!TRIPS"src;Parser;")
  (:dfc-component	:im	#!TRIPS"src;NewIM;")
  )

;; add WebParser to the system when we have its source directory
(when (probe-file #!TRIPS"src;WebParser")
  (nconc (assoc :step trips::*trips-systems*)
	 (list '(:dfc-component :webparser #!TRIPS"src;WebParser;"))))

;; Now load the system
(trips:load-trips-system)

(defun parse-eval (x)
  (im::send-msg `(request :receiver parser :content (eval ,x))))

;;(load  #!TRIPS"src;Systems;step;adj.lisp")
;;(load  #!TRIPS"src;Systems;step;attributes.lisp")

;;(format t "~% LF SEM on ONT::INSIPID is ~S" (om::lf-sem 'ONT::INSIPID))

;;(setf wf::wordnet-synset-to-ont-type-mappings (make-hash-table :test #'equalp))
;;(wf::make-synset-to-ont-type-table)

;;(format t "~% LF SEM on ONT::INSIPID hash is ~S is ~S" (gethash 'ont::insipid (om::ling-ontology-lf-table om::*lf-ontology*)) (om::lf-sem 'ONT::INSIPID))
