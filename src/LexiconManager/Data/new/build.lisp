;;;;
;;;; W::build
;;;;

(define-words :pos W::v :TEMPL AGENT-AFFECTEDR-XP-TEMPL
 :tags (:base500)
 :words (
  (W::build
   (wordfeats (W::morph (:forms (-vb) :past W::built)))
   (SENSES
    ((LF-PARENT ONT::CREATE)
     )
    ;;;; swift 08/14/02 need a sense for "build it into the schedule", but this doesn't work because the PP object
    ;;;; is not a spatial location!

    #|
    ((LF-PARENT ONT::nature-change)
     (TEMPL AGENT-affected-XP-TEMPL (xp (% W::PP (W::ptype (? pt W::into W::in)))))
     )
    |#
    )
   )
))

(define-words :pos W::v :TEMPL AGENT-AFFECTED-XP-NP-TEMPL
 :words (
 ((W::build (w::up))
   (wordfeats (W::morph (:forms (-vb) :past W::built)))
   (SENSES
    (;(LF-PARENT ONT::clog)
     (LF-PARENT ONT::amass)
     (TEMPL AGENT-AFFECTED-XP-NP-TEMPL)
     )
    (;(LF-PARENT ONT::clog)
     (LF-PARENT ONT::amass)
     (example "the fluid built up in his lungs")
     (TEMPL affected-TEMPL)
     )
    )
   )
))

