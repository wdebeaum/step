
(in-package :lxm)

(define-words :pos W::conj :boost-word t
 :words (

;;;  (W::UNLESS
;;;    (SENSES
;;;    ((LF-PARENT ONT::neg-condition)
;;;     (LF-FORM W::unless)
;;;     (TEMPL SUBCAT-ANY-TEMPL)
;;;     )
;;;    )
;;;   )
;  (W::should
;    (SENSES
;     ((LF-PARENT ONT::pos-condition)
;     (LF-FORM W::if)
;     (TEMPL SUBCAT-S-TEMPL)
;     (example "Should Devito hire Browne the project would have three programmers")
;     (meta-data :origin csli-ts :entry-date 20070321 :change-date nil :comments nil)
;     )
;    )
;   )
;    (W::had
;    (SENSES
;     ((LF-PARENT ONT::pos-condition)
;     (LF-FORM W::if)
;     (TEMPL SUBCAT-S-past-TEMPL)
;     (example "Had Devito hired Browne the project would have three programmers")
;     (meta-data :origin csli-ts :entry-date 20070321 :change-date nil :comments nil)
;     )
;    )
;   )

;;;  (W::IF
;;;   (SENSES
;;;    ((LF-PARENT ONT::pos-condition)
;;;     (LF-FORM W::if)
;;;     (TEMPL SUBCAT-ANY-TEMPL)
;;;     )
;;;    )
;;;   )
;;;
;;;  ((W::EVEN W::IF)
;;;   (SENSES
;;;    ((LF-PARENT ONT::pos-condition)
;;;     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)     
;;;     (LF-FORM W::even-if)
;;;     (TEMPL SUBCAT-ANY-TEMPL)
;;;     )
;;;    )
;;;   )
;;;  
;;;  ((W::ONLY W::IF)
;;;   (SENSES
;;;    ((LF-PARENT ONT::pos-condition)
;;;     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)     
;;;     (LF-FORM W::only-if)
;;;     (TEMPL SUBCAT-ANY-TEMPL)
;;;     )
;;;    )
;;;   )

  ;; use adv sense
;  (W::WHEN
;    (SENSES
;    ((LF-PARENT ONT::time-condition)
;     (meta-data :origin calo :entry-date 20050202 :change-date nil :comments plan-modification)
;     (LF-FORM W::when)
;     (TEMPL SUBCAT-ANY-TEMPL)
;     )
;    )
;   )
    
;;;  ((W::AS W::LONG W::AS)
;;;    (SENSES
;;;     ((meta-data :origin calo :entry-date 20040827 :change-date nil :comments plan-modification)
;;;     (LF-PARENT ONT::pos-condition)
;;;     (LF-FORM W::if)
;;;     (TEMPL SUBCAT-ANY-TEMPL)
;;;     )
;;;    )
;;;   )
;;;  
;;; (w::whether
;;;    (SENSES
;;;     ((meta-data :origin plow :entry-date 20050909 :change-date nil :comments nil)
;;;     (LF-PARENT ONT::pos-condition)
;;;     (LF-FORM W::if)
;;;     (TEMPL SUBCAT-S-PP-TEMPL)
;;;     (example "check whether it's a book order")
;;;     )
;;;    )
;;;    )
;;; 
;;;  ((w::whether w::or w::not)
;;;    (SENSES
;;;     (
;;;      (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)     
;;;      (LF-PARENT ONT::pos-condition)
;;;      (LF-FORM W::if)
;;;      (TEMPL SUBCAT-S-PP-TEMPL)
;;;      (example "check whether or not it's a book order")
;;;      )
;;;     )
;;;    )

  ;; use adv sense
; (w::whenever
;    (SENSES
;     ((meta-data :origin plow :entry-date 20051004 :change-date nil :comments nil)
;     (LF-PARENT ONT::time-condition)
;     (LF-FORM W::if)
;     (TEMPL SUBCAT-S-PP-TEMPL)
;     (example "whenever you get an email, check whether it's a book order")
;     )
;    )
;   )
 
  (W::PLUS
   (wordfeats (W::conj +))
   (SENSES
    ((LF W::PLUS)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
     )
    ((LF W::AND)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
     (SYNTAX (W::seq +) (W::status W::definite-plural))
     )
    )
   )
  
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

  ; no longer a double subcat; handled by such-X-as-Y> rule in the grammar
