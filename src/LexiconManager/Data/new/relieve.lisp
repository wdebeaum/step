;;;;
;;;; W::relieve
;;;;

(define-words :pos W::V 
 :words (
  (W::relieve
     (wordfeats (W::morph (:forms (-vb) :nom w::relief)))
   (SENSES
    ((meta-data :origin "verbnet-2.0" :entry-date 20060315 :change-date 20090601 :comments nil :vn ("cheat-10.6") :wn ("relieve%2:32:00" "relieve%2:37:00" "relieve%2:40:00" "relieve%2:40:01" "relieve%2:41:01"))
     (LF-PARENT ONT::remove-from)
     (TEMPL AGENT-AFFECTEDR-AFFECTED-XP-PP-OF-OPTIONAL-TEMPL)
     (example "relieve the mule of its burden")
     )
    ((meta-data :origin "wordnet-3.0" :entry-date 20090528 :change-date nil :comments nil)
     (example "relieve the soldier from duty")
     (LF-PARENT ONT::remove-from)
     (TEMPL AGENT-AFFECTED-SOURCE-XP-OPTIONAL-TEMPL)
     )
    ((meta-data :origin "verbnet-1.5" :entry-date 20051219 :change-date 20090512 :comments nil :vn ("amuse-31.1") :wn ("relieve%2:37:00" "relieve%2:40:01"))
     (LF-PARENT ONT::decrease)
     (EXAMPLE "The news relieved my fears" "This pill will relieve your headaches")
     (TEMPL AGENT-AFFECTED-XP-NP-TEMPL)
     )

    ((LF-PARENT ont::evoke-relief);this will apply to only animate entities unlike ONT::DECREASE which will apply to other entities.
     (example "his response relieved my tensions")
     (SEM (F::Aspect F::unbounded) (F::Time-span F::extended))
     (TEMPL AGENT-AFFECTED-XP-NP-TEMPL)
     (meta-data :wn ("still%2:37:01"))
    )

;    ((meta-data :origin "wordnet-3.0" :entry-date 20090515 :change-date nil :comments nil)
;     (LF-PARENT ONT::evoke-relief)
;     (EXAMPLE "This pill will relieve your headaches")
;     (TEMPL agent-affected-xp-templ)
;     )
    )
   )
))

