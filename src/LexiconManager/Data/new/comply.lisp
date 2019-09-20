;;;;
;;;; w::comply
;;;;

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
   (w::comply
    (wordfeats (W::morph (:forms (-vb) :nom w::compliance)))
    (senses
     ((LF-PARENT ONT::Compliance)
      (example "comply with the laws")
      ;(TEMPL AGENT-FORMAL-XP-TEMPL (xp (% w::PP (w::ptype w::with))))
      (TEMPL AGENT-FORMAL-XP-TEMPL (xp (% w::PP (w::ptype (? pt w::with w::to)))))
      (meta-data :origin task-learning :entry-date 20050826 :change-date nil :comments nil)
      )
     ))
))

