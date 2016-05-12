(in-package :lxm)

(define-words :pos W::conj :boost-word t
 :words (
 (W::BUT
   (wordfeats (W::conj +))
   (SENSES
    ((LF W::BUT)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
     )
    )
   )
  
  (W::EXCEPT
   (wordfeats (W::conj +))
   (SENSES
    ((LF W::BUT)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
     )
    )
   )
  
  (W::AND
   (wordfeats (W::conj +) (W::seq +))
   (SENSES
    ((LF W::AND)
     (non-hierarchy-lf t) (TEMPL SUBCAT-ANY-TEMPL)
     (syntax (w::status w::definite-plural))
     )
    )
   )

 (W::OR
   (SENSES
    ((LF W::OR)
     (non-hierarchy-lf t)
     (TEMPL SUBCAT-DISJ-TEMPL)
     (SYNTAX (w::seq +) (status w::indefinite))
     )
    )
   )

  (W::BOTH
   (wordfeats (W::conj +) (W::seq +))
   (SENSES
    ((LF W::BOTH)
     (meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil)
     (non-hierarchy-lf t) (TEMPL SUBCAT-DOUBLE-CONJ-TEMPL)
     (SYNTAX (w::subcat2 w::and) (w::operator w::members) 
	     (w::status w::definite-plural) (w::agr w::3p)
	     (W::disj -) (w::conj +) (W::seq +)      
	     )
     )
    ))
  
  (W::either
   (wordfeats (W::disj +) (W::seq +))
   (SENSES
    ((LF W::EITHER)
     (meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil)
     (non-hierarchy-lf t) (TEMPL SUBCAT-DOUBLE-CONJ-TEMPL)
     (SYNTAX (w::subcat2 w::or) (w::operator w::one-of) 
	     (w::status w::indefinite) (w::agr ?agr)
	     (W::disj +) (w::conj -) (W::seq +)      
	     )
     )
    ))

  (W::neither
   (SENSES
    ((LF W::NEITHER)
     (meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil)
     (non-hierarchy-lf t) (TEMPL SUBCAT-DOUBLE-CONJ-TEMPL)
     (SYNTAX (w::subcat2 w::nor) (w::operator w::none-of) 
	     (w::status w::quantifier) (w::agr ?agr)
	     (W::disj +) (w::conj -) (W::seq +) (w::neg +)
	     )
     )
    )
   )


))


(define-words :pos W::art :boost-word t
 :words (
  (W::AN
   (SENSES
    ((LF W::INDEFINITE)
     (non-hierarchy-lf t)(TEMPL INDEFINITE-COUNTABLE-TEMPL)
     )
    )
   )
  (W::A
   (SENSES
    ((LF W::INDEFINITE)
     (non-hierarchy-lf t)(TEMPL INDEFINITE-COUNTABLE-TEMPL)
     )
    )
   )
  
  (W::THE
   (SENSES
    ((LF W::DEFINITE)
     (non-hierarchy-lf t)(TEMPL mass-agr-3s-TEMPL)
     )
    )
   )

  (W::THE
   (SENSES
    ((LF W::DEFINITE-PLURAL)
     (non-hierarchy-lf t)(TEMPL mass-agr-3p-TEMPL)
     )
    )
   )
   
  (W::TH^
   (SENSES
    ((LF W::DEFINITE)
     (non-hierarchy-lf t)(TEMPL mass-agr-TEMPL)
     )
    )
   )
  (W::THAT
   (wordfeats (W::agr W::3s) (W::diectic +))
   (SENSES
    ((LF W::DEFINITE)
     (non-hierarchy-lf t)(TEMPL MASS-agr-templ)
     )
    )
   )
  (W::THIS
   (wordfeats (W::agr W::3s) (W::diectic +))
   (SENSES
    ((LF W::DEFINITE)
     (non-hierarchy-lf t)(TEMPL mass-agr-TEMPL)
     )
    )
   )
  (W::THESE
   (wordfeats (W::agr W::3p) (W::diectic +) (W::mass (? mass W::COUNT W::BARE)))
   (SENSES
    ((LF W::DEFINITE-plural)
     (non-hierarchy-lf t)(TEMPL mass-agr-TEMPL)
     )
    )
   )
  (W::THOSE
   (wordfeats (W::agr W::3p) (W::diectic +) (W::mass (? mass W::COUNT W::BARE)))
   (SENSES
    ((LF W::DEFINITE-plural)
     (non-hierarchy-lf t)(TEMPL mass-agr-TEMPL)
     )
    )
   )
  (W::WHAT
   (SENSES
    ((LF W::WHAT)
     (non-hierarchy-lf t)(TEMPL wh-qtype-TEMPL)
     (SYNTAX (W::agr (? agr W::3s W::3p)))
     )
    )
   )
  (W::WHICH
   (SENSES
    ((LF W::WHICH)
     (non-hierarchy-lf t)(TEMPL wh-qtype-TEMPL)
     )
    )
   )
  (W::WHOSE
   (wordfeats (W::agr (? agr w::3s W::3p)) (W::mass (? mass W::COUNT W::MASS)))
   (SENSES
    ((LF W::whose)
     (example "whose dog did you see?" "whose water did you drink?")
     (non-hierarchy-lf t)(TEMPL wh-qtype-TEMPL)
     )
    )
   )
  ))


