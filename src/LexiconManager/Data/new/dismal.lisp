;;;;
;;;; W::dismal
;;;;

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (W::dismal
    (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (lf-parent ont::awful-val)
     (SEM (f::gradability +) (f::orientation ont::pos) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (lf-parent ont::awful-val)
     (SEM (f::gradability +) (f::orientation ont::pos) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
;    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
;      (EXAMPLE "a drug exceptional for cancer")
;     (lf-parent ont::awful-val)
;     ;; this is a sense that allows for implicit/indirect senses of "for"
;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;     (TEMPL adj-purpose-implicit-XP-templ)
;     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
;     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (lf-parent ont::awful-val)
     (SEM (f::gradability +) (f::orientation ont::pos) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
))

