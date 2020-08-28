;;;;
;;;; W::HOWEVER
;;;;

(define-words :pos W::adv :templ DISC-PRE-TEMPL
 :words (
  (W::HOWEVER
   (SENSES   
    ((LF-PARENT ONT::CONJUNCT) ; modifies the UTT
     (TEMPL DISC-TEMPL)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    ((LF-PARENT ONT::CONJUNCT) ; modifies the VP
     (TEMPL pred-s-vp-TEMPL)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )

    ))
))

