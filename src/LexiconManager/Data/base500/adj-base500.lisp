(in-package :lxm)

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (

;; ADJ 1
 (W::GOOD
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

 (W::BEST
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("best%3:00:00"))
     (LF-PARENT ONT::max-val)
     (lf-form w::good)
     (TEMPL SUPERL-TEMPL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )

    (W::BETTER
   (wordfeats (W::COMPARATIVE +) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("better%3:00:00"))
     (LF-PARENT ONT::MORE-VAL)
     (lf-form w::good)
     (TEMPL COMPAR-TEMPL)
     (SEM (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

    
  (W::WORSE
   (wordfeats (W::COMPARATIVE +)  (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20080918 :comments nil :wn ("worse%3:00:00"))
     (LF-PARENT ONT::LESS-VAL)
     (lf-form w::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL COMPAR-TEMPL)
     )
    )
   )
  (W::WORST
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20080918 :comments nil :wn ("worst%3:00:00"))
     (LF-PARENT ONT::MIN-VAL)
     (lf-form w::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL SUPERL-TEMPL)
     )
    )
   )

;; ADJ 2

 (W::NEW
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("new%5:00:00:original:00" "new%5:00:00:other:00"))
     (LF-PARENT ONT::novelty-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

;; ADJ 3
;; first -- function word


;; ADJ 4
  (W::LAST
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("last%5:00:00:closing:00" "last%3:00:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     (example "it was the last day they met")
     ;;(preference .95)
     )
    )
   )


;; ADJ 5

  (W::LONG
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("long%3:00:01"))
     (EXAMPLE "a long line")
     (LF-PARENT ONT::SLIGHT)
     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("long%3:00:01"))
;     (EXAMPLE "a 5 feet long line")
;     (LF-PARENT ONT::Linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98) ;;use the no-premod meaning first
;     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("long%3:00:02"))
     (LF-PARENT ONT::event-duration-modifier)
     (example "how long did the meeting last" "a long meeting/conversation" "long term parking")
     )
    ;; this overgenerates
    ((meta-data :origin cardiac :entry-date 20090416 :change-date nil :comments nil :wn ("long%3:00:02"))
     (LF-PARENT ONT::event-duration-modifier)
     (example "all night long" "the whole week long")   
     (TEMPL postpositive-adj-optional-xp-templ)
     )
    )
   )

;; ADJ 6
  
  (W::GREAT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))   
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a solution good for him")
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (LF-PARENT ONT::good)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

;; ADJ 7
  (W::LITTLE
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("little%3:00:01"))
     (LF-PARENT ONT::little)
     (TEMPL LESS-ADJ-TEMPL)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::med))
     )
    )
   )

;; ADJ 8
 (W::OWN
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070323 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::own)
     (example "his own truck")
     (TEMPL own-TEMPL)
     )
    )
   )
  

;; ADJ 9
  (W::OTHER
   (SENSES
    ;;;;; ((LF-PARENT LF_IDENTITY-VAL) (TEMPL ADJ-SUBCAT-OBJECT-TEMPL (XP (% PP (PTYPE THAN)))))
    ;;;;; ((LF-PARENT LF_IDENTITY-VAL) (TEMPL attributive-only-adj-templ))
    ;;;; Myrosia 2003-11-04 added "comparative +" to make "the other three drugs" work

    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("other%3:00:00"))
     (LF-PARENT ONT::IDENTITY-VAL)
     (TEMPL adj-theme-templ)
     (SEM (F::GRADABILITY F::-))
     (SYNTAX (W::atype W::attributive-only) (W::comparative +))
     )
    )
   )

;; ADJ 10

    (W::OLD
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("old%5:00:00:preceding:00"))
     (LF-PARENT ONT::AGE-VAL)
     )
    )
   )

;; ADJ 11
 (W::RIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("right%3:00:02"))
     (LF-PARENT ONT::evaluation-VAL)
     (example "that's right")
     (templ adj-co-theme-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("right%5:00:00:appropriate:00"))
     (EXAMPLE "that's right for him")
     (LF-PARENT ONT::EVALUATION-VAL)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::For))))
     (SYNTAX (W::allow-deleted-comp -))
     )
    )
   )

;; ADJ 12
 (W::BIG
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("big%3:00:01"))
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

;; ADJ 13
 (W::high
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("high%3:00:01"))
     (EXAMPLE "a high mountain" "a five foot high building")
     (LF-PARENT ONT::SLIGHT)
     )
    ;;;;; we want to use the no-premod meaning first
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("high%3:00:01"))
;     (EXAMPLE "a 5 foot high building")
;     (LF-PARENT ONT::Linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98)
;     )
    ((EXAMPLE "I need a higher resolution")
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     (meta-data :origin boudreaux :entry-date 20031024 :change-date 20090731 :wn ("high%3:00:02") :comments nil)
     )
    )
   )

