
(in-package :lxm)

;; This group has various non-disc-pre adverbials
(define-words :pos W::adv :templ DISC-PRE-TEMPL
 :words (
  (W::per
   (SENSES
     ((EXAMPLE "gasoline sells for three dollars per gallon")
     (LF-PARENT ONT::iteration-period)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     (templ binary-constraint-s-templ)
     )
    )
   )

 
   (W::estimated
   (SENSES
    ((meta-data :origin step :entry-date 20080528 :change-date nil :comments nil)
     (LF-PARENT ONT::qmodifier)
     (example "an estimated 600000 windmills")
     (templ number-operator-templ)
     )
    )
   )
   
   ;; MD 2008/06/09 FIXME -- should this really be disc-templ? Smth else?
  (W::OH
   (SENSES
    ((LF-PARENT ONT::SpeakerStatus)
     (TEMPL disc-templ)
     )
    )
   )

  (W::poorly
   (SENSES
  ;  ((LF-PARENT ONT::acceptability-val)
  ;   (TEMPL PRED-S-POST-TEMPL)
  ;   (example "he is tolerating activity poorly")
  ;   (meta-data :origin cardiac :entry-date 20090325 :change-date 20120305 :comments asma)
  ;   )
    ((LF-PARENT ONT::acceptability-val)
    (TEMPL ADJ-OPERATOR-TEMPL)
    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::med))
    (example "his asthma is poorly controlled")
    (meta-data :origin asma :entry-date 20120305 :change-date nil :comments nil)
    )
   ((LF-PARENT ONT::acceptability-val)
    (TEMPL PRED-VP-TEMPL)
    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::med))
    (example "his ankles swe badly")
    (meta-data :origin asma :entry-date 20120305 :change-date nil :comments nil :wn nil)
    )
   )
)
 
     ;; MD 2008/06/09 FIXME -- should this really be disc-templ? Smth else?
  (W::WELL
   (SENSES
    ((LF-PARENT ONT::SpeakerStatus)
     (TEMPL disc-templ)
     (preference .97)
     )
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing well today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
     ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
      (LF-PARENT ONT::degree-modifier)
      (example "development was well underway")
      (templ adj-operator-templ)
      (preference .98) ;; prefer adj
      )
     )   
   )
  
  (W::alright
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing alright today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
    )
   )
  
  (W::ok
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing ok today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
    )
   )
   ((W::o w::k)
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing ok today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
    )
   )
   (w::okay
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing ok today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
    )
   )
    (W::allright
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing allright today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
    )
   )
    ((w::all w::right)
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL PRED-S-POST-TEMPL)
     (example "are you breathing all right today")
     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     )
    )
   )
    ((W::step w::by w::step)
   (SENSES
    ((lf-parent ont::incremental-val)
     (meta-data :origin plot :entry-date 20080529 :change-date nil :comments nil)
     (example "execute the procedure step by step")
     (templ pred-vp-templ)
     )
    )
   )
   (W::WRONG
   (SENSES
    ((LF-PARENT ONT::correctness-val)
     (example "I might have spelled the name wrong")
     (TEMPL pred-vp-templ)
     (meta-data :origin plow :entry-date 20050922 :change-date nil :comments nil)
     )
    )
   )

  (w::apart
   (SENSES
    ((LF-PARENT ONT::manner) ;; ont::position(al)?
     (TEMPL pred-s-post-TEMPL)
     (example "move them apart")
     (meta-data :origin calo-ontology :entry-date 20051209 :change-date nil :comments Move-Apart)
     )
    )
   )
  (w::together
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL pred-s-post-TEMPL)
     (example "put them together")
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    ;; both together, how much is that together
    )
   )
   (w::altogether
   (SENSES
     ((LF-PARENT ONT::manner)
     (TEMPL pred-vp-TEMPL)
     (example "he is altogether happy")
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )

  (w::separately
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL pred-s-post-TEMPL)
     (example "they left separately")
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )
;;;  (w::together
;;;   (SENSES
;;;    ((LF-PARENT ONT::manner)
;;;     (TEMPL pred-s-post-TEMPL)
;;;     (example "they left together")
;;;     (meta-data :origin lam :entry-date 20050422 :change-date nil :comments lam-initial)
;;;     )
;;;    )
;;;   )
  (w::alternately
   (SENSES
    ((LF-PARENT ONT::manner)
     (TEMPL pred-s-post-TEMPL)
     (example "they practiced alternately")
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )
    
  (W::ELSE
   (SENSES
    ((LF-PARENT ONT::IDENTITY-VAL)
     (TEMPL ELSE-TEMPL)
     )
    )
   )
  
  (W::SO
   (SENSES
    ((LF-PARENT ONT::degree-modifier)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "he ran so fast")
     (PREFERENCE 0.98)  ;;;;; prefer discourse interps if possible
     )
    ((LF-PARENT ONT::intensifier)
     (TEMPL NON-DISC-ADV-OPERATOR-TEMPL)
     (example "he ran so very fast")
     (PREFERENCE 0.98)  ;;;;; prefer discourse interps if possible
     )
    ((LF-PARENT ONT::degree-modifier)
     (LF-FORM W::so)
     (example "he so wanted to go")
     (TEMPL PRED-VP-PRE-TEMPL)
     (PREFERENCE 0.98)  ;;;;; prefer discourse interps if possible
     )
    ((LF-PARENT ONT::therefore)
     (TEMPL binary-constraint-s-decl-templ)
     (example "she arrived so he left") 
     )
    ((LF-PARENT ONT::CONJUNCT)
     (TEMPL disc-pre-templ)
     (example "so you want to be a millionaire")
     )
    )
   )
  
  (W::Possibly
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (example "that is possibly the answer")
     (TEMPL PRED-S-VP-TEMPL)
     (meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     )
    )
   )
  (W::impossibly
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (example "the task is impossibly difficult")
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     )
    )
   )
  (W::extraordinarily
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (example "the task is extraordinarily difficult")
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     )
    )
   )

  (W::unbelievably
   (SENSES
    ((LF-PARENT ONT::degree-of-belief)
     (example "the task is unbelievably difficult")
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     )
    )
   )

  (W::HOWEVER
   (SENSES   
    ((LF-PARENT ONT::CONJUNCT)
     (TEMPL DISC-TEMPL)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    ))
  
  (W::MAINLY
   (SENSES
    ((meta-data :origin calo :entry-date 20040406 :change-date nil :comments y1v5)
     (LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  (W::easily
   (SENSES
    ((meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     (LF-PARENT ONT::complexity-val)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  (W::easy
   (SENSES
    ((meta-data :origin asma :entry-date 20110815 :change-date nil :comments nil)
     (LF-PARENT ONT::complexity-val)
     (example "breathing easy")
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  (W::straightforwardly
   (SENSES
    ((meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     (LF-PARENT ONT::complexity-val)
     (example "he spoke straightforwardly")
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  
  (W::simply
   (SENSES
    ((LF-PARENT ONT::qualification)
     (meta-data :origin calo :entry-date 20040917 :change-date nil :comments caloy2)
     (TEMPL pred-vp-TEMPL)
     (example "that is simply divine")
     )
    )
   )

   (W::practically
   (SENSES
    ((LF-PARENT ONT::qualification)
     (meta-data :origin cardiac :entry-date 20090120 :change-date nil :comments LM-vocab)
     (TEMPL pred-vp-TEMPL)
     (example "he is practically finished")
     )
     ((LF-PARENT ONT::degree-modifier)
     (example "practically never" "practically ready")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (meta-data :origin cardiac :entry-date 20090120 :change-date nil :comments LM-vocab)
     )
    )
   )

    (W::virtually
   (SENSES
    ((LF-PARENT ONT::qualification)
     (meta-data :origin cardiac :entry-date 20090120 :change-date nil :comments LM-vocab)
     (TEMPL pred-vp-TEMPL)
     (example "he is virtually finished")
     )
    )
   )
  
  ;; Moved words from below
  
   
  (W::ENOUGH
   (SENSES
    ((LF-PARENT ONT::degree-modifier)
     (TEMPL PRED-S-POST-TEMPL)
     (example "I've talked about it enough")
     (PREFERENCE 0.97)  ;; prefer postpositive interp if available
     )
   ((LF-PARENT ONT::enough-val)
     (templ postpositive-adv-optional-xp-templ)
     (meta-data :origin calo :entry-date 20050216 :change-date nil :comments caloy2)
     (example "is it quiet enough")
     )
    )
   )
    
  ((W::A W::BIT)
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (example "it's a bit green")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (PREFERENCE 0.98) ;; reduce competition with article 
     )
    ((LF-PARENT ONT::QMODIFIER)
     (TEMPL QUAN-OPERATOR-TEMPL)
     (example "a bit more")
     (preference .96) ;; prefer degree modifier
     )
    ((meta-data :origin fruitcarts :entry-date 20041117 :change-date nil :comments nil)
     (LF-PARENT ont::degree-modifier)
     (TEMPL PRED-VP-TEMPL)
     (example "slow down a bit")
     (preference .97)
     )
    )
   )
  ((W::A W::LOT)
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "there are a lot lighter ones but they are more expensive")
     (TEMPL comparative-adj-adv-operator-templ)
     (PREFERENCE 0.98) ;; reduce competition with article 
     )
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "do you run a lot?")
     (TEMPL pred-vp-templ)
     (PREFERENCE 0.98) ;; reduce competition with article 
     )
    ((LF-PARENT ont::degree-modifier)
     (TEMPL comparative-ADV-OPERATOR-TEMPL)
     (example "a lot more")
     (PREFERENCE 0.98) ;; reduce competition with article 
     (meta-data :origin calo :entry-date 20050427 :change-date nil :comments caloy2)
     )
    )
   )
  (w::alot
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "there are alot lighter ones but they are more expensive")
     (TEMPL comparative-adj-adv-operator-templ)
     )
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "do you run alot?")
     (TEMPL pred-vp-templ)
     )
;    ((LF-PARENT ont::degree-modifier)
;     (TEMPL comparative-ADV-OPERATOR-TEMPL)
;     (example "alot more")
;     (meta-data :origin calo :entry-date 20050427 :change-date nil :comments caloy2)
;     )
    )
   )
  ((w::a w::good w::deal)
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "do you run a good deal?")
     (TEMPL pred-vp-templ)
     (PREFERENCE 0.97) ;; reduce competition with article 
     )
    )
   )
    ((w::a w::great w::deal)
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "do you run a great deal?")
     (TEMPL pred-vp-templ)
     (PREFERENCE 0.97) ;; reduce competition with article 
     )
    )
   )
  (W::VERY
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (LF-FORM W::VERY)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )
  (W::full
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (LF-FORM W::full)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "pan camera full left")
     (meta-data :origin coordops :entry-date 20070514 :change-date nil :comments nil)
     )
    ((LF-PARENT ont::degree-modifier)
     (LF-FORM W::full)
     (TEMPL PRED-VP-TEMPL)
     (example "zoom full")
     (meta-data :origin coordops :entry-date 20070514 :change-date nil :comments nil)
     )
    )
   )
  (W::much
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "there are much lighter ones but they are more expensive")
     (TEMPL comparative-adj-adv-operator-templ)
     )
    ((LF-PARENT ont::degree-modifier)
     (meta-data :origin calo :entry-date 20050214 :change-date nil :comments caloy2)
     (example "do you run much?")
     (TEMPL pred-vp-templ)
     )
