
(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::RIGHT
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20060803 :change-date nil :comments nil :wn ("right%1:15:00"))
     (LF-PARENT ont::right-loc);ONT::object-dependent-location)
     (example "to the right of the building")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     ;; enforced subcat to reduce ambiguity, but prevents "on the right" unless we add another grammar rule
;;     (TEMPL other-reln-subcat-required-templ)
     )
    )
   )
))
