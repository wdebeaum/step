;;;;
;;;; w::double
;;;;

(define-words :pos W::v :TEMPL AGENT-AFFECTED-XP-NP-TEMPL
 :words (
(w::double
 (senses
  ((meta-data :origin calo :entry-date 20040112 :change-date 20090504 :comments calo-y1script)
   (LF-PARENT ONT::double)
   (example "double the budget [to 3K]")
   (SEM (F::Cause F::Agentive) (F::Aspect F::bounded) (F::Time-span F::atomic))
   ;(TEMPL AGENT-affected-RESULT-OPTIONAL-TEMPL (xp (% W::PP (W::ptype W::to))))
   (TEMPL AGENT-AFFECTED-XP-NP-TEMPL)
   )
  (
   (LF-PARENT ONT::double)
   (example "it doubled in size")
   (TEMPL AFFECTED-TEMPL )
   )
  )
 )
))

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
   (W::double
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090731 :wn ("double%5:00:02:multiple:00") :comments caloy3)
     (example "double dose")
;     (LF-PARENT ONT::large)
     (LF-PARENT ONT::n-tuple-val)
     )
    ((meta-data :origin adjective-reorganization :entry-date 20170413 :change-date nil :wn ("double%5:00:00:large:00"))
     (example "a room with a double bed")
;     (LF-PARENT ONT::large)
     (LF-PARENT ONT::predefined-size-val)
    )
   )
)))