;    ((LF-PARENT ont::degree-modifier)
;     (TEMPL comparative-ADV-OPERATOR-TEMPL)
;     (example "much more")
;     (meta-data :origin calo :entry-date 20050427 :change-date nil :comments caloy2)
;     )
    )
   )
  
   (W::quite
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s15)
     (LF-PARENT ont::degree-modifier)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )
   
   (W::especially
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050823 :change-date nil :comments nil)
     (LF-PARENT ont::degree-modifier)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )

  ;; superlative of much
   ;; handled in the grammar
;  (W::MOST
;   (SENSES
;    ((LF-PARENT ONT::GRADE-MODIFIER)
;     (LF-FORM W::MOST)
;     (example "most impressive")
;     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
;     )
;    )
;   )


  (W::STRAIGHT
   (SENSES
    ((LF-PARENT ONT::MODIFIER)
     (TEMPL BINARY-CONSTRAINT-ADV-OPERATOR-TEMPL)
     )
    )
   )

  ((W::a W::little W::bit)
   (SENSES
    ((LF-PARENT ont::degree-modifier)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "a little bit to the right")
     (PREFERENCE 0.98) ;; reduce competition with article 
     (meta-data :origin fruitcarts :entry-date 20060111 :change-date nil :comments fruitcart-co01)
     )
    ((LF-PARENT ont::degree-modifier)
     (TEMPL PRED-VP-TEMPL)
     (example "slow down a little bit")
     (preference .97) ;; prefer senses with complement
     )
    ((LF-PARENT ont::degree-modifier)
     (TEMPL comparative-adj-ADV-OPERATOR-TEMPL)
     (example "a little bit more")
     (PREFERENCE 0.98) ;; reduce competition with article 
     (meta-data :origin fruitcarts :entry-date 20050505 :change-date nil :comments fruitcart-11-2)
     )
    )
   )
  ((W::a W::little)
   (SENSES
    ((meta-data :origin lou :entry-date 20040319 :change-date nil :comments lou)
     (LF-PARENT ont::degree-modifier)
     (example "slow down a little")
     (TEMPL PRED-VP-TEMPL)
     (preference .96) ;; prefer senses with complement
     )
    ((LF-PARENT ont::degree-modifier)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "a little green" "a little down")
     (PREFERENCE 0.98) ;; reduce competition with article 
     (meta-data :origin fruitcarts :entry-date 20050331 :change-date nil :comments fruitcarts-11-1)
     )
    ((LF-PARENT ont::degree-modifier)
     (TEMPL comparative-adj-ADV-OPERATOR-TEMPL)
     (example "a little more")
     (preference .96) ;; prefer senses with complement
     (meta-data :origin fruitcarts :entry-date 20050505 :change-date nil :comments fruitcart-11-2)
     )
    )
   )

   (w::no
    (SENSES
    ((LF-PARENT ont::degree-modifier)
     (TEMPL NEG-ADJ-ADV-OPERATOR-TEMPL)
     (example "it has no green in it")
     (meta-data :origin cardiac :entry-date 20080429 :change-date nil :comments nil)
     )
    ((LF-PARENT ont::degree-modifier)
     (TEMPL comparative-adj-ADV-OPERATOR-TEMPL)
     (example "no more")
     (meta-data :origin cardiac :entry-date 20080429 :change-date nil :comments nil)
     )
    )
   )

  (W::rather
   (SENSES
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (example "degree modifiers are rather more difficult than certain others")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
     ((LF-PARENT ONT::DEGREE-MODIFIER)
      (meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments speechtest-transcripts)
     (example "he would rather sleep than get up")
     (TEMPL pred-vp-TEMPL)
     )
    )
   )

    ((W::NOT w::at w::all)
   (SENSES
    ((LF-PARENT ONT::degree-modifier)
     (example "not at all bad")
     (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil)
     (TEMPL NEG-ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )


    ((W::NOT w::all w::that)
   (SENSES
    ((LF-PARENT ONT::degree-modifier)
     (example "not at all bad")
     (meta-data :origin cardiac :entry-date 20081015 :change-date nil :comments nil)
     (TEMPL NEG-ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )

  (W::NOT
   (SENSES
    ((LF-PARENT ONT::NEG)
     (example "not too bad")
     (TEMPL NEG-ADJ-ADV-OPERATOR-TEMPL)
     )    
    )
   )
  (W::INDEED
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::INDEED)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::INDEED)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
  (W::ONLY
   (SENSES
    ((LF-PARENT ONT::RESTRICTION)
     (LF-FORM W::only)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::ONLY)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
  (W::ALONE
   (SENSES
    ((LF-PARENT ONT::exclusive)
     (LF-FORM W::alone)
     (example "he sang alone")
     (meta-data :origin calo :entry-date 20040907 :change-date nil :comments caloy2)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )
  (W::EVEN
   (SENSES
    ((LF-PARENT ONT::modifier)
     (LF-FORM W::even)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::even)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )
  
  (W::PRETTY
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (example "it's pretty green")
     (LF-FORM W::PRETTY)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
;    ((LF-PARENT ONT::degree-MODIFIER)
;     (example "he got pretty tired")
;     (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil)
;     (TEMPL PRED-VP-TEMPL)
;     )
    )
   )

   ((W::PRETTY W::MUCH)
   (SENSES
;    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s3)
;     (LF-PARENT ONT::DEGREE-MODIFIER)
;     (LF-FORM W::pretty-much)
;     (TEMPL PRED-VP-TEMPL)
;     )
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s3)
     (LF-PARENT ONT::degree-MODIFIER)
     (example "it's pretty much over")
     (LF-FORM W::pretty-much)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )
;   ((w::not W::really)
;   (SENSES
;    ((LF-PARENT ONT::GRADE-MODIFIER)
;     (LF-FORM W::not-REALLY)
;     (TEMPL ADJ-OPERATOR-TEMPL)
;     )
;    ((LF-PARENT ONT::DEGREE-MODIFIER)
;     (LF-FORM W::not-REALLY)
;     (TEMPL PRED-VP-PRE-TEMPL)
;     )
;    ((LF-PARENT ONT::intensifier)
;     (TEMPL NON-DISC-ADV-OPERATOR-TEMPL)
;     (example "not really very fast")
;     (PREFERENCE 0.95)  ;;;;; prefer discourse interps if possible
;     )
;    )
;   )
   ((w::not W::real)
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (LF-FORM W::not-REALLY)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (LF-FORM W::not-REALLY)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
 
  (W::REALLY
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::REALLY)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::degree-MODIFIER)
     (LF-FORM W::REALLY)
     (example "really green")
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (LF-FORM W::REALLY)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    ((LF-PARENT ONT::intensifier)
     (TEMPL NON-DISC-ADV-OPERATOR-TEMPL)
     (example "he ran really quite fast")
     (PREFERENCE 0.98)  ;;;;; prefer discourse interps if possible
     )
    )
   )
  (W::ABSOLUTELY
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (TEMPL ADJ-OPERATOR-TEMPL)
     (example "he is absolutely ecstatic")
     (preference .98)
     )
    ((LF-PARENT ONT::likelihood)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )

  ((W::of w::course)
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (TEMPL PRED-S-VP-TEMPL)
     (meta-data :origin cardiac :entry-date 20090427 :change-date nil :comments nil)
     )
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (TEMPL DISC-TEMPL)
     (meta-data :origin cardiac :entry-date 20090427 :change-date nil :comments nil)
     (preference. 98)
     )
    )
   )
    
  (W::TRULY
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (TEMPL PRED-VP-PRE-TEMPL)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    ((LF-PARENT ONT::intensifier)
     (TEMPL NON-DISC-ADV-OPERATOR-TEMPL)
     (example "he ran truly very fast")
     (PREFERENCE 0.98)  ;;;;; prefer discourse interps if possible
     )
    )
   )
  (W::COMPLETELY
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
   (W::wholly
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (TEMPL ADJ-OPERATOR-TEMPL)
     (example "he is wholly satisfied")
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (TEMPL PRED-VP-PRE-TEMPL)
     (example "he wholly enjoyed the evening")
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
  (W::REAL
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (LF-FORM W::VERY)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    )
   )
  ((W::sort W::of)
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::SORT-OF)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (LF-FORM W::SORT-OF)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (LF-FORM W::SORT-OF)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
   (w::somewhat
   (SENSES
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "it is somewhat red" "it is somewhat behind him")
     )
    )
   )
   (w::partly
   (SENSES
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq)
     (example "it is partly red")
     )
    )
   )
   (w::mostly
   (SENSES
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq)
     (example "it is mostly red")
     )
    )
   )
  (w::somehow
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::somehow)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  (w::sorta
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::SORT-OF)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::degree-MODIFIER)
     (LF-FORM W::SORT-OF)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (LF-FORM W::SORT-OF)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
  ((W::kind W::of)
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (LF-FORM W::KIND-OF)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::degree-modifier)
     (LF-FORM W::KIND-OF)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
  (w::kinda
   (SENSES
    ((LF-PARENT ONT::degree-MODIFIER)
     (LF-FORM W::KIND-OF)
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::degree-modifier)
     (LF-FORM W::KIND-OF)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
  (W::CERTAINLY
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (LF-FORM W::CERTAIN)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ;; example?
;    ((LF-PARENT ONT::MODIFIER)
;     (LF-FORM W::CERTAIN)
;     (TEMPL PRED-VP-PRE-TEMPL)
;     )
    )
   )
  (W::definitely
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (LF-FORM W::definite)
     (meta-data :origin cardiac :entry-date 20090427)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  (W::APPARENTLY
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::APPARENT)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
 
  (w::regarding
   (SENSES
    ((LF-PARENT ONT::associated-information)
     (example "she would like to speak with you regarding the transportation situation")
     (TEMPL binary-constraint-s-or-np-templ)
     (meta-data :origin calo-ontology :entry-date 20060412 :change-date nil :comments nil)
     )
    )
   )
   ((w::as w::to)
   (SENSES
    ((LF-PARENT ONT::associated-information)
     (example "evidence as to the origins of man")
     (TEMPL binary-constraint-np-templ)
     (meta-data :origin step :entry-date 20080623 :change-date nil :comments nil)
     )
    )
   )
   ((W::in W::regard W::to)
   (SENSES
    ((LF-PARENT ONT::associated-information)
     (example "she would like to speak with you in regard to the transportation situation")
     (TEMPL binary-constraint-s-templ)
     (meta-data :origin calo-ontology :entry-date 20060412 :change-date nil :comments nil)
     )
    )
   )
  ((W::with W::regard W::to)
   (SENSES
    ((LF-PARENT ONT::associated-information)
     (example "she would like to speak with you with regard to the transportation situation")
     (TEMPL binary-constraint-s-templ)
     (meta-data :origin calo-ontology :entry-date 20060412 :change-date nil :comments nil)
     )
    )
   )
  ((W::with W::respect W::to)
   (SENSES
    ((LF-PARENT ONT::associated-information)
     (example "how do they compare with respect to speed")
     (TEMPL binary-constraint-s-templ)
     (meta-data :origin calo-ontology :entry-date 20060412 :change-date nil :comments nil)
     )
    )
   )
  
  (W::AROUND
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::APPROXIMATE)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
  ((W::AS W::FOR)
   (SENSES
    ((LF-PARENT ONT::TOPIC)
     (LF-FORM W::TOPIC)
     (TEMPL TOPIC-TEMPL)
     )
    )
   )
  ((W::REGARDING)
   (SENSES
    ((LF-PARENT ONT::TOPIC)
     (LF-FORM W::TOPIC)
     (TEMPL TOPIC-TEMPL)
     )
    )
   )
  (W::APPROXIMATELY
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::APPROXIMATE)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )

   (W::EXACTLY
   (SENSES
    ((LF-PARENT ONT::qmodifier)
     (LF-FORM W::EXACT)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )

   (W::ALMOST
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::ALMOST)
     (example "almost five trucks")
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::ALMOST)
     (example "almost every truck")
     (TEMPL QUAN-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::qualification)
     (LF-FORM W::ALMOST)
     (example "he almost smiled" "he is almost there")
     (TEMPL PRED-VP-TEMPL)
     )
    ((LF-PARENT ONT::degree-modifier)
     (example "almost never" "almost ready")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (meta-data :origin cardiac :entry-date 20080730 :change-date nil :comments speech-pretest)
     )
    ((LF-PARENT ONT::time-clock-rel)
     (example "it's almost midnight")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    )
   )
  (W::dead
   (SENSES
    ((LF-PARENT ONT::degree-modifier)
     (example "dead right" "dead simple")
     (TEMPL ADJ-OPERATOR-TEMPL)
     (meta-data :origin mobius :entry-date 20080826 :change-date nil :comments engine-texts)
     )
    )
   )
  (W::barely
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::ALMOST)
     (example "barely five trucks")
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::qualification)
      (example "he barely smiled")
     (TEMPL PRED-VP-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    ((LF-PARENT ONT::degree-modifier)
     (example "you're barely there")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    ((LF-PARENT ONT::time-clock-rel)
     (example "it's barely midnight")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
  (W::hardly
   (SENSES
    ((LF-PARENT ONT::qualification)
      (example "he hardly slept")
     (TEMPL PRED-VP-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )

  (w::tight  
   (senses
    ((lf-parent ont::binding-val)
     (example "he held tight")
     (templ PRED-S-POST-templ)
    )))
   
  (W::largely
   (SENSES
    ((LF-PARENT ONT::qualification)
      (example "largely unregulated stocks")
     (TEMPL adj-adv-operator-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
   (W::halfway
   (SENSES
    ((LF-PARENT ONT::degree-modifier)
     (example "you're halfway there")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (meta-data :origin fruitcarts :entry-date 20050331 :change-date nil :comments fruitcarts-11-1)
     )
    )
   )
  (W::nearly
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::ALMOST)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::ALMOST)
     (example "nearly every truck") ;; but not nearly some/no/few truck !
     (TEMPL QUAN-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::qualification)
     (LF-FORM W::ALMOST)
     (TEMPL PRED-VP-TEMPL)
     )
    ((LF-PARENT ONT::degree-modifier)
     (example "you're nearly there" "it's nearly ready")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (meta-data :origin fruitcarts :entry-date 20050331 :change-date nil :comments fruitcarts-11-1)
     )
    ((LF-PARENT ONT::time-clock-rel)
     (example "it's nearly midnight")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    )
   )
  (W::closely
   (SENSES
    ((LF-PARENT ONT::attention-val)
     (example "they watched him closely")
     (meta-data :origin calo :entry-date 20040920 :change-date nil :comments caloy2)
     (LF-FORM W::closely)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  
  ((W::greater W::than)
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::MORE)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
  
  
  ((W::at W::least)
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::MIN)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
  ((W::at W::most)
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::MAX)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
  ((W::NOT W::MORE W::THAN)
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::MAX)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
  ((W::NOT W::LESS W::THAN)
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::MIN)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
   ((W::as W::much w::as)
   (SENSES
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::max)
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    )
   )
   ((W::as W::long w::as)
    (wordfeats (W::ALLOW-DELETED-COMP +))
    (SENSES
     ((LF-PARENT ONT::pos-condition)
      (TEMPL binary-constraint-s-or-np-TEMPL)
      )
     )
    )
  ((W::according W::to)
   (SENSES
    ((LF-PARENT ONT::ATTRIBUTED-INFORMATION)
     (LF-FORM W::ACCORDING-TO)
     (TEMPL binary-constraint-S-templ)
     (EXAMPLE "according to what i have the helicopter takes a half hour")
     )
    )
   )
  ((W::based W::on)
   (SENSES
    ((LF-PARENT ONT::ATTRIBUTED-INFORMATION)
     (LF-FORM W::BASED-ON)
     (TEMPL binary-constraint-s-templ)
     (EXAMPLE "based on the locations of people strong is the closest hospital")
     )
    )
   )
  
  (W::of
   (SENSES
    ((LF-PARENT ONT::ASSOC-WITH)
     (example "the budget of the company is 6000 dollars")
     (meta-data :origin calo :entry-date 20040901 :change-date nil :comments calo-y2)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (PREFERENCE 0.97)
     )
    )
   )
  
  (W::MRE
   (SENSES
    ((LF-PARENT ONT::grade-modifier)
     (LF-FORM W::more)
     (example "more happy, more quickly")
     (TEMPL adj-adv-comp-operator-templ)
     )
    )
   )
  ;; these are handled in the grammar now
;  (W::MORE
;   (SENSES
;    ((LF-PARENT ONT::grade-modifier)
;     (LF-FORM W::more)
;     (example "more happy, more quickly")
;     (TEMPL adj-adv-comp-operator-templ)
;     )
;    )
;   )
  
;  (W::less
;   (SENSES
;    ((LF-PARENT ONT::grade-modifier)
;     (LF-FORM W::less)
;     (example "less morose, less quickly")
;     (TEMPL adj-adv-comp-operator-templ)
;     )
;    )
;   )
;  (W::least
;   (SENSES
;    ((LF-PARENT ONT::grade-modifier)
;     (LF-FORM W::least)
;     (example "less morose, least quickly")
;     (TEMPL adj-adv-operator-templ)
;     )
;    )
;   )

  (W::ORIGINALLY
   (SENSES
    ((LF-PARENT ONT::MODIFIER)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  (W::consecutively
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s15)
     (LF-PARENT ONT::SEQUENCE-POSITION)
     (templ pred-vp-templ)
     )
    )
   )
  (W::automatically
   (SENSES
    ((meta-data :origin quicken :entry-date 20071129 :change-date nil :comments nil)
     (LF-PARENT ONT::automatic)
     (templ pred-vp-templ)
     )
    )
   )
  (W::sequentially
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments nil)
     (LF-PARENT ONT::SEQUENCE-POSITION)
     (templ pred-vp-templ)
     )
    )
   )

   ((w::in W::sequence)
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments nil)
     (LF-PARENT ONT::SEQUENCE-POSITION)
     (templ pred-vp-templ)
     )
    )
   )
  
  ((W::ON W::PURPOSE)
   (SENSES
    ((LF-PARENT ONT::INTENTIONALITY-val)
     (TEMPL PRED-S-POST-templ)
     )
    )
   )


  (W::JUST
   (SENSES
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::JUST)
     (example "it's just ready")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::JUST)
     (example "just five dollars")
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::JUST)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::JUST)
     )
    )
   )

  (W::LIKE
   (SENSES
    ((LF-PARENT ONT::similarity)
     (LF-FORM W::LIKE)
     ;; Myrosia put in a really low preference: don't put this in
     ;; unless there's no other possible interpretation
     (preference 0.92)
     (example "he solved it like this")
     (TEMPL binary-constraint-s-or-np-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::LIKE)
     (example "give me like 10 of them")
     (TEMPL NUMBER-OPERATOR-TEMPL)
     (preference .92)
     )
    )
   )
  ))


