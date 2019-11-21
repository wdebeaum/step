;;;;
;;;; W::see
;;;;

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :tags (:base500)
 :words (
  (W::see
   (wordfeats (W::morph (:forms (-vb) :ing W::seeing :past W::saw :pastpart W::seen :nom w::sight)))
   (SENSES
    ((LF-PARENT ONT::ACTIVE-PERCEPTION)
     (example "he saw the man with the telescope")
     ;;(SEM (F::Aspect F::bounded) (F::Time-span F::atomic))
     (TEMPL experiencer-NEUTRAL-TEMPL)
     )
    ((LF-PARENT ONT::active-perception)
     ;;(SEM (F::Aspect F::Indiv-level) (F::Time-span F::extended))
     (example "I can't hear, I can't see")
     (TEMPL experiencer-TEMPL)
     (meta-data :origin monroe :entry-date 20030909 :change-date nil :comments s2)
     (PREFERENCE 0.97) ;; disprefer intransitive
     )
    ((LF-PARENT ONT::understand)
     ;;(SEM (F::Aspect F::Indiv-level) (F::Time-span F::extended))
     (example "I see")
     (TEMPL experiencer-templ)
     (PREFERENCE 0.98) ;; disprefer intransitive
     )
    ((LF-PARENT ONT::understand)
     ;;(SEM (F::Aspect F::Indiv-level) (F::Time-span F::extended))
     (example "I see the problem")
     (TEMPL experiencer-neutral-xp-templ)
     (PREFERENCE 0.98) 
     )
    ((meta-data :origin plow :entry-date 20060414 :change-date nil :comments nil :vn ("see-30.1-1"))
     (LF-PARENT ONT::becoming-aware)
     ;;(SEM (F::Aspect F::Stage-level) (F::Time-span F::extended))
     (example "see whether/if/that it's a book order")
     (TEMPL AGENT-FORMAL-XP-TEMPL (xp (% W::cp (W::ctype W::s-finite))))
     )
    ((meta-data :origin trips :entry-date 20090330 :change-date nil :comments missing-sense)
     (LF-PARENT ONT::active-perception)
     ;;(SEM (F::Aspect F::Stage-level) (F::Time-span F::extended))
     (example "he saw him drink / drinking ")
     (TEMPL EXPERIENCER-NEUTRAL-FORMAL-CP-OBJCONTROL-A-TEMPL (xp (% W::VP (W::vform (? vf2 W::base w::ing)))))
     )
    ((meta-data :origin trips :entry-date 20090330 :change-date nil :comments missing-sense)
     (LF-PARENT ONT::active-perception)
     ;;(SEM (F::Aspect F::Stage-level) (F::Time-span F::extended))
     (example "he saw him happy / drunk ")
     (TEMPL EXPERIENCER-NEUTRAL-FORMAL-PRED-OBJCONTROL-TEMPL)
     )
    ((LF-PARENT ONT::belief-ascription)
     (example "he sees the situation as positive")
     (TEMPL EXPERIENCER-NEUTRAL-FORMAL-2-XP-3-XP2-PP-TEMPL)
     )
     )
   )
))

(define-words :pos W::UttWord :boost-word t :templ NO-FEATURES-TEMPL
 :words (
   ((W::see w::you)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
))

