;;;;
;;;; W::INTO
;;;;

(define-words :pos W::ADV
 :tags (:base500)
 :words (
  (W::INTO
   (wordfeats (w::result-only +))
   (SENSES
    
    ((LF-PARENT ONT::resulting-object)
     (example "fold it into a heart") 
     (TEMPL BINARY-CONSTRAINT-np-TEMPL)
     (preference 0.985)
     )
    
    ((LF-PARENT ONT::RESULTING-STATE)
     (example "change to a waking state")
     (TEMPL BINARY-CONSTRAINT-np-TEMPL)
     (preference 0.985)
     )
    ; goal-as-containment as container + for GROUND; the other senses don't have restrictions (other than abstr-obj)
    ((LF-PARENT ONT::goal-as-containment)
     (example "put it into the box")
     (meta-data :origin fruitcarts :entry-date 20050427 :change-date nil :comments fruitcart-11-4)
     (TEMPL BINARY-CONSTRAINT-np-TEMPL)
     )
    )
   )
))

(define-words :pos W::PREP :boost-word t :templ NO-FEATURES-TEMPL
 :tags (:base500)
 :words (
  (W::INTO
   (SENSES
    ((LF (W::INTO))
     (non-hierarchy-lf t))
    )
   )
))

