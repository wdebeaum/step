;;;;
;;;; W::perceive
;;;;

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
 (W::perceive
   (SENSES
    ((meta-data :origin "verbnet-2.0" :entry-date 20060315 :change-date nil :comments nil :vn ("see-30.1-1") :wn ("perceive%2:39:00"))
     (LF-PARENT ONT::becoming-aware)
     (example "he perceived that there was a problem")
     (TEMPL AGENT-FORMAL-XP-CP-TEMPL)
     (PREFERENCE 0.96)
     )
    ((meta-data :origin "verbnet-2.0" :entry-date 20060315 :change-date nil :comments nil :vn ("characterize-29.2"))
     (LF-PARENT ONT::belief-ascription)
     (example "he perceived him as a rock star")
     (TEMPL EXPERIENCER-NEUTRAL-FORMAL-2-XP-3-XP2-PP-TEMPL) ; like interpret,classify
     (PREFERENCE 0.96)
     )
    ((LF-PARENT ONT::active-perception)
     (SEM (F::Time-span F::atomic))
     (TEMPL experiencer-neutral-XP-TEMPL)
     (example "he perceived the damage")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments Perceive :wn ("perceive%2:39:00"))
     )
    )
   )
))