;; ADJ 14
  (W::DIFFERENT
   (wordfeats (w::allow-post-n1-subcat +))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments beetle2-pilots :wn ("different%3:00:00"))
     (EXAMPLE "They are different/ they are different from each other / a different state than the terminal 1")
     (LF-PARENT ONT::DIFFERENT)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE (? ptp W::FROM w::than)))))
     )
    )
   )

;; ADJ 15

  (W::SMALL
   (wordfeats (W::MORPH (:FORMS (-ER ))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("small%5:00:00:limited:00"))
     (LF-PARENT ONT::small)
     (TEMPL LESS-ADJ-TEMPL)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::med))
     )
    )
   )

;; ADJ 16
  (W::LARGE
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("large%3:00:00"))
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

;; ADJ 17

  (W::NEXT
   (wordfeats (W::COMP-OP W::LESS))
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (example "let's meet next monday")
     (meta-data :origin calo-ontology :entry-date 20060419 :change-date nil :wn ("next%5:00:00:succeeding(a):00") :comments nil)
     )
    )
   )

;; ADJ 18
 (W::EARLY
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("early%3:00:00"))
     (LF-PARENT ONT::SCHEDULED-TIME-MODIFIER)
     )
    )
   )

 (W::LATE
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("late%3:00:00"))
     (LF-PARENT ONT::SCHEDULED-TIME-MODIFIER)
     )
    )
   )

;; ADJ 19

  (W::YOUNG
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::AGE-VAL)
     )
    )
   )
  

;; ADJ 20
  (W::IMPORTANT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::primary)
     (TEMPL adj-purpose-optional-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    )
   )

;; ADJ 21
;; few -- quantifier

;; ADJ 22
 (W::public
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("public%3:00:00") :comments nil)
     (LF-PARENT ONT::status-val)
     )
    )
   )

;; ADJ 23
 (W::BAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00"))
     (example "a good book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a wall good for climbing")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::bad)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00") :comlex (ADJ-PP-FOR))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

;; ADJ 24
 (W::SAME
   (wordfeats (W::ALLOW-POST-N1-SUBCAT +))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("same%3:00:02"))
     (EXAMPLE "They are same [as John's]" "the same book as John's")
     (LF-PARENT ONT::SAME)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::AS))))
     )    
    ))   
  
  ((W::THE W::SAME)
   (SENSES
    ((EXAMPLE "They are the same [as John's]")
     (LF-PARENT ONT::IDENTITY-VAL)
     (LF-FORM W::SAME)
     (SYNTAX (w::atype w::predicative-only))
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::AS))))
     )
    ((EXAMPLE "I want a book the same as John's")
     (LF-PARENT ONT::IDENTITY-VAL)
     (LF-FORM W::SAME)
     (SYNTAX (w::atype w::postpositive) (w::allow-deleted-comp -))
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::AS))))
     )    
    ))
   

;; ADJ 25

  (w::able
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("able%5:00:00:competent:00" "able%3:00:00" "able%5:00:00:capable:00"))
     (EXAMPLE "He is able to do this")
     (LF-PARENT ONT::able)
     (SEM (F::GRADABILITY F::+))
     (TEMPL CENTRAL-ADJ-optional-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     )
    )
   )


;; ADJ 26
;; many -- quan

   (W::HOT
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("hot%3:00:01") :comments html-purchasing-corpus)
      (LF-PARENT ONT::WARM)
     )
    )
   )

 (W::COLD
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("cold%3:00:01") :comments html-purchasing-corpus)
      (LF-PARENT ONT::COLD)
      (TEMPL LESS-ADJ-TEMPL)
      )
     )
    )

 (W::warm
   (wordfeats (W::MORPH (:FORMS (-ER -ly))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060713 :change-date 20090731 :wn ("warm%3:00:01") :comments plow-req)
      (LF-PARENT ONT::WARM)
      (TEMPL LESS-ADJ-TEMPL)
      )
    ((meta-data :origin step :entry-date  20081027  :change-date nil :comments nil)
     (example "the atmosphere is warm / a warm atmosphere")
     (LF-PARENT ONT::social-interaction-VAL)
     (templ central-adj-templ)
     )
    )
   )

