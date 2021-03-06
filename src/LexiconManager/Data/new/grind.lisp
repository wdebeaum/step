;;;;
;;;; W::grind
;;;;

(define-words :pos W::V :TEMPL AGENT-AFFECTED-XP-NP-TEMPL
 :words (
  (W::grind
   (wordfeats (W::morph (:forms (-vb) :past W::ground :ing W::grinding)))
   (SENSES
    ((meta-data :origin "verbnet-2.0" :entry-date 20060315 :change-date nil :comments nil :vn ("carve-21.2-1"))
     (LF-PARENT ONT::crush)
 ; like mash,squash,squish,crush,bruise
     )
    ((meta-data :origin "verbnet-1.5" :entry-date 20051219 :change-date nil :comments nil :vn ("carve-21.2-1"))
     (LF-PARENT ONT::cut) ; like grate
     )
    )
   )
))

