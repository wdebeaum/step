;;;;
;;;; W::OVER
;;;;

(define-words :pos W::ADV
 :tags (:base500)
 :words (
  (W::OVER
   (SENSES
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )

    ((LF-PARENT ONT::above)
     (TEMPL BINARY-CONSTRAINT-NP-implicit-TEMPL)
     (example "he put it over the box" "he threw the ball over the fence")
     )
    
    ((LF-PARENT ONT::distributed-pos)
     (TEMPL BINARY-CONSTRAINT-S-implicit-TEMPL)
     )
    
    ((LF-PARENT ONT::QMODIFIER)
     (example "sell it for over five dollars")
     (TEMPL NUMBER-OPERATOR-TEMPL)
     (lf-form w::more)
     (meta-data :origin calo :entry-date 20040426 :change-date nil :comments calo-y1v1)
     )
    (;(LF-PARENT ONT::TIME-span-rel)
     (LF-PARENT ONT::EVENT-DURATION-MODIFIER)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (meta-data :origin step :entry-date 20080530 :change-date nil :comments nil)
     (example "the riot over the last week")
     )
    #|
    (
     (LF-PARENT ONT::EVENT-DURATION-MODIFIER)
     (TEMPL binary-constraint-adj-postpos-templ)
     (meta-data :origin step :entry-date 20080530 :change-date nil :comments nil)
     (example "green over the last week")
     )
    |#
    ((LF-PARENT ONT::more-than-rel)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (example "purchases over five dollars")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin calo :entry-date 20040112 :change-date nil :comments calo-y1v1)
     )

    ((LF-PARENT ONT::COMPLETELY)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (EXAMPLE "I looked over the files")
     )

    #||((LF-PARENT ONT::OVER)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (EXAMPLE "I ran over the hill")
     )||#

    )
   )
))

(define-words
    :pos w::adv
 :tags (:base500)
 :words (
  (w::over
  (senses((lf-parent ont::location-distance-modifier)
	    (templ adv-operator-templ)
	    (example "he is over there" "he is out in the sunshine" "he is out in the street"))
	   )
)
))

(define-words :pos W::adj 
 :words (
  (W::over
   (SENSES
    (
     (LF-PARENT ONT::FINISHED)
     (example "The show is over.")
     (TEMPL predicative-only-adj-templ)
     )
    )
   )
))


(define-words :pos W::PREP :boost-word t :templ NO-FEATURES-TEMPL
 :tags (:base500)
 :words (
  (W::OVER
   (SENSES
    ((LF (W::OVER))
     (non-hierarchy-lf t))
    )
   )
))

(define-words :pos w::adv
 :words (
  (w::over-
  (senses
   ((lf-parent ont::DEGREE-MODIFIER-HIGH)
    (example "overexpress; overdo")
    (templ V-PREFIX-templ)
    )
   )
  )
))

(define-words :pos W::adj 
 :words (
  (W::over-
   (SENSES
    (
     (LF-PARENT ONT::DEGREE-MODIFIER-HIGH)
     (example "overthin")
     (TEMPL prefix-adj-templ)
     )
    )
   )
))

(define-words :pos w::adv
 :words (
  (w::over-
  (senses
   ((lf-parent ont::DEGREE-MODIFIER-HIGH)
    (example "oversensitive; overconfident")
    (templ adj-operator-prefix-TEMPL)
    )
   )
  )
))