(W::real
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20090915 :wn ("real%5:00:00:true:00") :comments caloy2)
     (LF-PARENT ONT::actual)
     (example "coffee with real cream")
     )
    )
   )

 (W::LOW
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ;;;; need to differentiate between the two senses
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("low%3:00:01"))
     (EXAMPLE "a low ceiling")
     (LF-PARENT ONT::BROAD)
     )
    ((EXAMPLE "Give me lower resolution" "a low salt diet")
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     (meta-data :origin boudreaux :entry-date 20031024 :change-date 20090731 :wn ("low%3:00:02") :comments nil)
     )
    )
   )

 (W::SIMPLE
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090821 :wn ("simple%3:00:02" "simple%5:00:00:easy:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::easy)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("simple%3:00:02" "simple%5:00:00:easy:01"))
     (EXAMPLE "it's simple to do")
     (LF-PARENT ONT::easy)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )

   (W::SLOW
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("slow%3:00:01"))
     (LF-PARENT ONT::SPEED-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("slow%3:00:01"))
     (LF-PARENT ONT::event-duration-modifier)
     )
    )
   )

 (W::white
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("white%3:00:01:chromatic:00"))
     (LF-PARENT ONT::white)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )

  (W::black
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("black%3:00:01:chromatic:00"))
     (LF-PARENT ONT::black)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )

 (W::red
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("red%3:00:01:chromatic:00"))
     (LF-PARENT ONT::red)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::blue
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("blue%3:00:01:chromatic:00"))
     (LF-PARENT ONT::blue)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::brown
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("brown%3:00:01:chromatic:00"))
     (LF-PARENT ONT::brown)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   ) 
   (W::green
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("green%3:00:01:chromatic:00"))
     (LF-PARENT ONT::green)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
    (W::orange
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("orange%3:00:01:chromatic:00"))
     (LF-PARENT ONT::orange)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )

 (W::gold
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("gold%3:00:01:chromatic:00"))
     (LF-PARENT ONT::gold)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )

 (W::LIGHT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("light%3:00:01"))
     (LF-PARENT ONT::LIGHTWEIGHT)
     (TEMPL LESS-ADJ-TEMPL)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("light%3:00:05"))
     (LF-PARENT ONT::LIGHT-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
   (W::DARK
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("dark%3:00:01"))
     (LF-PARENT ONT::LIGHT-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

 (W::HEAVY
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("heavy%3:00:01"))
     (LF-PARENT ONT::heavy)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
     )
    )
   )

 (W::SURE
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((LF-PARENT ONT::CERTAIN)
      (example "the plan is sure to succeed")
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
      (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("sure%3:00:00") :comments caloy2)
      )
     ((LF-PARENT ONT::CERTAIN)
      (example "he is sure that he will win")
      (syntax (w::allow-deleted-comp -))
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
      (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("sure%3:00:00") :comments caloy2)
      )
     ((LF-PARENT ONT::CERTAIN)
      (example "he is sure what to do")
      (syntax (w::allow-deleted-comp -))
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::NP (w::sort w::wh-desc))))
      (meta-data :origin beeetle :entry-date 20081106 :change-date 20090731 :wn ("sure%3:00:00") :comments pilot4)
      )     
     )
    )

 (W::PLAIN
   (wordfeats (W::morph (:FORMS (-LY -ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("plain%5:00:00:obvious:00"))
     (LF-PARENT ONT::GRANULARITY-VAL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )


  (W::USUAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("usual%5:00:00:familiar:00" "usual%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "The usual suspects")
     (LF-PARENT ONT::COMMON)
     )
    )
   )

 (W::READY
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (EXAMPLE "it's ready")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (EXAMPLE "that's ready for him")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (EXAMPLE "he's ready to go")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )

 (W::FINE
   (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     )    
   ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

  (W::CERTAIN
   (SENSES
    ((lf-parent ont::specificity-val)
     (example "a certain number of results")
     )
    ((LF-PARENT ONT::CERTAIN)
     (example "the plan is certain to succeed")
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("certain%3:00:03") :comments caloy2)
     )
    ((LF-PARENT ONT::CERTAIN)
     (syntax (w::allow-deleted-comp -))
     (example "he is certain that he will win")
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
     (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("certain%3:00:02") :comments caloy2)
     )
    ((LF-PARENT ONT::CERTAIN)
     (example "he is certain what to do")
     (syntax (w::allow-deleted-comp -))
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::NP (w::sort w::wh-desc))))
     (meta-data :origin beeetle :entry-date 20081106 :change-date 20090731 :wn ("sure%3:00:00") :comments pilot4)
     (preference 0.98)
     )     
    )
   )