;   (W::such
;   (SENSES
;    ((LF W::such)
;     (meta-data :origin ptb :entry-date 20100419 :change-date nil :comments nil)
;     (non-hierarchy-lf t) (TEMPL SUBCAT-DOUBLE-CONJ-TEMPL)
;     (SYNTAX (w::subcat2 w::as) (w::operator w::is-exemplar-of) 
;             (w::status w::definite) (w::agr ?agr)
;             (W::disj -) (w::conj -) (W::seq +) (w::neg -)
;             )
;     )
;    )
;   )

  
  ((W::AND W::then)
   (wordfeats (W::conj +))
   (SENSES
    ;;;I think we don't have SEQ +, since this can't conjoin NPs - need to check JFA 4/02
    ((LF W::AND)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
     (preference .98)
     )
    )
   )
  (W::^N
   (wordfeats (W::conj +))
   (SENSES
    ((LF W::AND)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
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

  (W::NOR
   (SENSES
    ((LF W::NOR)
     (non-hierarchy-lf t)
     (TEMPL SUBCAT-DISJ-TEMPL)
     (SYNTAX (w::subcat w::S) (w::operator w::none-of) (W::Neg +))
     (meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil)
     )
    )
   )
  
  (W::VERSUS
   (wordfeats (W::conj +))
   (SENSES
    ((LF W::VERSUS)
     (non-hierarchy-lf t)(TEMPL SUBCAT-ANY-TEMPL)
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

;;;  (W::ANOTHER
;;;   (SENSES
;;;    ((LF W::INDEFINITE)
;;;     (non-hierarchy-lf t)(TEMPL INDEFINITE-COUNTABLE-TEMPL)
;;;     )
;;;    )
;;;   )
  
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
  (W::EITHER
   (wordfeats (W::status W::quantifier) (W::MASS ?m) (W::AGR W::3s))
   (SENSES
    ((LF W::EITHER)
     (non-hierarchy-lf t)
     (TEMPL quan-sing-count-TEMPL)))
   )

  ;; Only is definitely a quantifier in "in circuit 1 only the bulb is in a closed path"
  (W::ONLY
   (wordfeats (W::status W::quantifier) (W::npmod +) (W::negatable +) (w::mass ?mass) (W::AGR (? agr W::3S W::3P)))
   (SENSES
    ((LF W::ONLY) 
     (non-hierarchy-lf t)(TEMPL quan-no-bare-templ)
     )
    )
   )   
  ))

(define-words :pos W::quan :boost-word t
 :words (
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
  (W::FEW
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    ((LF W::FEW)
     (non-hierarchy-lf t)(TEMPL quan-3p-templ)
     )
    )
   )

  ((W::A W::FEW)
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    ((LF W::A-FEW)
     (non-hierarchy-lf t)(TEMPL quan-3p-templ)
     )
    )
   )

  ((W::A W::couple)
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    ((LF W::A-FEW)
     (non-hierarchy-lf t)(TEMPL quan-3p-templ)
     )
    )
   )
  
  ((W::A W::HANDFUL)
   (wordfeats (W::status W::indefinite-plural)(W::NOsimple +) )
   (SENSES
    ((LF W::A-FEW)
     (non-hierarchy-lf t)(TEMPL quan-3p-templ)
     )
    )
   )
  
  (W::LITTLE
   (wordfeats (W::status W::indefinite)(W::AGR W::3s))
   (SENSES
    ((LF W::LITTLE)
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     )
    ((LF W::LITTLE)
     (non-hierarchy-lf t)(TEMPL quan-bare-TEMPL)
     )  
   ((LF W::LITTLE)
     (non-hierarchy-lf t)
     (example "there is little of the truck left")
     (TEMPL quan-sing-sing-TEMPL)
     )
   )
   )
  
  ((W::A W::LITTLE)
   (wordfeats (W::status W::indefinite)(W::AGR W::3s))
   (SENSES
    ((LF W::A-LITTLE)
     (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
     (example "a little water")
      )
     ((LF W::A-LITTLE)
     (non-hierarchy-lf t)(TEMPL quan-bare-TEMPL)     
     )
   ((LF W::A-LITTLE)
     (non-hierarchy-lf t)
     (example "there is a little of the truck left")
     (TEMPL quan-sing-sing-TEMPL)
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
  
  ((W::EVERY W::OTHER)
   (wordfeats (W::agr W::3s) (W::mass W::count) (W::status W::quantifier) (W::negatable +))
   (SENSES
    ((LF W::EVERY)
     (non-hierarchy-lf t)(TEMPL quan-no-bare-TEMPL)
     )
    )
   )

  (W::PLENTY
   (wordfeats (W::negatable +) (W::NOsimple +))
   (SENSES
    ((LF W::PLENTY)
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-TEMPL)
     (SYNTAX (W::agr W::3p) (w::status w::indefinite-plural))
     )
    )
   )

  ((W::A W::good w::deal)
    (wordfeats (W::negatable +) (W::NOsimple +))
    (SENSES
     ((LF W::PLENTY)
      (example "a good deal of people")
      (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-TEMPL)
      (SYNTAX (W::agr W::3p) (w::status w::indefinite-plural))
      )
     ((LF W::PLENTY)
      (example "a good deal of water")
      (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
      (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite))
      )
     )
    )
  
   ((W::A W::great w::deal)
    (wordfeats (W::negatable +) (W::NOsimple +))
    (SENSES
     ((LF W::PLENTY)
      (example "a great deal of people")
      (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-TEMPL)
      (SYNTAX (W::agr W::3p) (w::status w::indefinite-plural))
      (W::status W::indefinite-plural)
      )
     ((LF W::PLENTY)
      (example "a great deal of water")
      (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
      (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite))
      )
     )
    )
  
  ((W::A W::bit)
    (wordfeats (W::status W::indefinite) (W::negatable +) (W::NOsimple +))
    (SENSES
     ((LF W::a-bit)
      (example "a bit of sand")
      (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
      (SYNTAX (W::agr W::3p))
      )
     )
    )
  
   ((W::A W::LOT)
    (wordfeats (W::negatable +) (W::NOsimple +))
    (SENSES
     ((LF W::PLENTY)
      (example "alot of water")
      (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
      (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite))
       )
     ((LF W::PLENTY)
      (example "a lot of people")
      (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-TEMPL)
      (SYNTAX (W::agr W::3p) (w::status w::indefinite-plural))
      )
     )
    )
 
   (w::alot
    (wordfeats (W::negatable +) (W::NOsimple +))
    (SENSES
     ((LF W::PLENTY)
      (example "alot of water")
      (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
      (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite))
      )
     ((LF W::PLENTY)
      (example "alot of people")
      (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-TEMPL)
      (SYNTAX (W::agr W::3p) (w::status w::indefinite-plural))
      )
     )
    )

     (w::lots
    (wordfeats (W::negatable +) (W::NOsimple +))
    (SENSES
     ((LF W::PLENTY)
      (example "lots of water")
      (non-hierarchy-lf t)(TEMPL quan-mass-TEMPL)
      (SYNTAX (W::agr (? agr W::3s)) (w::status w::indefinite))
      )
     ((LF W::PLENTY)
      (example "lots of people")
       (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-TEMPL)
      (SYNTAX (W::agr W::3p) (w::status w::indefinite-plural))
      )
     )
    )

  (W::numerous
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    ((LF W::SEVERAL)
     (non-hierarchy-lf t) (TEMPL quan-cardinality-pl-templ)
     (meta-data :origin step :entry-date 20080703 :change-date nil :comments nil)
     )
    )
   )
  (W::SEVERAL
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    ((LF W::SEVERAL)
     (non-hierarchy-lf t) (TEMPL quan-cardinality-pl-templ)
     )
    )
   )
  (W::VARIOUS
   (wordfeats (W::status W::indefinite-plural))
   (SENSES
    (
     (meta-data :origin monroe :entry-date 20031223 :change-date nil :comments s7)
     (LF W::SEVERAL)
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-templ)
     )
    )
   )

  (W::MANY
   (wordfeats (W::status W::indefinite-plural) (W::negatable +))
   (SENSES
    ((LF W::MANY)
     (non-hierarchy-lf t)(TEMPL quan-cardinality-pl-templ)
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
  
  ((W::A W::CERTAIN)
   (wordfeats (W::status W::indefinite) (W::negatable +))
   (SENSES
    ((LF W::INDEFINITE)  ;; a certain man == some man
     (non-hierarchy-lf t)
     (TEMPL INDEFINITE-COUNTABLE-TEMPL)
    ))
   )
 ))

(define-list-of-words :pos W::fp :boost-word t
  :senses (
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ;;;;
   ;;;; myrosia and swift 03/20&21/02
   ;;;; move these from grammar (fnword-lex.lisp) to lexicon
   ;;;;
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ((LF ONT::FILLED-PAUSE)
    (non-hierarchy-lf t)(TEMPL fp-templ)
    )
   )
 :words (
  W::UM W::AH W::AHH W::EH W::UH W::HMM W::MMM W::ER w::em W::<SIL> W::<GAP>
  W::<LIPSMACK> w::<BREATH> w::<pause> w::ugh))

;; is this still used?
;(define-list-of-words :pos W::cv :boost-word t
;  :senses (((LF W::CV)
;    (non-hierarchy-lf t)(TEMPL no-features-templ)
;    )
;   )
; :words (W::IF)
; )

(define-list-of-words :pos W::cv :boost-word t
  :senses (((LF W::IDENTITY)
    (non-hierarchy-lf t)(TEMPL no-features-templ)
    )
   )
 :words (
  W::ELSE))

;; VP negation e.g. he isn't going to the party
(define-list-of-words :pos W::neg
  :senses (((LF W::NEG)
    (non-hierarchy-lf t)(TEMPL no-features-templ)
    )
   )
 :words (
  W::NOT W::N^T))

(define-words :pos W::cv :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::o^clock
   (SENSES
    ((LF W::OCLOCK)
     (non-hierarchy-lf t))
    )
   )
  ))

(define-words :pos W::^s :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::^S
   (SENSES
    ((LF W::^S)
     (non-hierarchy-lf t))
    )
   )
  ))

(define-words :pos W::^ :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::^
   (SENSES
    ((LF W::^)
     (non-hierarchy-lf t))
    )
   )
  ))

