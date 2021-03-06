;;;;
;;;; W::acknowledge
;;;;

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
 (W::acknowledge
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050830 :change-date 20090508 :comments nil)
     (EXAMPLE "he acknowledged the message")
     (LF-PARENT ONT::acknowledge)
     (SEM (F::Aspect F::bounded) (F::Time-span F::extended))
     (TEMPL AGENT-neutral-TEMPL)
     )
    ((meta-data :origin task-learning :entry-date 20050830 :change-date 20090508 :comments nil :vn ("confess-37.10"))
     (EXAMPLE "You acknowledge that Software Product is of U.S.")
     (LF-PARENT ONT::acknowledge)
     (SEM (F::Aspect F::bounded) (F::Time-span F::extended))
     (TEMPL AGENT-FORMAL-XP-TEMPL (xp (% W::cp (W::ctype (? c W::s-that)))))
     )
    )
   )
))