(define-words :pos W::quan :boost-word t
 :words (
 
;; ADJ 21
  (W::FEW
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    ((LF W::FEW)
     (non-hierarchy-lf t)(TEMPL quan-3p-templ)
     )
    )
   )


  (W::FEWER
   (wordfeats (W::status W::indefinite-plural) (W::negatable +) (W::comparative +) (W::Mass W::COUNT))
   (SENSES
    ((LF (:* ONT::QMODIFIER W::LESS)) ;; for some reason, LF-PARENT doesn't work here
     (example "fewer than seven" "fewer trucks than that" "fewer people" "fewer of the people" )
     (non-hierarchy-lf t)
     (TEMPL quan-than-comp)
     (SYNTAX (W::agr W::3p))
     )
    )
   )

 (W::another
   (wordfeats (W::status W::indefinite) (W::MASS W::COUNT) (W::negatable +))
   (SENSES
    ((LF W::more)
     (non-hierarchy-lf t)(TEMPL quan-sing-count-TEMPL)
     (SYNTAX (W::agr W::3s))
     )
    )
   )

  (W::enough
   (wordfeats (W::negatable +))
   (SENSES
    ((LF W::enough)
     (example "enough of the trucks")
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-templ) 
     (SYNTAX (W::agr (? agr w::3s W::3p)) (w::status w::indefinite-plural))
     )
    ((LF W::enough)
     (example "enough of the water")
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite)) ; -- never plural if mass
     )
    )
   )

  (W::HALF
   (wordfeats (W::status W::indefinite-plural) (W::negatable +) (W::NOsimple +) (W::NPmod +))
   (SENSES
    ((LF W::HALF)
     (non-hierarchy-lf t)(TEMPL quan-count-mass-TEMPL)
     (SYNTAX (W::agr (? agr W::3s W::3p)))
     )
    )
   )
  (W::NONE
   (wordfeats  (W::nosimple +))
   (SENSES
    ((LF W::NONE)
     (example "none of the trucks")
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-templ)
     (SYNTAX (W::agr (? agr W::3p)) (w::status w::indefinite-plural))
     )
    ((LF W::NONE)
     (example "none of the water")
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite)) ; -- never plural if mass
     )
    )
   )

  (W::MUCH
   (wordfeats (W::status W::indefinite) (W::negatable +) (W::AGR W::3s))
   (SENSES
    ((LF W::MUCH)
     (non-hierarchy-lf t)
     (example "there isn't much water")
     (TEMPL quan-mass-TEMPL)
     )
    ((LF W::MUCH)
     (non-hierarchy-lf t)
     (example "there isn't much pain")
     (TEMPL quan-bare-TEMPL)
     )
    ((LF W::MUCH)
     (non-hierarchy-lf t)
     (example "there isn't much of the truck left")
     (syntax (w::mass w::mass))
     (TEMPL quan-sing-sing-TEMPL)
     )
    )
   )

  (W::BOTH
   (wordfeats (W::QUANT 2) (W::status W::definite-plural) (W::NPmod +))
   (SENSES
    ((LF W::BOTH)
     (non-hierarchy-lf t)
     (example "both us and european voltage")
     (TEMPL quan-3p-templ)
     )
    )
   )

