;;;;
;;;; W::GUESS
;;;;

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::GUESS
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("guess%1:09:00" "guess%1:10:00"))
     (LF-PARENT ONT::information)
     )
    )
   )
))

(define-words :pos W::v 
 :words (
  (W::GUESS
   (wordfeats (W::morph (:forms (-vb) :3s W::guesses)))
   (SENSES
    ((LF-PARENT ONT::suppose)
     (SEM (F::Aspect F::Stage-level) (F::Time-span F::extended))
     (example "I guess that we could try that")
     (TEMPL experiencer-formal-xp-templ (xp (% W::cp (W::ctype W::s-finite))))
     )
    ((LF-PARENT ONT::SUPPOSE)
     (example "I guess")
     (SEM (F::Aspect F::stage-level) (F::Time-span F::extended))
     (TEMPL experiencer-templ)
     (preference .96)
     )
    ((LF-PARENT ONT::determine)
     (example "he guessed the answer")
     (TEMPL AGENT-FORMAL-XP-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     )
    )
   )
))

