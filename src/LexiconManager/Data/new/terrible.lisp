;;;;
;;;; W::TERRIBLE
;;;;

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (W::TERRIBLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (lf-parent ont::awful-val)
     (SEM (f::gradability +) (f::orientation F::neg) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
))