(W::FINAL
   (wordfeats (W::comp-op -) (w::morph (:forms (-ly))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("final%5:00:00:closing:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     )
    )
   )
 (W::QUICK
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("quick%5:00:00:active:01"))
     (LF-PARENT ONT::SPEEDY)
     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("quick%5:00:00:hurried:00"))
;     (LF-PARENT ONT::QUICK)
;     (TEMPL LESS-ADJ-TEMPL)
;     )
    )
   )

 (W::FREE
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (EXAMPLE "that's free [for him]")
     (LF-PARENT ONT::AVAILABLE)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("free%3:00:00"))
     (EXAMPLE "you're free to go")
     (LF-PARENT ONT::AVAILABLE)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((example "we have the second ambulance free")
     (LF-PARENT ONT::AVAILABLE)
     (SEM (F::GRADABILITY F::-))
     (TEMPL postpositive-adj-optional-xp-templ)
     (meta-data :origin monroe :entry-date 20050404 :change-date 20090731 :wn ("free%5:00:02:unoccupied:00") :comments s12)
     )
    ((meta-data :origin calo :entry-date 20060615 :change-date nil :wn ("free%5:00:00:unpaid:00") :comments pq)
     (LF-PARENT ONT::COST-val)
     (example "a free breakfast")
     (SEM (F::GRADABILITY F::+))
     )
    )
   )

 (W::strong
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20050216 :change-date 20090731 :wn ("strong%3:00:00") :comments caloy2)
      (LF-PARENT ONT::intense)
      (TEMPL central-ADJ-TEMPL)
      (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
      )
     )
    )
 (W::special
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("special%5:00:01:specific:00") :comments html-purchasing-corpus)
     (EXAMPLE "They are special")
     (LF-PARENT ONT::specialness-val)
     )
    )
   )

 (W::MAIN
;   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("main%5:00:00:important:00"))
     (LF-PARENT ONT::primary)
     )
    )
   )

 (W::ROUND
;   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("round%3:00:00"))
     (LF-PARENT ONT::SHAPE-val)
     )
    )
   )


(W::HARD
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "that's hard")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-cause-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (TEMPL adj-content-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "that's hard for him")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-cause-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (TEMPL adj-content-affected-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "it's hard to see him")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-action-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     (TEMPL adj-expletive-content-xp-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((meta-data :origin prehistoric :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "it's hard for me to see him")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-action-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     (TEMPL adj-expletive-content-control-TEMPL)
     )
    
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("hard%3:00:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Texture-val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

 (W::FAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("far%3:00:00"))
     (LF-PARENT ONT::REMOTE)
     (TEMPL ADJ-THEME-TEMPL)
     (example "not the near one, the far one")
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )

(W::LEFT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("left%5:00:00:unexhausted:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     (LF-FORM W::REMAINING)
     )
    )
   )

 (W::SHORT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("short%3:00:01"))
     (LF-PARENT ONT::BROAD)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("short%3:00:02"))
     (LF-PARENT ONT::event-duration-modifier)
     (example "a short meeting")
     (TEMPL LESS-ADJ-TEMPL)
     )
     ((meta-data :origin chf :entry-date 20070810 :change-date 20090731 :comments chf-dialogues)
      (LF-PARENT ONT::inadequate)
      (example "he is short of breath" "short of time")
      (TEMPL central-adj-xp-required-TEMPL (XP (% W::PP (W::Ptype (? pt w::on W::of)))))
     )
    )
   )

 (W::WHOLE
;;   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("whole%3:00:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )

 (W::BEST
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("best%3:00:00"))
     (LF-PARENT ONT::max-val)
     (lf-form w::good)
     (TEMPL SUPERL-TEMPL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )

    (W::BETTER
   (wordfeats (W::COMPARATIVE +) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("better%3:00:00"))
     (LF-PARENT ONT::MORE-VAL)
     (lf-form w::good)
     (TEMPL COMPAR-TEMPL)
     (SEM (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

 (W::FAST
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fast%3:00:01"))
     (LF-PARENT ONT::SPEEDY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fast%5:00:00:hurried:00"))
     (LF-PARENT ONT::QUICK)
     (example "a fast meeting")
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

 (W::FULL
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("full%3:00:00"))
     (LF-PARENT ONT::FULL)
     )
    )
   )

   (W::DEEP
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("deep%3:00:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::BROAD)
     (TEMPL LESS-ADJ-TEMPL)
     (example "a deep hole")
     )
    ((meta-data :origin cardiac :entry-date 20090130 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::intense)
     (TEMPL LESS-ADJ-TEMPL)
     (example "deep breathing")
     )
    )
   )

 (W::BUSY
;    (wordfeats (W::morph (:FORMS (-LY -ER))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date 20090731 :wn ("busy%3:00:00") :comments s11)
     (LF-PARENT ONT::active)
     )
    )
   )


(W::common
;    (wordfeats (W::morph (:FORMS (-LY -ER))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :comments nil)
     (LF-PARENT ONT::common)
     (TEMPL central-adj-templ)
     )
    )
   )

 (W::POSSIBLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("possible%3:00:00"))
     (EXAMPLE "that's possible [for him]")
     (LF-PARENT ONT::POSSIBLE)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("possible%3:00:00"))
     (EXAMPLE "it's possible to change it")
     (LF-PARENT ONT::POSSIBLE)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )

   (W::dry
;;   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     (LF-PARENT ONT::dampness-val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

))