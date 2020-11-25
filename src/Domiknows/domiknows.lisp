(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up "config" "lisp")
                       :name "trips")))

(load #!TRIPS"src;Domiknows;defsys")

(dfc:load-component :domiknows)

(defun run ()
  (dfc:run-component :domiknows))
