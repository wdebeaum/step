;;;;
;;;; W::nickname
;;;;

(define-words :pos W::V :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
  (W::nickname
   (SENSES
    ((meta-data :origin "verbnet-2.0" :entry-date 20060315 :change-date 20090501 :comments nil :vn ("dub-29.3-1"))
     (LF-PARENT ONT::naming)
     ;(TEMPL AGENT-NEUTRAL-FORMAL-2-XP-3-XP2-NP-OPTIONAL-TEMPL) ; like name
     (TEMPL AGENT-NEUTRAL-NEUTRAL1-XP-TEMPL (XP (% W::NP)))
     )
    ((meta-data :origin "verbnet-1.5" :entry-date 20051219 :change-date 20090501 :comments nil :vn ("dub-29.3-1"))
     (LF-PARENT ONT::naming)
     (TEMPL agent-neutral-xp-templ) ; like label
     )
    )
   )
))