(W::SOME
   (wordfeats (W::negatable +))
   (SENSES
    ((LF W::SOME)   ;; the quantity interp of some, e.g., some trucks
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-templ)
     (SYNTAX (W::agr W::3p) (W::status W::indefinite-plural))   ;; must be plural if count
     )
    ((LF W::INDEFINITE)  ;; like "a" or "an", e.g., some man
     (non-hierarchy-lf t)
     (syntax (w::status w::indefinite))
     (TEMPL INDEFINITE-COUNTABLE-TEMPL)
     )
    ((LF W::SM) ;; mass sense of SOME, e.g., SOME WATER
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     (SYNTAX (w::status w::sm) (W::agr W::3s)) ; never plural if mass
     )
    )
   )
  

 (W::EACH
   (wordfeats (W::status W::quantifier) (W::mass W::count) (W::agr W::3s))
   (SENSES
    ((LF W::EACH)
     (non-hierarchy-lf t)(TEMPL quan-sing-count-TEMPL)
     )
    )
   )
  (W::ANY
   (wordfeats (W::status W::indefinite) (w::npmod +) (w::negatable +) (W::mass ?m) (W::agr (? agr W::3s W::3p)))
   (SENSES
    ((LF W::ANY)
     (non-hierarchy-lf t)(TEMPL quan-count-mass-TEMPL)
     )
    )
   )
  (W::ALL
   (wordfeats (W::status W::quantifier) (W::npmod +) (W::negatable +))
   (SENSES
    ((LF W::UNIVERSAL)
     (non-hierarchy-lf t)(TEMPL quan-count-mass-TEMPL)
     (SYNTAX (W::agr (? agr W::3s W::3p)))
     )
    )
   )

  (W::most
   (wordfeats (W::negatable +))
   (SENSES
    ((LF W::most)   ;; the quantity interp of most, e.g., most trucks
     (non-hierarchy-lf t)
     (TEMPL quan-cardinality-pl-templ)
     (syntax (w::status w::indefinite-plural))
     )
    ((LF W::MOST) ;; mass sense of most, e.g., most WATER
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite))
     )
    )
   )
  
  (W::MORE
   (wordfeats (W::status W::indefinite-plural) (W::negatable +) (W::comparative +) (W::Mass ?m))
   (SENSES
    ((LF (:* ONT::QMODIFIER W::MORE)) ;; for some reason, LF-PARENT doesn't work here
     (example "more than seven" "more trucks than that" "more people" "more of the people" "more than seven of the people")
     (non-hierarchy-lf t)(TEMPL quan-than-comp)
     (SYNTAX (W::agr (? ag w::3s W::3p))) ;; more than half can still be less than one
     )
    )
   )

   (W::LESS
   (wordfeats (W::status W::quantifier) (W::negatable +) (W::comparative +) (W::Mass ?m))
   (SENSES
    ((LF (:* ONT::QMODIFIER W::LESS)) ;; for some reason, LF-PARENT doesn't work here
     (example "less than seven" "less trucks than that" "less people" "less of the people" "less than seven of the people")
     (non-hierarchy-lf t)(TEMPL quan-than-comp)
     (SYNTAX (W::agr (? ag w::3s W::3p))) ;; can be singular -- less than one mile
     )
    )
   )

  (W::another
   (wordfeats (W::status W::indefinite) (W::MASS W::COUNT) (W::negatable +))
   (SENSES
    ((LF W::more)
     (non-hierarchy-lf t)(TEMPL quan-sing-count-TEMPL)
     (SYNTAX (W::agr W::3s))
     )
    )
   )

  (W::enough
   (wordfeats (W::negatable +))
   (SENSES
    ((LF W::enough)
     (example "enough of the trucks")
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-templ) 
     (SYNTAX (W::agr (? agr w::3s W::3p)) (w::status w::indefinite-plural))
     )
    ((LF W::enough)
     (example "enough of the water")
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite)) ; -- never plural if mass
     )
    )
   )

  (W::NO
   (wordfeats (W::NEG +) (W::AGR ?agr) (W::MASS ?m) (W::status W::quantifier))
   (SENSES
    ((LF W::NONE)
     (non-hierarchy-lf t)(TEMPL quan-no-bare-TEMPL)
     )
    )
   )
  
  (W::EVERY
   (wordfeats (W::agr W::3s) (W::mass W::count) (W::status W::quantifier) (W::negatable +))
   (SENSES
    ((LF W::EVERY)
     (non-hierarchy-lf t)(TEMPL quan-no-bare-TEMPL)
     )
    )
   )


))


(define-words :pos W::ORDINAL :boost-word t :templ ORDINAL-TEMPL
 :words (

;; ADJ 3
  (W::FIRST
   (SENSES
    ((LF (W::NTH 1))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a) (w::ntype w::day))
     )
    )
   )

))

