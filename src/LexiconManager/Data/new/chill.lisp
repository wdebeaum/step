;;;;
;;;; W::CHILL
;;;;

(define-words :pos W::n
 :words (
  (W::CHILL
  (senses
   ((meta-data :wn ("chill%1:26:01"))
    (LF-PARENT ONT::chill)
    (TEMPL count-pred-TEMPL)
    )
   )
)
))

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
((W::chill w::out)
   (SENSES
    ((LF-PARENT ont::hang-out) ;experiencer-obj)
     (example "He chilled out on the couch")
     (SEM (F::Aspect F::unbounded) (F::Time-span F::extended))
     (TEMPL affected-TEMPL)
     (meta-data :origin plow :entry-date 20050922 :change-date nil :comments nil)
     )
    )
   )
))

(define-words :pos W::V 
  :TEMPL AGENT-AFFECTED-XP-NP-TEMPL
 :words (
(w::chill
 (senses
  ((meta-data :origin foodkb :entry-date 20050811 :change-date 20090504 :comments nil)
   (LF-PARENT ONT::cool)
   (example "chill the juice" "the wind chilled him")
   (syntax (w::resultative +))
   (SEM (F::Cause F::Agentive) (F::Aspect F::bounded) (F::Time-span F::extended) (F::scale ont::cold-scale))
    )
    ((meta-data :origin cause-result-relations :entry-date 20180803 :change-date nil :comments nil)
     (EXAMPLE "The juice chilled in the cooler")
     (LF-PARENT ONT::cool)
     (SEM (F::Aspect F::bounded) (F::Time-span F::extended) (F::scale ont::cold-scale))
     (TEMPL affected-unaccusative-templ)
     )
  )
 )
))

