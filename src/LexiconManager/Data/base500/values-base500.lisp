
(in-package :lxm)




(define-words :pos W::n :templ PRED-NO-FORM-TEMPL
 :words (
  (W::AM
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  (W::pm
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::a W::m)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (LF-FORM W::AM)
     (preference 0.98) ;; reduce competion w/ the article
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::p W::m)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (LF-FORM W::PM)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::a W::punc-period W::m W::punc-period)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (preference 0.98) ;; reduce competion w/ the article
     (LF-FORM W::AM)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::p W::punc-period W::m W::punc-period)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (LF-FORM W::PM)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ))

(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::time-interval)
    (SEM (F::time-function F::day-period))
    (templ time-reln-templ)
    )
   )
 :words (W::MORNING W::AFTERNOON W::EVENING w::weekday w::weekend ))

(define-list-of-words :pos W::n
  :senses (;;;;; night is separate because we can have it with or without articles
   ((LF-PARENT ONT::time-interval)
    (SEM (F::time-function (? tf F::day-period f::day-point)))
    (templ time-reln-templ)
     )
   )
 :words (W::MIDDAY W::BEDTIME  w::night w::nighttime w::daytime w::twilight w::dawn))

;; at noon, midnight
;; why are these pronouns? 
(define-words :pos W::pro :templ PRONOUN-TEMPL
 :words (
  (W::noon
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-point))
     )
    )
   )
  (W::midnight
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-point))
     )
    )
   )
  ))

