;;;;
;;;; W::worrisome
;;;;

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (W::worrisome
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04"))
     (example "a good book")
     (lf-parent ont::distressing-val)
     (SEM (f::gradability +) (f::orientation F::neg) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (lf-parent ont::distressing-val)
     (SEM (f::gradability +) (f::orientation F::neg) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
#|    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (lf-parent ont::distressing-val)
     (SEM (f::gradability +) (f::orientation F::neg) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )|#
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04") :comlex (ADJ-PP-FOR))
     (EXAMPLE "a solution good for him")
     (SEM (f::gradability +) (f::orientation F::neg) (f::intensity ont::med))
     (lf-parent ont::distressing-val)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )        
    )
   )
))

