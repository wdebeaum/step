
(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up "config" "lisp")
		       :name "trips")))

(load #!TRIPS"src;LFEvaluator;defsys")

(mk:load-system :LFEvaluator)