(define-words :pos W::^o :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::^o
   (SENSES
    ((LF W::^O)
     (non-hierarchy-lf t))
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
  (W::K
   (SENSES
    ( (meta-data :origin calo :entry-date 20040414 :change-date nil :comments y1v7)
     (LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 1000))

     )
    )
   )
  (W::million
   (SENSES
    ((LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 1000000))
     )
    )
   )
  (W::billion
   (SENSES
    ((LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 100000000))
     )
    )
   )
  (W::trillion
   (SENSES
    ((LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 1000000000))
     )
    )
   )
  (W::dozen
   (SENSES
    ((LF-PARENT ONT::NUMBER-UNIT)
     (SYNTAX (W::VAL 12))
     )
    )
   )
  ))

(define-words :pos W::UttWord :boost-word t :templ NO-FEATURES-TEMPL
:words (
;  ((W::all W::right)
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;  
  ;; handle these as sa_evaluate, by grammar rule
;  ((W::fine)
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;  ((W::good)
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;  (W::ALRIGHT
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
   (W::ALRIGHTY
   (SENSES
    ((LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
;  (W::KAY
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;   (W::MMKAY
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;  (W::OKAY
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;  (W::OK
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
;  ((W::o.k.)
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
  ((W::that w::will w::do)
   (SENSES
    ( (meta-data :origin calo :entry-date 20040412 :change-date nil :comments y1v4)
     (LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  ((W::that w::^ll w::do)
   (SENSES
    ( (meta-data :origin calo :entry-date 20040414 :change-date nil :comments y1v4)
     (LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  ((W::roger w::that)
   (SENSES
    ( (meta-data :origin calo :entry-date 20040412 :change-date nil :comments y1v7)
     (LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  (W::roger
   (SENSES
    ((meta-data :origin coord-ops :entry-date 20070418 :change-date nil :comments nil)
     (LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
;  (W::RIGHT
;   (SENSES
;    ((LF (W::OK))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
;     )
;    )
;   )
  (W::SURE
   (SENSES
    ((LF (W::SURE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  (W::yes
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  ((W::yes W::indeed)
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::yep
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::uh-huh
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (meta-data :origin calo :entry-date 20041119 :change-date nil :comments caloy2)
     )
    )
   )
  (W::mm-hm
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (meta-data :origin calo :entry-date 20041119 :change-date nil :comments caloy2)
     )
    )
   )
  (W::yup
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s11)
     (LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::yeah
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  ((W::yeah W::yeah)
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
   ((W::you W::bet)
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
   ((W::you W::betcha)
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  (W::INDEED
   (SENSES
    ((LF (W::POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  ((W::good W::job)
   (SENSES
    ((LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  ((W::good W::work)
   (SENSES
    ((LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  ((W::nice W::work)
   (SENSES
    ((LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  ((W::well W::done)
   (SENSES
    ((LF (W::OK))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CONFIRM))
     )
    )
   )
  (W::mmhmm
   (SENSES
    ((LF (W::mmhm))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )
   (W::mhmm
   (SENSES
    ((LF (W::mmhm))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )
   (W::mmhm
   (SENSES
    ((LF (W::mmhm))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )
   (W::mhm
   (SENSES
    ((LF (W::mmhm))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )
  ((W::mm W::hm)
   (SENSES
    ((LF (W::mmhm))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )
  ((W::uh W::huh)
   (SENSES
    ((LF (W::uhhuh))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
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
  ((W::I W::see)
   (SENSES
    ((LF (W::i-see))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     (preference .97)
     )
    )
   )
  ((W::gotcha)
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s3)
     (LF (W::gotya))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_ACK))
     )
    )
   )
   (W::HMM
   (SENSES
    ((LF (W::um))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EVALUATION))
     )
    )
   )
  (W::NO
   (SENSES
    ((LF (W::NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )

  (W::nope
   (SENSES
    ((LF (W::NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::nah
   (SENSES
    ((LF (W::NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::oops
   (SENSES
    ((LF (W::OOPS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  (W::whoops
   (SENSES
    ((LF (W::OOPS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  ((W::never W::mind)
   (SENSES
    ((LF (W::NEVER-MIND))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  ((W::no W::way)
   (SENSES
    ((LF (W::NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  ((W::no W::thanks)
   (SENSES
    ((LF (W::NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  ((W::not W::on W::your W::life)
   (SENSES
    ((LF (W::NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  ((W::I W::think W::not)
   (SENSES
    ((LF (W::UNSURE-NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  ((W::forget W::it)
   (SENSES
    ((LF (W::FORGET-IT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  ((W::forget W::that)
   (SENSES
    ((LF (W::FORGET-IT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  ((W::cancel W::it)
   (SENSES
    ((LF (W::FORGET-IT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  ((W::cancel W::that)
   (SENSES
    ((LF (W::FORGET-IT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  ((W::forget W::about W::it)
   (SENSES
    ((LF (W::FORGET-IT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_REJECT))
     )
    )
   )
  (W::MAYBE
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::perhaps
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )
  (W::lessee
   (SENSES
    ((LF (W::LET-SEE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EVALUATION))
     )
    )
   )
  ((W::let W::me W::see)
   (SENSES
    ((LF (W::LET-SEE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EVALUATION))
     (preference .97)
     )
    )
   )
   ((W::lemme W::see)
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s3)
     (LF (W::LET-SEE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EVALUATION))
     )
    )
   )
   ;; changed - we know expand the contraction ^s to US
  ((W::let W::us W::see)
   (SENSES
    ((LF (W::LET-SEE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EVALUATION))
     )
    )
   )
  ((W::I W::think W::so)
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )

   ((W::I w::do w::n^t W::think W::so)
   (SENSES
    ((LF (W::UNSURE-NEG))
     (meta-data :origin cardiac :entry-date 20080814 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  ;; added here for now until they are handled compositionally
   ((W::I W::believe W::so)
   (SENSES
    ((LF (W::UNSURE-POS))
     (meta-data :origin cardiac :entry-date 20080814 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     )
    )
   )

   ((W::I w::do w::n^t W::believe W::so)
   (SENSES
    ((LF (W::UNSURE-NEG))
     (meta-data :origin cardiac :entry-date 20080814 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  
   ((W::not w::that w::I W::know W::of)
   (SENSES
    ((LF (W::UNSURE-NEG))
     (meta-data :origin cardiac :entry-date 20080814 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
   ((W::not w::that w::I w::^m W::aware W::of)
   (SENSES
    ((LF (W::UNSURE-NEG))
     (meta-data :origin cardiac :entry-date 20080814 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  ;; handle this compositionally -- no problem(s) here/there; with that/this, etc. 
;  ((W::no W::problem)
;   (SENSES
;    ((LF (W::CONFIRM))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EVALUATION))
;     )
;    )
;   )
  ((W::I W::guess W::not)
   (SENSES
    ((LF (W::UNSURE-NEG))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  ((W::I W::guess W::so)
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  ((W::I W::guess)
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
    ((W::I W::suppose W::so)
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  ((W::I W::suppose)
   (SENSES
    ((LF (W::UNSURE-POS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_RESPONSE))
     (preference .97)
     )
    )
   )
  (W::hello
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::hello W::there)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
   ((W::hey W::there)
    (meta-data :origin asma :entry-date 20111020 :change-date nil :comments nil)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  (W::hi
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  (W::hey
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    ((LF (W::HELLO))
     (meta-data :origin asma :entry-date 20111020 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::hi W::there)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::welcome W::back)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::good W::morning)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::good W::afternoon)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::good W::evening)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  ((W::good W::day)
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  (W::greetings
   (SENSES
    ((LF (W::HELLO))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  (W::goodbye
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
   ((W::laugh w::out w::loud)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_expressive))
     )
    )
   )
   ((W::see w::you)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
   ((W::that w::is w::all w::for w::now)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
   ((W::keep w::in w::touch)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
   ((W::stay w::in w::touch)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
   ((W::have w::a w::good w::night)
   (SENSES
    ((LF (W::GOODBYE))
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
  ((W::good W::night)
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GREET))
     )
    )
   )
  (W::bye
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
  (W::ciao
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
  ((W::hasta W::luego)
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
  ((W::so W::long)
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
  ((W::gotta W::go)
   (SENSES
    ((LF (W::GOODBYE))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
     )
    )
   )
;  (W::FINISHED
;   (SENSES
;    ((LF (W::AM-DONE))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
;     )
;    )
;   )
;  (W::DONE
;   (SENSES
;    ((LF (W::AM-DONE))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_CLOSE))
;     )
;    )
;   )
  ((W::just W::a W::second)
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     (preference .98)
     )
    )
   )
  ((W::just W::a W::sec)
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     (preference .98)
     )
    )
   )
  ((W::just W::a W::minute)
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     (preference .98)
     )
    )
   )
  ((W::hold W::on)
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     )
    )
   )
  ((W::hold W::on W::a W::minute)
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     )
    )
   )
  ((W::hold W::on W::a W::second)
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     )
    )
   )
  (W::SO
   (SENSES
    ((LF (W::WAIT))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_DISCOURSE-MANAGE))
     ;; beetle fix -- do not use "so" in this sense unless it's stand-alone
     ;; if it is joined with something, it really should work as a regular adverbial
     (preference 0.9)
     )
    )
   )
  (W::ta
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  ((W::thank W::you)
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  ((W::thank W::you W::very W::much)
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  (W::thanks
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  ((W::thanks W::a W::lot)
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  ((W::thanks W::alot)
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  ((W::thanks W::very W::much)
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  (W::PLEASE
   (SENSES
    ((LF (W::THANKS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_THANK))
     )
    )
   )
  ((W::you W::^re W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
      )
    )
   )
  ((W::you W::^re W::very W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
     )
    )
   )
  ((W::you W::^re W::so W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
      )
    )
   )
  ((W::you W::are W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
     )
    )
   )
  ((W::you W::are W::very W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
     (preference .97) ;; don't compete with pronoun 'you'
     )
    )
   )
  ((W::you W::are W::most W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
     (preference .97) ;; don't compete with pronoun 'you'
     )
    )
   )
  ((W::you W::are W::so W::welcome)
   (SENSES
    ((LF (W::WELCOME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
     (preference .97) ;; don't compete with pronoun 'you'
     )
    )
   )
;  ((W::not W::at W::all)
;   (SENSES
;    ((LF (W::WELCOME))
;     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_WELCOME))
;     )
;    )
;   )
  (W::phew
   (SENSES
    ((LF (W::RELIEF))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  (W::whew
   (SENSES
    ((LF (W::RELIEF))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  (W::wow
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  (W::ooh
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  (W::a-ha
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  (W::yo
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  (W::uh-oh
   (SENSES
    ((LF (W::OOPS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  ((W::I W::^m W::sorry)
   (SENSES
    ((LF (W::SORRY))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_APOLOGIZE))
     (preference .97) ;; don't compete with pronoun
     )
    )
   )
  ((W::I W::apologize)
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s7)
     (LF (W::SORRY))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_APOLOGIZE))
     (preference .97)
     )
    )
   )
  (W::sorry
   (SENSES
    ((LF (W::SORRY))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_APOLOGIZE))
     )
    )
   )
  ((W::excuse W::me)
   (SENSES
    ((LF (W::EXCUSE-ME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_NOLO-COMPRENDEZ))
     )
    )
   )
  ((W::pardon W::me)
   (SENSES
    ((LF (W::EXCUSE-ME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_NOLO-COMPRENDEZ))
     )
    )
   )
  (W::pardon
   (SENSES
    ((LF (W::EXCUSE-ME))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_NOLO-COMPRENDEZ))
     )
    )
   )
  (W::HUH
   (SENSES
    ((LF (W::HUH))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_NOLO-COMPRENDEZ))
     )
    )
   )
  ((w::say W::again)
   (SENSES
    ((LF (W::HUH))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_NOLO-COMPRENDEZ))
     (preference .97) 
     )
    )
   )
  ((W::computer W::online)
   (SENSES
    ((LF (W::online))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GO-ONLINE))
     (PREFERENCE .98)
     )
    )
   )
  ((W::computer W::offline)
   (SENSES
    ((LF (W::offline))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_GO-OFFLINE))
     (PREFERENCE .98)
     )
    )
   )
   ((W::ouch)
   (SENSES
    ((LF (W::OUCH))
     (meta-data :origin calo :entry-date 20040414 :change-date nil :comments caloy1v7)
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  ((W::oh W::my W::goodness)
   (SENSES
    ((LF (W::OH-MY-GOODNESS))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     (preference .97) 
     )
    )
   )
  ((W::oh W::my W::god)
   (SENSES
    ((LF (W::OH-MY-GOD))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     (preference .97) 
     )
    )
   )
  ((W::what W::the W::hell)
   (SENSES
    ((LF (W::WHAT-THE-HELL))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     (preference .97) ;; don't compete with 'what'
     )
    )
   )
   ;; added for CAET
   ((W::here w::goes)
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
     ))
  ((W::here w::we w::go)
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    ))
   ((W::here w::you w::go)
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
   ((W::there w::you w::go)
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  ((W::there w::we w::go)
   (SENSES
    ((LF (W::ATTENTION))
     (non-hierarchy-lf t)(SYNTAX (W::SA ONT::SA_EXPRESSIVE))
     )
    )
   )
  ))

(define-words :pos W::ORDINAL :boost-word t :templ ORDINAL-TEMPL
 :words (
  (W::initial
   (SENSES
    ((LF (W::NTH 1))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a))
     )
    )
   )
  (W::FIRST
   (SENSES
    ((LF (W::NTH 1))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a) (w::ntype w::day))
     )
    )
   )
  (W::SECOND
   (SENSES
    ((LF (W::NTH 2))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
  (W::third
   (SENSES
    ((LF (W::NTH 3))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype (? nt w::fraction w::day)))
     )
    )
   )
  (W::fourth
   (SENSES
    ((LF (W::NTH 4))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::fifth
   (SENSES
    ((LF (W::NTH 5))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::sixth
   (SENSES
    ((LF (W::NTH 6))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::seventh
   (SENSES
    ((LF (W::NTH 7))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::eighth
   (SENSES
    ((LF (W::NTH 8))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::ninth
   (SENSES
    ((LF (W::NTH 9))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::tenth
   (SENSES
    ((LF (W::NTH 10))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::eleventh
   (SENSES
    ((LF (W::NTH 11))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::twelfth
   (SENSES
    ((LF (W::NTH 12))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::thirteenth
   (SENSES
    ((LF (W::NTH 13))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::fourteenth
   (SENSES
    ((LF (W::NTH 14))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::fifteenth
   (SENSES
    ((LF (W::NTH 15))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::sixteenth
   (SENSES
    ((LF (W::NTH 16))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::seventeenth
   (SENSES
    ((LF (W::NTH 17))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::eighteenth
   (SENSES
    ((LF (W::NTH 18))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::nineteenth
   (SENSES
    ((LF (W::NTH 19))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
  (W::twentieth
   (SENSES
    ((LF (W::NTH 20))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
   ((W::twenty w::first)
   (SENSES
    ((LF (W::NTH 21))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::second)
   (SENSES
    ((LF (W::NTH 22))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::third)
   (SENSES
    ((LF (W::NTH 23))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::fourth)
   (SENSES
    ((LF (W::NTH 24))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::fifth)
   (SENSES
    ((LF (W::NTH 25))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::sixth)
   (SENSES
    ((LF (W::NTH 26))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::seventh)
   (SENSES
    ((LF (W::NTH 27))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::eighth)
   (SENSES
    ((LF (W::NTH 28))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
   ((W::twenty w::ninth)
   (SENSES
    ((LF (W::NTH 29))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
  (W::thirtieth
   (SENSES
    ((LF (W::NTH 30))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype(? nt w::fraction w::day)))
     )
    )
   )
   ((W::thirty w::first)
   (SENSES
    ((LF (W::NTH 31))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::day))
     )
    )
   )
  (W::fortieth
   (SENSES
    ((LF (W::NTH 40))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::fiftieth
   (SENSES
    ((LF (W::NTH 50))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::sixtieth
   (SENSES
    ((LF (W::NTH 60))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::seventieth
   (SENSES
    ((LF (W::NTH 70))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::eightieth
   (SENSES
    ((LF (W::NTH 80))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::ninetieth
   (SENSES
    ((LF (W::NTH 90))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::hundredth
   (SENSES
    ((LF (W::NTH 100))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::thousandth
   (SENSES
    ((LF (W::NTH 1000))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
   (W::millionth
   (SENSES
    ((LF (W::NTH 1000000))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::billionth
   (SENSES
    ((LF (W::NTH 1000000000))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::HALF
   (SENSES
    ((LF (W::NTH 2))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::quarter
   (SENSES
    ((LF (W::NTH 4))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a)(w::ntype w::fraction))
     )
    )
   )
  (W::NEXT
   (SENSES
    ((LF (W::NEXT))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a))
     )
    )
   )
  (W::LAST
   (SENSES
    ((LF (W::LAST))
     (non-hierarchy-lf t)(SYNTAX (W::agr ?a))
     (preference .96) ;prefer compound last name for plot
     )
    )
   )
  ))

(define-words :pos W::punc :boost-word t :templ NO-FEATURES-TEMPL
 :words (
  (W::punc-comma
   (SENSES
    ((LF (W::COMMA))
     ;; beetle-fix: allow comma skipping to simplify parsing 09/08/06
     ;;     (syntax (w::skip +))
     (non-hierarchy-lf t))
    )
   )
  (W::punc-period
   (SENSES
    ((LF (W::PERIOD))
     (non-hierarchy-lf t)(SYNTAX (W::punctype (? x W::decl W::decimalpoint)))
     )
    )
   )

  ((W::punc-period W::punc-period w::punc-period)
   (SENSES
    ((LF (W::ELLIPSES))
     (non-hierarchy-lf t)(SYNTAX (W::punctype (? x W::decl W::decimalpoint)))
     )
    )
   )
   
  (W::punc-question-mark
   (SENSES
    ((LF (W::QUESTION-MARK))
     (non-hierarchy-lf t)(SYNTAX (W::punctype (? x W::ynq W::whq)))
     )
    )
   )
  (W::punc-exclamation-mark
   (SENSES
    ((LF (W::EXCLAMATION-MARK))
     (non-hierarchy-lf t)(SYNTAX (W::punctype (? x W::decl W::imp)))
     )
    )
   )
  (W::end-of-utterance
   (SENSES
    ((LF (W::end-of-utterance))
     (non-hierarchy-lf t))
    )
   )
  (W::punc-start-of-utterance
   (SENSES
    ((LF (W::start-of-utterance))
     (non-hierarchy-lf t))
    )
   )
  (W::end-of-mouse
   (SENSES
    ((LF (W::end-of-mouse))
     (non-hierarchy-lf t))
    )
   )
  (W::punc-colon
   (SENSES
    ((LF (W::COLON))
     (syntax (w::skip +))
     (non-hierarchy-lf t))
    )
   )
  (W::punc-semicolon
   (SENSES
    ((LF (W::SEMICOLON))
     (syntax (w::skip +))
     (non-hierarchy-lf t))
    )
   )
  (W::under-bar
   (SENSES
    ((LF (W::UNDER-BAR))
     (syntax (w::skip +))
     (non-hierarchy-lf t))
    )
   )
  
  (W::punc-ordinal
   (SENSES
    ((LF (W::ORDINAL))
     (non-hierarchy-lf t))
    )
   )
  (W::POINT
   (SENSES
    ((LF (W::DECIMAL-POINT))
     (non-hierarchy-lf t)(SYNTAX (W::punctype W::decimalpoint))
     )
    )
   )
  ;; for fractions
  (W::slash
   (SENSES
    ((LF (W::SLASH))
     (non-hierarchy-lf t)(SYNTAX (W::punctype W::decimalpoint))
     )
    )
   )
  (W::punc-slash
   (SENSES
    ((LF (W::SLASH))
     (non-hierarchy-lf t)(SYNTAX (W::punctype W::decimalpoint))
     )
    )
   )
   (W::start-paren
   (SENSES
    ((LF (W::start-paren))
     (non-hierarchy-lf t))
      )
   )
    (W::end-paren
   (SENSES
    ((LF (W::end-paren))
     (non-hierarchy-lf t))
      )
   )
     (W::start-square-paren
   (SENSES
    ((LF (W::start-paren))
     (non-hierarchy-lf t))
      )
   )
    (W::end-square-paren
   (SENSES
    ((LF (W::end-paren))
     (non-hierarchy-lf t))
      )
   )
    ;; this is in the grammar?
  #||(W::dollar-sign
   (SENSES
    ((LF (W::dollar
     (non-hierarchy-lf t))
      )
   )||#

   (W::vertical-bar
   (SENSES
    ((LF (W::vertical-bar))
     (non-hierarchy-lf t))
      )
   )
  (W::punc-plus
   (SENSES
    ((LF (W::PLUS))
     (non-hierarchy-lf t))
    )
   )
  
  (W::punc-minus
   (SENSES
    ((LF (W::MINUS))
     (syntax (w::skip +))   ;; minus is commonly a hyphen, which is not handled well in the grammar
     (non-hierarchy-lf t))
    )
   )

   (W::punc-times
   (SENSES
    ((LF (W::MULTIPLY))
     (non-hierarchy-lf t))
    )
   )

   (W::punc-quotemark
   (SENSES
    ((LF (W::QUOTE))
     (non-hierarchy-lf t))
    )
   )

   (W::punc-tilde
   (SENSES
    ((LF (W::TILDE))
     (non-hierarchy-lf t))
    )
   )
  ))

