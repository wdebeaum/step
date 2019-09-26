;;;;
;;;; W::play
;;;;

(define-words :pos W::v 
 :tags (:base500)
 :words (
  (W::play
   (SENSES
    ((EXAMPLE "play the voice note")
     ; changed from ont::execute to ont::play for asma
     (meta-data :origin boudreaux :entry-date 20060424 :change-date 20111004 :comments asma)
     ;(LF-PARENT ONT::play)
     (LF-PARENT ONT::make-sound)
     (TEMPL AGENT-AFFECTED-XP-NP-TEMPL)
     (SEM (F::Aspect F::unbounded) (F::Time-span F::extended))
     )
    ((EXAMPLE "they are playing")
     (meta-data :origin boudreaux :entry-date 20060424 :change-date 20111004 :comments asma)
     (LF-PARENT ONT::play)
     (templ agent-templ)
     (SEM (F::Aspect F::unbounded) (F::Time-span F::extended)) 
    )
    ((EXAMPLE "they play a game")
     (meta-data :origin boudreaux :entry-date 20060424 :change-date 20111004 :comments asma)
     (LF-PARENT ONT::play)
     (templ agent-affected-xp-np-templ)
     (SEM (F::Aspect F::unbounded) (F::Time-span F::extended)) 
    )

    ((lf-parent ont::occurring)
     (example "his remarks played to the suspicions of the committee")
     (templ neutral-AFFECTED-xp-TEMPL)
     )

    ((lf-parent ont::occurring)
     (example "the speech played well") ;NOTE: we need to extend the grammar to get the PP like "with the American public" attach to the adverb.
     (templ neutral-TEMPL)
     )

    )
   )))

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (w::play
   (senses
    ((LF-PARENT ONT::performance-play)
     (example "I saw the play at the theatre tonight")
     (meta-data :origin calo-ontology :entry-date 20060615 :change-date nil :wn ("concert%1:10:00") :comments nil)
     )
    )
   )
))

