;;;;
;;;; W::target
;;;;

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::target
   (SENSES
    (
;     (lf-parent ont::website)
     (lf-parent ont::goal)
     (TEMPL OTHER-RELN-TEMPL)
      (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("target%1:09:00") :comments nil)
      (EXAMPLE "when you click the link in the document, you go to its target")
     )
    )
   )
))

(define-words :pos W::v 
 :words (
  (W::target
   (wordfeats (W::morph (:forms (-vb) :past w::targeted :ing w::targeting)))
   (SENSES
    #| ; moved to domain-words
    ((lf-parent ont::TRANSPORT)
     (EXAMPLE "protein targeting")
     (TEMPL agent-affected-GOAL-templ)
     )
    |#
    ((lf-parent ont::DIRECT-AT)
     (EXAMPLE "This book targets teenagers.  The pickpocket targeted the tourist.")
     (TEMPL NEUTRAL-NEUTRAL1-XP-TEMPL)
     )
    )
   )
))