(define-list-of-words :pos w::adv
  :senses (((TEMPL ADJ-ADV-OPERATOR-TEMPL)
	    (LF-PARENT ONT::DEGREE-MODIFIER)
	    (meta-data :origin cardiac :entry-date 20090312 :change-date nil :comments nil)
	    )
	   )
  :words (w::extremely w::dramatically w::fairly w::moderately w::seriously w::significantly w::tolerably w::intolerably w::bearably w::unbearably 
	  )
  )


;; Parentheticals
(define-list-of-words :pos w::adv
  :senses (
	   ((TEMPL BINARY-CONSTRAINT-NP-TEMPL)
	    (LF-PARENT ONT::PARENTHETICAL)
	    (meta-data :origin beetle :entry-date 20090116 :change-date nil :comments nil)
	    (preference 0.98) ;; lower preference so that other senses are considered first, since this sense is very underconstrained
	    )
	   )
  :words (
	  w::like
	  w::unlike
	  (w::and w::not)
	  (w::but w::not)
	  )
  )


(define-words 
    :pos W::adv :templ DISC-PRE-TEMPL
    :words (

;;;; Start moved words	    
	    	    
  (W::NEXT
   (SENSES
    ((EXAMPLE "Next send a truck to Abyss" "do it next")
     (meta-data :origin trips :entry-date nil :change-date 20070414 :comments lam-evaluation)
     (LF-PARENT ONT::SEQUENCE-POSITION)
     (TEMPL disc-templ)
     )
   #|| ((EXAMPLE "the meeting next week""he arrives next week")
     (LF-PARENT ONT::event-time-rel)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments nil)
     (templ binary-constraint-s-or-np-templ)
     (syntax (w::allow-deleted-comp -))
     )||#
    )
   )
  
  (W::preferably
   (SENSES
    ((LF-PARENT ONT::preference-val)
     (LF-FORM W::preferable)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::preference-val)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "preferably green")
     )
    )
   )

   (W::likely
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (example "he (most) likely left")
     (meta-data :origin cardiac :entry-date 20090427)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  (W::PROBABLY
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (TEMPL DISC-TEMPL)
     (preference .98)
     )
    ((LF-PARENT ONT::likelihood)
     (example "he probably left")
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )

  (W::LIKELY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (example "it is likely broken")
     (TEMPL PRED-S-VP-TEMPL)
     (PREFERENCE 0.96) ;; prefer the adjective if possible
     )
    )
   )


  (W::alternatively
   (SENSES
    ((LF-PARENT ONT::choice-option)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::choice-option)
     (TEMPL pred-s-vp-templ)
     )
    )
   )
  
  ((W::YOU W::KNOW)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::INTERJECTION)
     (LF-FORM W::YOU_KNOW)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )
  
  ((W::I W::GUESS)
   (SENSES
    ;;;;; Myrosia 02/10/03 changed to disc-post-templ to reflect only
    ;;;;; post-utterance "I guess", and lowered preference to not compete
    ;;;;; with "I guess" in the places where it is a VP starting a sentence
    ((LF-PARENT ONT::INTERJECTION)
     (LF-FORM W::I_GUESS)
     (TEMPL DISC-POST-TEMPL)
     (PREFERENCE 0.97)
     )
    ((LF-PARENT ONT::INTERJECTION)
     (LF-FORM W::I_GUESS)
     (TEMPL PRED-S-VP-TEMPL)
     (PREFERENCE 0.96)
     )
    )
   )
  (W::OFFHAND
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (example "I don't know offhand")
     (meta-data :origin calo :entry-date 20050527 :change-date nil :comments projector-purchasing)
     (TEMPL DISC-POST-TEMPL)
     )
    )
   )

  ((W::and w::so w::on)
   (SENSES
    ((LF-PARENT ONT::etcetera)
     (TEMPL DISC-POST-TEMPL)
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )
  ((W::and w::such)
   (SENSES
    ((LF-PARENT ONT::etcetera)
     (TEMPL DISC-POST-TEMPL)
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )
  ((W::and w::so w::forth)
   (SENSES
    ((LF-PARENT ONT::etcetera)
     (TEMPL DISC-POST-TEMPL)
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )
  (w::etcetera
   (SENSES
    ((LF-PARENT ONT::etcetera)
     (TEMPL DISC-POST-TEMPL)
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )
  
  (w::etc
   (SENSES
    ((LF-PARENT ONT::etcetera)
     (TEMPL DISC-POST-TEMPL)
     (meta-data :origin calo :entry-date 20041122 :change-date nil :comments caloy2)
     )
    )
   )

	    
  (W::INITIALLY
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     )
    )
   )
  (W::LASTLY
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     )
    )
   )
  (W::NORMALLY
   (SENSES
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::frequency)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )
  (W::SPECIFICALLY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL disc-templ)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL pred-vp-templ)
     )
    )
   )

    (W::ANYHOW
   (SENSES
    ((LF-PARENT ONT::PREDICATE)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )
  (W::ANYWAY
   (SENSES
    ((LF-PARENT ONT::MODIFIER)
     )
    ((LF-PARENT ONT::PRIORITY)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )
  (W::ANYWAYS
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  ((W::by W::the W::way)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  (W::PLEASE
   (SENSES
    ((LF-PARENT ONT::POLITENESS)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  (W::MEANWHILE
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     )
    )
   )
  ((W::in W::any W::case)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (TEMPL DISC-TEMPL)
     )
    )
   )
 ((W::as W::far W::as w::I w::can w::tell)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  ((W::as W::far W::as w::I w::know)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  ((W::for w::what w::it w::is w::worth)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  ((W::in w::my w::humble w::opinion)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  ((W::to w::tell w::you w::the w::truth)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
     (TEMPL DISC-TEMPL)
     )
    )
   )
   ((W::for W::that W::matter)
   (SENSES
    ((LF-PARENT ONT::TOPIC-SIGNAL)
     (TEMPL DISC-TEMPL)
     )
    )
   )
  (W::HOPEFULLY
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::HOPEFUL)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::HOPEFUL)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
 
  (W::EVENTUALLY
   (SENSES
    ((LF-PARENT ONT::modifier)
     (TEMPL PRED-VP-PRE-TEMPL)
     (meta-data :origin trips :entry-date unknown :change-date 20080517 :comments beetle2-pilot2)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  
  (W::BASICALLY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::qualification)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )

    
  (W::ORIGINALLY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    )
   )

    (W::alas
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
  (W::ESSENTIALLY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  (W::OBVIOUSLY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  (W::clearly
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )

  (W::palpably
   (SENSES
     ((LF-PARENT ONT::QUALIFICATION) ;; need another type
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  (W::PRESUMABLY
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )

   (W::undoubtedly
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
   (W::unquestionably
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
   
  (W::FINALLY
   (SENSES
    ;; Myrosia 01/27/02 added as a discource adverbial: finally, ....
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     )
    )
   )
  (W::NOW
   (SENSES
    ;; Myrosia added 11/13/03, because it is really not a time with imperatives
    ;; how about "send a truck to barnacle now"?
    ((EXAMPLE "Now send a truck to Barnacle")
     (LF-PARENT ONT::SEQUENCE-POSITION)
     )
    )
   )
  		      		      		      
  (W::ACTUALLY
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::CERTAIN)
     (TEMPL PRED-VP-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (LF-FORM W::REAL)
     (TEMPL disc-templ)
     )
    )
   )

  (W::BESIDES
   (SENSES
    ((LF-PARENT ONT::ADDITIVE)
     (TEMPL binary-constraint-S-or-np-templ)
     )
    ((LF-PARENT ONT::ADDITIVE)
     (TEMPL binary-constraint-s-ing-templ)
     )
    )
   )
  (W::TOO
   (SENSES
    ((LF-PARENT ONT::ADDITIVE)
     (LF-FORM W::TOO)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::ADDITIVE)
     (LF-FORM W::TOO)
     (TEMPL PRED-NP-subj-TEMPL)
     (PREFERENCE 0.98)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (LF-FORM W::TOO)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    )
   )
  
  (W::THAT
   (SENSES
    ((LF-PARENT ONT::DEGREE-MODIFIER) 
     (LF-FORM W::THAT)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (example "it's not that unlikely")
     ;; this really is very unlikely, so Myrosia 2004.08.05 lowered the preference to avoid interference with better senses
     (preference 0.9)
     )
    )
   )
  ((W::or W::so)
   (SENSES
    ((LF-PARENT ONT::qualification)
     (LF-FORM W::approximate)
     (TEMPL binary-constraint-measure-NP-templ)
     )
    )
   )

  ((W::for W::starters)
   (SENSES
    ((LF-PARENT ONT::sequence-position)
     (example "for starters let's determine your price range")
     (TEMPL disc-templ)
     (meta-data :origin calo :entry-date 20041206 :change-date nil :comments caloy2)
     )
    )
   )

  ((W::for w::a W::start)
   (SENSES
    ((LF-PARENT ONT::sequence-position)
     (example "for a start let's determine your price range")
     (TEMPL disc-templ)
     (meta-data :origin calo :entry-date 20041206 :change-date nil :comments caloy2)
     )
    )
   )

   ((W::for w::example)
   (SENSES
    ((LF-PARENT ONT::qualification)
     (example "take this mac for example")
     (TEMPL disc-templ)
     (meta-data :origin calo :entry-date 20041206 :change-date nil :comments caloy2)
     )
    )
   )

   ((W::e w::punc-period w::g w::punc-period)
   (SENSES
    ((LF-PARENT ONT::qualification)
     (example "e.g. if x=5, y=7")
     (TEMPL disc-pre-templ)
     (meta-data :origin lam :entry-date 20050422 :change-date nil :comments lam-initial)
     )
    )
   )

  ((W::so W::that)
   (SENSES
    ((LF-PARENT ONT::so-that)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )

  (W::whereby
    (SENSES
     ((LF-PARENT ONT::whereby)
     (TEMPL binary-constraint-s-or-np-decl-templ)
     (meta-data :origin jr :entry-date 20120501 :comments gloss-variant)
     )
    )
   )

  ((W::in W::order W::that)
   (SENSES
    ((LF-PARENT ONT::so-that)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)     
     )
    )
   )

  ((W::just W::in W::case)
   (SENSES
    ((LF-PARENT ONT::situated-in)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )
  
  ((W::in W::case)
   (SENSES
    ((LF-PARENT ONT::situated-in)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )
  (W::BECAUSE
   (SENSES
    ((LF-PARENT ONT::REASON)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
     ((LF-PARENT ONT::REASON)
     (TEMPL binary-constraint-s-decl-it-that-templ)
     (example "it's/that's because he is tired")
     (meta-data :origin cardiac :entry-date nil :change-date 20090303 :comments nil)
     )
     ((LF-PARENT ONT::REASON)
     (TEMPL binary-constraint-s-pp-of-templ)
     (Example "I did it because of bad weather")
     (meta-data :origin beetle :entry-date 20081111 :change-date nil :comments nil)
     )
    )
   )

  ;; moving this under because w/ subcat
;  ((W::BECAUSE w::OF)
;   ;; NOTE: because of is marked as a multi-word because "of" cannot be separated from "because" with movement
;   (SENSES    
;    ((LF-PARENT ONT::REASON)
;     (TEMPL binary-constraint-s-templ)
;     (Example "I did it because of bad weather")
;     (meta-data :origin beetle :entry-date 20081111 :change-date nil :comments nil)
;     )
;    ))
  
  (W::CAUSE
   (SENSES
    ((LF-PARENT ONT::REASON-informal)
     (LF-FORM W::because)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )
  (W::^CAUSE
   (SENSES
    ((LF-PARENT ONT::REASON-informal)
     (LF-FORM W::because)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )
  
  (w::despite
    (SENSES    
    ((LF-PARENT ONT::qualification)
     (TEMPL binary-constraint-s-templ)
     (Example "I did it despite the bad weather")
     (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
     )
    ))

  ((w::in w::spite w::of)
    (SENSES    
    ((LF-PARENT ONT::qualification)
     (TEMPL binary-constraint-s-templ)
     (Example "I did it despite the bad weather")
     (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
     )
    ))

  ((W::due w::to)
   (SENSES    
    ((LF-PARENT ONT::due-to)
     (TEMPL binary-constraint-s-templ)
     (Example "measuring voltage indicates where state changes due to a damaged bulb")
     (meta-data :origin beetle :entry-date 20081111 :change-date nil :comments nil)
     )
    ))
  
  (W::SINCE
   (SENSES
    ((LF-PARENT ONT::REASON)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    ((LF-PARENT ONT::event-time-rel)
     (example "show me arrivals since 5 pm / he left")
     (TEMPL binary-constraint-S-or-NP-TEMPL)
     (meta-data :origin cernl :entry-date 20110105 :change-date nil :comments hpi-acn-4)
     )
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL binary-constraint-S-implicit-TEMPL)
     (example "he has had no problems since")
     (meta-data :origin cernl :entry-date 20110105 :change-date nil :comments hpi-acn-1)
     )
    )
   )
  
 ;; these senses can't be distinguished well so they should be generalized
  (W::AS
   (SENSES
    ((LF-PARENT ONT::REASON)
     (TEMPL binary-constraint-s-decl-templ)
     )
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL binary-constraint-S-decl-TEMPL)
     (meta-data :origin mobius :entry-date 20080702 :change-date nil :comments nil)
     (example "as this happens the valve closes")
     )
    ((LF-PARENT ONT::predicate)
     (example "use/try/select/find/ this as an example")
     (meta-data :origin plow :entry-date 20060306 :change-date nil :comments pq0384)
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     )
;    ((LF-PARENT ONT::predicate)
;     (example "take the medication as prescribed")
;     (meta-data :origin chf :entry-date 20070827 :change-date nil :comments chf-dialogues)
;     (TEMPL binary-constraint-s-or-np-general-templ)
;     )
;    ((LF-PARENT ONT::predicate)
;     (example "take the medication as the doctor prescribed")
;     (meta-data :origin chf :entry-date 20070827 :change-date nil :comments chf-dialogues)
;     (TEMPL binary-constraint-s-or-np-decl-templ)
;     )
    )
   )

  
  ((W::AS W::IF)
   (SENSES
    ((LF-PARENT ONT::MANNER)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)     
     (TEMPL binary-constraint-s-decl-templ)
     )
    )
   )
  
  ((W::AS W::THOUGH)
   (SENSES
    ((LF-PARENT ONT::MANNER)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)     
     (TEMPL binary-constraint-s-decl-templ)
     )
    )
   )
  
  (W::THEN
   (SENSES
    ;; when is it conjunct and when is it sequence-position?
    ((LF-PARENT ONT::CONJUNCT)
     )
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     )
    )
   )  
  
  (W::ALSO
   (SENSES
    ((LF-PARENT ONT::CONJUNCT)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    ((LF-PARENT ONT::ADDITIVE)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     (LF-FORM W::ALSO)
     (TEMPL PRED-VP-TEMPL)
     )
    )
   )
  (W::AND
   (SENSES
    ((LF-PARENT ONT::CONJUNCT)
     )
    )
   )
  
  (W::OR
   (SENSES
    ((LF-PARENT ONT::CONJUNCT)
     )
    )
   )
  (W::THUS
   (SENSES
    ((LF-PARENT ONT::MODIFIER)
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )    
    ((LF-PARENT ONT::therefore)
     (TEMPL binary-constraint-s-decl-templ)
     )
    )
   )
  (W::BUT
   (SENSES
    ((LF-PARENT ONT::CONJUNCT)
     )
    )
   )

  (W::THEREFORE
   (SENSES
    ((LF-PARENT ONT::therefore)
     (meta-data :origin lam :entry-date 20050425 :change-date nil :comments lam-initial)
     (TEMPL binary-constraint-s-decl-templ)
     )
    )
   )
      
;;;;;;;;;;;;;;;;;;;; Start added list of sentenial connectives
  
  (W::THOUGH
   (SENSES
    ((LF-PARENT ONT::Qualification )
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (TEMPL DISC-POST-TEMPL)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )
  
  ((W::EVEN W::THOUGH)
   (SENSES
    ((LF-PARENT ONT::Qualification )
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)
     )
    ))
  
  (W::WHILE
   (SENSES
    ((LF-PARENT ONT::Qualification )
     ;; FIXME -- we might want syntax to be pre-only
     (TEMPL binary-constraint-s-decl-templ)
     (Example "while A is true, B is not")     
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)
     )
    )
   )
     
  (W::WHEREAS
   (SENSES
    ((LF-PARENT ONT::Qualification )
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)
     )
    )
   )

  ((W::GIVEN W::THAT)
   (SENSES
    ((LF-PARENT ONT::Qualification )
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)
     )
    )
   )
  
  (W::ALTHOUGH
   (SENSES
    ((LF-PARENT ONT::Qualification )
     (TEMPL binary-constraint-s-decl-templ)
     (example "you are right although I don't think you understand what I'm saying")
     (meta-data :origin plow :entry-date 20050922 :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )  

 
  ((W::NOW W::THAT)
   (SENSES
    ((LF-PARENT ONT::Conjunct )
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date nil :comments sentential-conjunction-cleanup)
     )
    ))
  

  
  (W::OTHERWISE
   (SENSES
   ((LF-PARENT ONT::choice-option )
     (TEMPL binary-constraint-s-decl-templ)
     ;; We can't say "otherwise it will break, you must do it"
 ;    (SYNTAX (W::ATYPE W::POST))
     (example "it will break otherwise" "otherwise it will break")
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )     
    ((LF-PARENT ONT::choice-option)
     (TEMPL pred-s-vp-templ)
     (example "it will otherwise change")
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     )
    )
   )
  
  (W::IF
   (SENSES
    ((LF-PARENT ONT::POS-CONDITION)
     (Example "if I see it then I will believe it")
     (TEMPL binary-constraint-s-decl-middle-word-subcat-templ (xp2 (% w::word (w::lex w::then))))
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-gerund-templ)
     (example "be careful if walking")
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )    
    )
   )

  ((W::EVEN W::IF)
   (SENSES
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-gerund-templ)
     (example "be careful even if walking")
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )    
    )
   )
   
  ((W::ONLY W::IF)
   (SENSES
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-gerund-templ)
     (example "do it only if walking")
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )    
    )
   )
  
  ((W::AS W::LONG W::AS)
   (SENSES
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    )
   )

  
  (W::WHETHER
   (SENSES
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    )
   )
  
  ((W::WHETHER W::OR W::NOT)
   (SENSES
    ((LF-PARENT ONT::POS-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    )
   )
  
  (W::UNLESS
   (SENSES
    ((LF-PARENT ONT::NEG-CONDITION)
     (TEMPL binary-constraint-s-decl-templ)
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )
    ((LF-PARENT ONT::NEG-CONDITION)
     (TEMPL binary-constraint-gerund-templ)
     (example "be careful unless walking")
     (meta-data :origin beetle2 :entry-date 20070609 :change-date 20080623 :comments sentential-conjunction-cleanup)     
     )    
    )
   )
 
;;;;;;;;;;;;;;;;;;;; End added list of sentential connectives
  
  
  

  (W::MAYBE
   (SENSES
    ((LF-PARENT ONT::QUALIFICATION)
     (LF-FORM W::maybe)
     (TEMPL PRED-VP-TEMPL)
     )
    ((LF-PARENT ONT::QUALIFICATION)
     (meta-data :origin calo :entry-date 20040406 :change-date nil :comments y1v5)
     (example "a few thousand maybe")
     (LF-FORM W::maybe)
     (TEMPL DISC-TEMPL)
     )
    )
   )

  ((W::in W::fact)
   (SENSES
    ((LF-PARENT ONT::DEGREE-OF-BELIEF)
     (LF-FORM W::IN-FACT)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::modifier)
     (LF-FORM W::IN-FACT)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )

  ((w::in w::order W::TO)
   (SENSES
    ((LF-PARENT ONT::PURPOSE)
     (meta-data :origin calo :entry-date 20040923 :change-date nil :comments caloy2)
     (example "I did it in order to win")
     (TEMPL BINARY-CONSTRAINT-S-VPbase-TEMPL)
     )
    )
   )
  
  ((W::in W::addition W::to)
   (SENSES
    ((LF-PARENT ONT::ADDITIVE)
     (TEMPL binary-constraint-S-templ)
     )
    ((LF-PARENT ONT::ADDITIVE)
     (TEMPL binary-constraint-s-ing-templ)
     )
    )
   )
  (W::instead
   (wordfeats (W::ALLOW-DELETED-COMP +))
   (SENSES
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-S-templ)
     )
    )
   )
  ((W::INSTEAD W::of)
   (SENSES
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-S-templ)
     )
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-s-ing-templ)
     )
    )
   )
  ((W::as w::well)
   ;;   (wordfeats (W::ALLOW-DELETED-COMP +))
   (SENSES
    ((LF-PARENT ONT::additive)
     (LF-FORM W::as-well)
     ;; MD - beetle fix
     ;; removed wordfeats changed binary-constraint to another templ b/c we don't have the binary possibility AS-WELL + complement
     ;;     (TEMPL binary-constraint-S-templ)
     (TEMPL PRED-S-VP-IMPLICIT-TEMPL)
     )
    ;; MD - beetle fix
    ;; added a new definition to support as-well in "is it in the closed path as well?". This is a temporary fix, because really we need to allow more adverbials after "be" in this YNQ situation.
    ;; made it a low preference so that it does not compete with the full definition above
    ((LF-PARENT ONT::additive)
     (LF-FORM w::as-well)
     (TEMPL DISC-POST-UTT-TEMPL)
     (preference 0.93)
     )
    )
   )
   (w::furthermore
   (SENSES
    ((LF-PARENT ONT::additive)
      (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
     (TEMPL disc-TEMPL)
     )
    )
   )
  (w::moreover
   (SENSES
    ((LF-PARENT ONT::additive)
     (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
     (TEMPL disc-TEMPL)
     )
    )
   )
   (w::likewise
   (SENSES
    ((LF-PARENT ONT::additive)
     (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
     (TEMPL disc-TEMPL)
     )
    )
   )
    (w::similarly
   (SENSES
    ((LF-PARENT ONT::additive)
     (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
     (TEMPL disc-TEMPL)
     )
    )
   )
  ((W::as w::well W::as)
   (SENSES
    ((LF-PARENT ONT::additive)
     (LF-FORM W::as-well-as)
     (example "this as well as that")
     (TEMPL binary-constraint-S-or-NP-templ)
     )
    ((LF-PARENT ONT::additive)
     (LF-FORM W::as-well-as)
     (TEMPL binary-constraint-s-ing-templ)
     )
    )
   )
  ((W::as w::opposed w::to)
   (SENSES
    ((EXAMPLE "he wants the truck as opposed to the car")
     (LF-PARENT ONT::CHOICE-OPTION)
     (TEMPL binary-constraint-S-templ)
     (meta-data :origin caloy2 :entry-date 20050509 :change-date nil :comments projector-purchasing)
     )
    ((EXAMPLE "running as opposed to walking")
     (LF-PARENT ONT::CHOICE-OPTION)
     (TEMPL binary-constraint-S-ing-templ)
     (meta-data :origin caloy2 :entry-date 20050509 :change-date nil :comments projector-purchasing)
     )
    ))
  
  ((W::rather W::than)
   (SENSES
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-S-templ)
     )
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-s-ing-templ)
     )
    )
   )
  ((W::in W::place W::of)
   (SENSES
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-S-templ)
     )
    ((LF-PARENT ONT::CHOICE-OPTION)
     (LF-FORM W::INSTEAD-OF)
     (TEMPL binary-constraint-s-ing-templ)
     )
    )
   )
))


(define-words :pos W::adv :templ PPWORD-ADV-TEMPL
 :words (
  ((W::on W::an W::empty W::stomach)
   (wordfeats (W::morph NIL))
   (SENSES
    ((LF-PARENT ONT::assoc-with)
     (LF-FORM W::with_meal)
     (TEMPL ppword-adv-templ (xp (% W::s)))
     (SYNTAX (W::atype W::post))
     )
    )
   )
  ((W::on W::a W::full W::stomach)
   (wordfeats (W::morph NIL))
   (SENSES
    ((LF-PARENT ONT::assoc-with)
     (LF-FORM W::without_meal)
     (TEMPL ppword-adv-templ (xp (% W::s)))
     (SYNTAX (W::atype W::post))
     )
    )
   )
  ))


;; Added by myrosia for Bee corpus
(define-words 
    :pos W::adv :templ pred-s-post-templ
    :words (
	    (w::in
	     (senses
	      ((lf-parent ont::manner)
	       (meta-data :origin bee :entry-date 20040407 :change-date 20080417 :comments (test-s36 test-s37)) 
	       (example "in general" "in particular" "in short" "in series" "in parallel" "in full" "in earnest" "the room is done in green")
	       ;; a restriction to ADJP with no arguments
	       (templ binary-constraint-S-templ (xp (% w::ADJP (w::var ?var) (w::sem ?sem) (w::set-modifier -))))
	       (preference 0.93)
	       )
	      ))
	    (w::all
	     (senses
	      ((LF-PARENT ONT::Modifier) ;; NO GOOD PLACE YET -- WILL HAVE TO SEE
	       (TEMPL PRED-VP-PRE-TEMPL)
	       (example "they will all be off")
	       (preference 0.91)
	       (meta-data :origin beetle2 :entry-date 20080513 :change-date nil :comments (pilot2) :wn nil)
	       )
	      ))
	    (w::both
	     (senses
	      ((LF-PARENT ONT::Modifier) ;; NO GOOD PLACE YET -- WILL HAVE TO SEE
	       (TEMPL PRED-VP-PRE-TEMPL)
	       (example "they both will be off")
	       (preference 0.91)
	       (meta-data :origin beetle2 :entry-date 20080513 :change-date nil :comments (pilot2) :wn nil)
	       )
	      ))

	    ))




;; added for portability experiment
(define-words 
 :pos W::adv :templ pred-vp-templ
 :words  
 (
  (w::slightly
   (senses
    ((lf-parent ont::modifier)
     (example "turn slightly")
     (meta-data :origin bee :entry-date 20040614 :change-date nil :comments portability-experiment)
     )
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (meta-data :origin calo :entry-date 20050215 :change-date nil :comments caloy2)
     (example "there's a slightly quieter one but it weighs 5 pounds")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     )
    ))
  
  (w::repeatedly
   (senses
    ((lf-parent ont::repetition)
     (example "change repeatedly")
     (meta-data :origin bee :entry-date 20040614 :change-date nil :comments portability-experiment)
     )	   	     
    ))
  ))
	     


;; added for lam
(define-words 
 :pos W::adv :templ pred-vp-templ
 :words  
 (
  (w::remotely
   (senses
    ((LF-PARENT ONT::DEGREE-MODIFIER)
     (meta-data :origin lam :entry-date 20050421 :change-date nil :comments lam-initial)
     (example "not even remotely close")
     (TEMPL ADJ-OPERATOR-TEMPL)
     )
    ))
  ))
	     

(define-words :pos W::adv :templ DISC-PRE-TEMPL 
 :words (
         (w::evidently
	  (senses
	   ((LF-PARENT ONT::degree-of-belief)
	    (TEMPL DISC-TEMPL)
	    (example "Evidently Chiang works")
	    (meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::degree-of-belief)
	    (TEMPL PRED-VP-PRE-TEMPL)
	    (example "Chiang evidently works")
	    (meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::competently
	  (SENSES
	   ((LF-PARENT ONT::manner)
	    (TEMPL PRED-VP-TEMPL)
	    (example "Abrams competently works")
	    (meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::merely
	  (SENSES
	   ((LF-PARENT ONT::restriction) ;; like only?
	    (TEMPL PRED-S-VP-TEMPL)
	    (example "Browne merely works")
	    (meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
	    )
	   )	  
	  )
	 (W::fast
	  (SENSES
	   ((LF-PARENT ONT::manner)
	    (TEMPL PRED-S-POST-TEMPL)
	    (example "Browne works fast")
	    (meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil :wn nil)
	    )
	   )	  
	  )
	 (W::hard
	  (SENSES
	   ((LF-PARENT ONT::manner)
	    (TEMPL PRED-S-POST-TEMPL)
	    (example "Browne works hard")
	    (meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil :wn nil)
	    )
	   )	  
	  )
	 )
 )

;; defining these independently from the adj form to get the right handling in cardiac
(define-words :pos W::adv :templ PRED-VP-TEMPL 
 :words (
 	 (W::badly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::med))
	    (example "his ankles are badly swollen")
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::med))
	    (example "his ankles swelled badly")
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::tolerably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are tolerably swollen")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "his ankles swelled tolerably")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::intolerably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are badly swollen")
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he ran badly")
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::exceptionally
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are exceptionally swollen")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi)) ;; not pos in symptom context!
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed exceptionally on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::remarkably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are remarkably swollen" "he is remarkably healthy")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi)) ;; not pos in symptom context!
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed remarkably on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::dismally
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are dismally swollen" "he is dismally ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed dismally on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::wretchedly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are dismally swollen" "he is dismally ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed dismally on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::insufferably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are insufferably swollen" "he is insufferably ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed insufferably on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::horribly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are horribly swollen" "he is horribly ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed horribly on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::wickedly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are wickedly swollen" "he is wickedly ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed wickedly on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::ridiculously
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are ridiculously swollen" "he is ridiculously ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed ridiculously on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::terribly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are terribly swollen" "he is terribly ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed terribly on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::fabulously
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are fabulously swollen" "he is fabulously ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed fabulously on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::terrifically
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are terrifically swollen" "he is terrifically ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed terrifically on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	   (W::wonderfully
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are wonderfully strong" "he is wonderfully healthy")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed wonderfully on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::awesomely
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are awesomely strong" "he is awesomely healthy")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed awesomely on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::acceptably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are acceptably strong" "he is acceptably healthy")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed acceptably on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::unacceptably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are unacceptably weak" "he is unacceptably lazy")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed unacceptably on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::unbearably
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are unbearably weak" "he is unbearably lazy")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed unbearably on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::incredibly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are incredibly swollen" "he is incredibly ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed incredibly on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::fantastically
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are fantastically swollen" "he is fantastically ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed fantastically on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::amazingly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are amazingly swollen" "he is amazingly ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed amazingly on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::tremendously
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are tremendously swollen" "he is tremendously ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed tremendously on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
       (W::phenomenally
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are phenomenally swollen" "he is phenomenally ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed phenomenally on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
       (W::spectacularly
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are spectacularly swollen" "he is spectacularly ill")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed spectacularly on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
         (W::nicely
	  (SENSES
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are nicely recovered" "he is nicely situated")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::acceptability-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed nicely on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::med))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::severely
	  (SENSES
	   ((LF-PARENT ONT::severity-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are severely swollen")
	    (SEM (f::gradability +) (f::orientation -) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::severity-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he spoke severely")
	    (SEM (f::gradability +) (f::orientation -) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
         (W::oppressively
	  (SENSES
	   ((LF-PARENT ONT::severity-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are oppressively swollen")
	    (SEM (f::gradability +) (f::orientation -) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::severity-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he spoke oppressively")
	    (SEM (f::gradability +) (f::orientation -) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	(W::excruciatingly
	  (SENSES
	   ((LF-PARENT ONT::severity-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are excruciatingly swollen")
	    (SEM (f::gradability +) (f::orientation -) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	  )
	  )
	(W::stiflingly
	  (SENSES
	   ((LF-PARENT ONT::severity-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his breath is stiflingly bad")
	    (SEM (f::gradability +) (f::orientation -) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	  )
	  )
	 )
 )