(define-words :pos W::PREP :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::ABOUT
   (SENSES
    ((LF (W::ABOUT))
     (non-hierarchy-lf t))
    )
   )
   (W::Against
   (SENSES
    ((LF (W::against))
     (non-hierarchy-lf t))
    )
   )
   (W::Around
   (SENSES
    ((LF (W::against))
     (non-hierarchy-lf t))
    )
   )
  (W::AS
   (SENSES
    ((LF (W::AS))
     (non-hierarchy-lf t))
    )
   )
  (W::AT
   (SENSES
    ((LF (W::AT))
     (non-hierarchy-lf t))
    )
   )
   (W::under
   (SENSES
    ((LF (W::under))
     (non-hierarchy-lf t))
    )
   )
  (W::BETWEEN
   (SENSES
    ((LF (W::BETWEEN))
     (non-hierarchy-lf t))
    )
   )
  (W::BY
   (SENSES
    ((LF (W::BY))
     (non-hierarchy-lf t))
    )
   )
  (W::FOR
   (SENSES
    ((LF (W::FOR))
     (non-hierarchy-lf t))
    )
   )
  (W::FROM
   (SENSES
    ((LF (W::FROM))
     (non-hierarchy-lf t))
    )
   )
  (W::IN
   (SENSES
    ((LF (W::IN))
     (non-hierarchy-lf t))
    )
   )
  (W::INTO
   (SENSES
    ((LF (W::INTO))
     (non-hierarchy-lf t))
    )
   )
  (W::of
   (SENSES
    ((LF (W::OF))
     (non-hierarchy-lf t))
    )
   )
  (W::OFF
   (SENSES
    ((LF (W::OFF))
     (non-hierarchy-lf t))
    )
   )
  (W::ON
   (SENSES
    ((LF (W::ON))
     (non-hierarchy-lf t))
    )
   )
  (W::ONTO
   (SENSES
    ((LF (W::ONTO))
     (non-hierarchy-lf t))
    )
   )
  (W::OUT
   (SENSES
    ((LF (W::OUT))
     (non-hierarchy-lf t))
    )
   )
  (W::OVER
   (SENSES
    ((LF (W::OVER))
     (non-hierarchy-lf t))
    )
   )
  (W::per
   (SENSES
    ((LF (W::OVER))
     (non-hierarchy-lf t))
    )
   )
  (W::than
   (SENSES
    ((LF (W::THAN))
     (non-hierarchy-lf t))
    )
   )
  (W::TO
   (SENSES
    ((LF (W::TO))
     (non-hierarchy-lf t)
     (preference .98))
    )
   )
   (W::TOwards
   (SENSES
    ((LF (W::TOwards))
     (non-hierarchy-lf t))
    )
   )
  (W::UNTIL
   (SENSES
    ((LF (W::UNTIL))
     (non-hierarchy-lf t))
    )
   )
  (W::WITH
   (SENSES
    ((LF (W::WITH))
     (non-hierarchy-lf t))
    )
   )
  (W::WITHIN
   (SENSES
    ((LF (W::WITHIN))
     (non-hierarchy-lf t))
    )
   )
  (W::without
   (SENSES
    ((LF (W::WITHOUT))
     (non-hierarchy-lf t))
    )
   )
  (W::such
   (SENSES
    ((LF (W::such))
     (non-hierarchy-lf t))
    )
   )
  ))

(define-words :pos W::INFINITIVAL-TO :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::TO
   (SENSES
    ((LF W::INF-TO)
     (non-hierarchy-lf t))
    )
   )
  ))


(define-words :pos W::NUMBER-UNIT :boost-word t :templ NUMBER-UNIT-TEMPL
 :words (
  (W::hundred
   (SENSES
    ((LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 100))
     )
    )
   )
  (W::thousand
   (SENSES
    ((LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 1000))
     )
    )
   )
)
)

(define-words :pos W::UttWord :boost-word t :templ NO-FEATURES-TEMPL
:words (

 (W::yes
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )

 (W::NO
   (wordfeats (W::NEG +) (W::AGR ?agr) (W::MASS ?m) (W::status W::quantifier))
   (SENSES
    ((LF W::NONE)
     (non-hierarchy-lf t)(TEMPL quan-no-bare-TEMPL)
     )
    )
   )

 (W::OH
   (SENSES
    ((LF (W::oh))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )

 )
)
