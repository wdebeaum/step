
(in-package :lxm)

(define-words :pos W::pro :boost-word t :templ PRONOUN-TEMPL
 :words (
 (W::ANYBODY
  (wordfeats (ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-INDEF-TEMPL)
     )
    )
   )
  (W::ANYONE
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-INDEF-TEMPL)
     (SYNTAX (W::ELSE-WORD +))
     )
    )
   )
  (W::EVERYBODY
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-QUAN-TEMPL)
     )
    )
   )
  (W::EVERYONE
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-QUAN-TEMPL)
     )
    )
   )
  (W::SOMEBODY
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-INDEF-TEMPL)
     )
    )
   )
  (W::SOMEONE
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-INDEF-TEMPL)
     )
    )
   )
  (W::NOBODY
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-QUAN-TEMPL)
     )
    )
   )
  (W::NOONE
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-QUAN-TEMPL)
     )
    )
   )
  (W::ANYTHING
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-INDEF-TEMPL)
     )
    )
   )
   (W::SOMETHING
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-INDEF-TEMPL)
     )
    )
   )
  (W::NOTHING
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-QUAN-TEMPL)
     )
    )
   )
  (W::EVERYTHING
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-QUAN-TEMPL)
     )
    )
   )
  (W::I
   (wordfeats (W::agr W::1S) (W::CASE W::SUB))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::ME
   (wordfeats (W::agr W::1s) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::MYSELF
   (wordfeats (W::agr W::1S) (W::stem W::Me) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::WE
   (wordfeats (W::agr W::1p) (W::CASE W::SUB))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (templ pronoun-plural-templ)
     )
    )
   )
  (W::US
   (wordfeats (W::agr W::1p) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (templ pronoun-plural-templ)
     )
    )
   )

  (W::OURSELVES
   (wordfeats (W::agr W::1p) (W::stem W::we) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (templ pronoun-plural-templ)
     )
    )
   )

  (W::^S
   (wordfeats (W::agr W::1p) (W::lex W::us) (W::case W::obj))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (LF-FORM W::US)
     (PREFERENCE 0.97)
     (templ pronoun-plural-templ)
     )
    )
   )
  (W::YOU
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (SYNTAX (W::agr W::2s) (w::status w::pro))
     )
    ;; 2010 -- prefer 1 complex sense to two entries
;    ((LF-PARENT ONT::PERSON)
;     (SYNTAX (W::agr W::2p))
;     (PREFERENCE 0.98) ;; prefer singular
;     )

    ;; 3/3/2011 -- reinstating two entries now that we distinguish between w::pro and w::pro-set
    ((LF-PARENT ONT::PERSON)
     (SYNTAX (W::agr W::2p) (w::status w::pro-set))
     (PREFERENCE 0.98) ;; prefer singular
     )
    )
   )

  (W::YOURSELF
   (wordfeats (W::agr W::2S) (W::stem W::you) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::YOURSELVES
   (wordfeats (W::agr W::2p) (W::stem W::you) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (templ pronoun-plural-templ)
     )
    )
   )
  (W::HE
   (wordfeats (W::CASE W::SUB))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::HIM
   (wordfeats (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::HIS
   (wordfeats (W::agr w::3s) (W::stem W::he))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL poss-pronoun-templ)
     (example "it is his")
     )
    )
   )
   (W::HERS
    (wordfeats (W::agr w::3s) (W::stem W::she))
    (SENSES
     ((LF-PARENT ONT::PERSON)
      (TEMPL poss-pronoun-templ)
      (example "it is hers")
      )
     )
    )
   (W::OURS
   (wordfeats (W::agr W::1p) (W::stem W::we))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL poss-pronoun-templ)
     (example "it is ours")
     )
    )
   )
   (W::YOURS
   (wordfeats (W::agr (? ag W::2s w::2p)) (W::stem W::you))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL poss-pronoun-templ)
     (example "it is yours")
     )
    )
   )
   (W::THEIRS
   (wordfeats (W::agr W::3p) (W::stem W::they))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL poss-pronoun-templ)
     (example "it is theirs")
     )
    )
   )
   (W::MINE
   (wordfeats (W::agr W::1s) (W::stem W::me))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL poss-pronoun-templ)
     (example "it is mine")
     )
    )
   )
  (W::HIMSELF
   (wordfeats (W::stem W::him) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::ONESELF
   (wordfeats (W::stem W::him) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (meta-data :origin "gloss-training" :entry-date 20100217 :change-date nil :comments nil)
     )
    )
   )
  (W::Y^
   (wordfeats (W::lex W::you) (W::agr (? a W::2s W::2P)))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (LF-FORM W::YOU)
     )
    )
   )
  (W::SHE
   (wordfeats (W::CASE W::SUB))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::HER
   (SENSES
     ((LF-PARENT ONT::PERSON)
     (SYNTAX (W::CASE W::OBJ))
     )
    )
   )
  (W::HERSELF
   (wordfeats (W::stem W::her) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::IT
   (SENSES
    (;(sem (f::intentional -)) ;; can be a company, a country
     (LF-PARENT ONT::REFERENTIAL-SEM)
     )
    ;;;;; expletive it
    ((LF W::EXPLETIVE)
     (non-hierarchy-lf t)(SYNTAX (W::CASE W::SUB) (W::expletive +))
     )
    )
   )

  (W::ITSELF
   (wordfeats (W::stem W::it) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     )
    )
   )
  (W::THEY
   (wordfeats (W::agr W::3P) (W::CASE W::SUB))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (templ pronoun-plural-templ)
     )
    )
   )
  (W::THEM
   (wordfeats (W::agr W::3P) (w::case w::obj))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (templ pronoun-plural-templ)
     )
    )
   )

  (W::THEMSELVES
   (wordfeats (W::AGR W::3P) (W::REFL +) (W::CASE W::OBJ))
   (SENSES
    ;; why isn't this ont::person?
    ;; doesn't have to refer to a person. The books themselves survived the flood, but the shelves were swept away
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (templ pronoun-plural-templ)
     )
    )
   )
  ((W::each w::other)
   (wordfeats (W::agr W::3p) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL pronoun-reciprocal-templ)
     (meta-data :origin csli-ts :entry-date 20070322 :change-date 20081111 :comments nil)
     (example "they evaluated each other" "they evaluated each other's projects" "the terminals are connected to each other")
     )
    )
   )
  ((W::one w::another)
   (wordfeats (W::agr W::3p) (W::CASE W::OBJ))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL pronoun-indef-templ)
     (meta-data :origin csli-ts :entry-date 20070322 :change-date 20081111 :comments nil)
     (example "they evaluated each other" "they evaluated each other's projects")
     )
    )
   )

 (w::another
  (wordfeats (W::agr W::3s))
  (SENSES
   ((LF-PARENT ONT::REFERENTIAL-SEM)
    (TEMPL pronoun-indef-templ)
    (example "they took another")
    )
   )
  )
  
  (W::^EM
   (wordfeats (W::agr W::3P) (w::case w::obj))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (LF-FORM W::THEM)
     (templ pronoun-plural-templ)
     )
    )
   )
  (W::THERE
   (wordfeats (W::CASE W::SUB) (W::agr (? ag W::3s W::3p)) (W::sing-lf-only +))
   (SENSES
    ((LF W::EXPLETIVE)
     (non-hierarchy-lf t))
    )
   )
  (W::ONE
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-INDEF-TEMPL) ;; need PRO INDEF to get one's
     (example "how does one do that" "a room of one's own")
     )
    )
   )

  ;; this is not a pronoun
;;;  ((W::THE W::OTHER)
;;;   (SENSES
;;;    ((LF-PARENT ONT::REFERENTIAL-SEM)
;;;     )
;;;    )
;;;   )


  (W::THAT
   (SENSES
    ;;;;; pronoun THAT, we prefer a situation antecedent if possible, but allow anything
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     ;; (SEM (F::origin (? !n F::human)))
     (SYNTAX (W::WH W::R) (W::agr (? agr W::3s W::3p)) (W::sing-lf-only +))
     )
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SEM (F::origin (? !n F::human)))
     (SYNTAX (W::WH -) (W::agr (? agr W::3s W::3p)) (W::case W::obj) (W::sing-lf-only +))
     )
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SEM (F::origin (? !n F::human)))
     (SYNTAX (W::WH -) (W::agr W::3s) (W::case W::sub) (W::sing-lf-only +))
     )
    )
   )
  (W::THOSE
   (wordfeats (W::WH (? WH W::R -)) (W::agr W::3p))
   (SENSES
    ;;;;;;	 ((sem (origin (? !n f_human)))
    ;;;;;;	 (LF-PARENT LF_ANY-PHYS-OBJECT))
    ;;;;;;	 ((LF-PARENT LF_ANY-ABSTRACT-OBJECT))
    ;;;;;;	 ((LF-PARENT LF_SITUATION-ROOT))
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SYNTAX (w::status w::pro-set))
     (SEM (F::origin (? !n F::human)))
     )
    )
   )
  (W::THESE
   (wordfeats (W::WH (? WH W::R -)) (W::agr W::3p))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SYNTAX (w::status w::pro-set))
     (SEM (F::origin (? !n F::human)))
     )
    )
   )
  (W::THIS
   (wordfeats (W::pointer +) (W::sing-lf-only +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SEM (F::origin (? !n F::human)))
     )
    )
   )
  (W::WHATEVER
   (wordfeats (W::WH W::Q) (W::sing-lf-only +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-WH-TEMPL)
     )
    )
   )
  (W::WHICHEVER
   (wordfeats (W::WH W::Q) (W::sing-lf-only +))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-WH-TEMPL)
     )
    )
   )
  (W::WHAT
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SEM (F::origin (? !n F::human)))
     (TEMPL pronoun-wh-templ)
     (SYNTAX (W::agr (? agr W::3s W::3p)) (W::wh W::Q) (W::case W::obj) (W::sing-lf-only +))
     )
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SEM (F::origin (? !n F::human)))
     (TEMPL pronoun-wh-templ)
     (SYNTAX (W::agr W::3s) (W::wh W::Q) (W::case W::sub))
     )
    )
   )
  (W::WHEN
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (TEMPL PRONOUN-WH-TEMPL)
     (SYNTAX (W::wh W::r) (W::case W::obj) (W::sing-lf-only +))
     )
    )
   )
  (W::WHERE
   (SENSES
    ;;;;;(sem (information f_information-content))
    ((LF-PARENT ONT::LOCATION)
      (TEMPL PRONOUN-WH-TEMPL)
     (SYNTAX (W::wh W::r) (W::case W::obj) (W::sing-lf-only +))
     )
    ;;;;; (sem (information f_information-content))
;    ((LF-PARENT ONT::PATH)
;     (TEMPL PRONOUN-WH-TEMPL)
;     (SYNTAX (W::wh W::r) (W::case W::obj) (W::sing-lf-only +))
;     )
    )
   )
  (W::WHICH
   (wordfeats (W::sing-lf-only +)  (W::case (? cas W::sub W::obj -)))
   (SENSES
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (SYNTAX (W::wh W::R))
     (TEMPL PRONOUN-WH-TEMPL)
     )
    ((LF-PARENT ONT::REFERENTIAL-SEM)
     (TEMPL PRONOUN-WH-TEMPL)
     (SYNTAX (W::wh W::Q))
     (preference 0.92) ;; MD 2009/03/18 this should only happen if other options are infeasible
     ;; having a higher preference will cause legitimate relative clauses, such as "because the battery is in a closed path which does not contain a bulb", to interpred as wh-questions
     )        
    )
   )
  (W::WHO
   (wordfeats (W::sing-lf-only +) (W::agr ?agr) (W::ELSE-WORD +) (W::WH (? wh W::Q W::R)))
   (SENSES
    ((LF-PARENT ONT::person)
     (TEMPL PRONOUN-WH-TEMPL)
     )
    )
   )
  (W::WHOEVER
   (wordfeats (W::sing-lf-only +) (W::agr ?agr) (W::ELSE-WORD +) (W::WH (? wh W::Q W::R)))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s14)
     (LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-WH-TEMPL)
     )
    )
   )
  (W::WHOM
   (wordfeats (W::agr ?agr) (W::sing-lf-only +) (W::ELSE-WORD +) (W::case W::OBJ) (W::WH (? wh W::Q W::R 
     )))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (TEMPL PRONOUN-WH-TEMPL)
     )
    )
   )
 
  (W::WHOSE
   (wordfeats (W::agr ?agr) (w::case (? cas w::sub w::obj -)) (W::sing-lf-only +))
   (SENSES
    ((LF-PARENT ONT::person)
     (example "whose")
     (SYNTAX (W::wh (? wh W::Q)))
     (TEMPL poss-pronoun-templ)
     (preference .97) ; prefer det sense: whose dog
     )
    )
   )

  ))

;; these must modify a noun e.g. my/your/his/her book -- unlike possessive pronouns that can stand alone: mine, yours
(define-words :pos W::pro :boost-word t :templ poss-pro-det-templ
 :words (
	  (W::MY
	   (wordfeats (W::agr W::1S) (W::stem W::Me))
	   (SENSES
	    ((LF-PARENT ONT::PERSON))
	    )
	   )
	   (W::YOUR
	   (wordfeats (W::agr (? ag W::2S W::2p)) (W::stem W::you))
	   (SENSES
	    ((LF-PARENT ONT::PERSON))
	    )
	   )
	   (W::HIS
	   (wordfeats (W::agr W::3s) (W::stem W::he))
	   (SENSES
	    ((LF-PARENT ONT::PERSON))
	    )
	   )
	  (W::HER
	   (wordfeats (W::agr W::3s) (W::stem W::she))
	   (SENSES
	    ((LF-PARENT ONT::PERSON))
	    )
	   )
	  (W::ITS
	   (wordfeats (W::stem W::it))
	   (SENSES
	    ((LF-PARENT ONT::REFERENTIAL-SEM)
	     )
	    )
	   )
	  (W::OUR
	   (wordfeats (W::agr W::1p) (W::stem W::we))
	   (SENSES
	    ((LF-PARENT ONT::PERSON))
	    )
	   )
	  (W::THEIR
	   (wordfeats (W::agr W::3p) (W::stem W::they))
	   (SENSES
	    ;; MD 11/11/2008 changed to referential-sem because "their terminals" can refer to "the bulbs' terminals"
	    ((LF-PARENT ONT::REFERENTIAL-SEM))
	    )
	   )
	   (W::whose
	    (wordfeats (W::agr (? ag W::3s w::3p)) (W::stem W::who))
	   (SENSES
	    ((LF-PARENT ONT::referential-sem)
	     (example "the man whose dog barked" "the table whose legs wobble")
	     )
	     )
	    )
 	 )
 )

(define-words :pos W::adv :templ PPWORD-QUESTION-ADV-TEMPL
 :words (
  (W::HOW
   (SENSES
    ((LF-PARENT ONT::METHOD)
     (example "how did he do it")
     (SYNTAX (W::IMPRO-CLASS ONT::method))
     (SEM (F::information F::information-content))
     )
    )
   )
  (W::HOW
   (SENSES
    ((LF-PARENT ONT::DEGREE)
     (example "how blue is it")
     (SYNTAX (W::IMPRO-CLASS ONT::degree))
     (SEM (F::information F::information-content))
     (templ ppword-question-adv-how-templ)
     (preference .97) ;; prefer method sense
     )
    )
   )
   ((W::HOW w::long)
    (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::time-duration-rel)
     (example "how long did it take")
     (meta-data :origin step :entry-date 20080722 :change-date nil :comments step1) 
     (SYNTAX (W::IMPRO-CLASS ONT::degree))
     (templ ppword-question-adv-templ)
     (preference .96) ;; prefer bare word
     )
    )
   )
   ((W::HOW w::far)
    (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((lf-parent ont::spatial-distance-rel)
     (example "how far did he run")
     (meta-data :origin step :entry-date 20080722 :change-date nil :comments step1) 
     (SYNTAX (W::IMPRO-CLASS ONT::degree))
     (SEM (F::information F::information-content))
     (templ ppword-question-adv-templ)
     (preference .96)
     )
    )
   )
   
  (W::WHY
   (SENSES
    ((LF-PARENT ONT::REASON-FOR)
     (SYNTAX (W::IMPRO-CLASS ONT::reason-for))
     (SEM (F::information F::information-content))
     )
    )
   )
  (W::WHEN
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS ONT::TIME-POINT))
     (TEMPL ppword-question-adv-pred-templ)
     (SEM (F::information F::information-content))
     )
    )
   )
  (W::WHERE
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     (TEMPL ppword-question-adv-pred-templ)
     (SEM (F::information F::information-content))
     )
    ((LF-PARENT ONT::TO-LOC)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     (SEM (F::information F::information-content))
     )
    )
   )
  (W::WHEREVER
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s15)
     (LF-PARENT ONT::TO-LOC)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     (SEM (F::information F::information-content))
     )
    )
   )
  ))

(define-words :pos W::adv :templ PPWORD-ADV-TEMPL
 :words (
  (W::HERE
   (SENSES
    ((LF-PARENT ONT::here)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    ((LF-PARENT ONT::TO-LOC)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     (example "move it to here")
     (preference .97) ;; prefer spatial-loc sense for be
     )
    )
   )
  (W::NOW
   (wordfeats (W::ATYPE (? atype W::pre W::post)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::NOW)))
     )
    ))

  (W::SOMEPLACE
   (wordfeats (W::else-word +))
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    )
   )
  (W::SOMEWHERE
   (wordfeats (W::else-word +))
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    )
   )
  (W::ELSEWHERE
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     (meta-data :origin step :entry-date 20080724 :change-date nil :comments step6) 
     )
    )
   )
  (W::THERE
   (SENSES
    ((LF-PARENT ONT::there)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    ((LF-PARENT ONT::TO-LOC)
     (example "move it to there")
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     (TEMPL ppword-adv-templ (xp (% W::s)))
     )
    )
   )
  (W::TODAY
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::TODAY)))
     )
    )
   )
  
  (W::TONIGHT
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
      (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::TONIGHT)))
     )
    )
   )
  (W::THEN
   (wordfeats (W::ATYPE (? atype W::pre-vp W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::THEN)))
     (PREFERENCE 0.98)
     )
    )
   )
  (W::TOMORROW
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::TOMORROW)))
     )
    )
   )
  (W::YESTERDAY
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::YESTERDAY)))
     )
    )
   )
  (W::SOMETIME
   (wordfeats (W::ATYPE (? atype W::pre W::post)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::SOMETIME)))
     )
    )
   )

   (W::ANYTIME
   (wordfeats (W::ATYPE (? atype W::pre W::post)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::ANYTIME)))
     (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     )
    )
   )
  ;; making this a frequency adverb like always
;  (W::SOMETIMES
;   (wordfeats (W::ATYPE (? atype W::pre W::post)))
;   (SENSES
;    ((LF-PARENT ONT::EVENT-TIME-REL)
;     )
;    )
;   )
  (W::ANYWHERE
   (wordfeats (W::else-word +))
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    )
   )
  (W::EVERYWHERE
   (wordfeats (W::else-word +))
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    )
   )
  (W::ANYPLACE
   (wordfeats (W::else-word +))
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (SYNTAX (W::IMPRO-CLASS ONT::LOCATION))
     )
    )
   )
  (W::yet
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (example "add the best answer yet to the list of choices")
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::YET)))
     )
    )
   )
  ((w::to w::date)
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (example "add the best answer to date to the list of choices")
     (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::TO-DATE)))
     )
    )
   )
  ((w::so w::far)
   (wordfeats (W::ATYPE (? atype W::pre W::post w::pre-vp)))
   (SENSES
    ((LF-PARENT ONT::EVENT-TIME-REL)
     (example "add the best answer so far to the list of choices")
      (SYNTAX (W::IMPRO-CLASS (:* ONT::TIME-LOC W::SO-FAR)))
     )
    )
   )
  
  ))

(define-words :pos W::n :templ PPWORD-N-TEMPL
 :words (
  (W::WHEN
   (wordfeats (W::WH W::Q))
   (SENSES
    ((LF-PARENT ONT::Time-point)
     (PREFERENCE 0.9) ;; really prefer adv
     )
    )
   )
  (W::WHERE
   (wordfeats (W::WH W::Q))
   (SENSES
    ((LF-PARENT ONT::LOCATION)
     (PREFERENCE 0.9) ;; really prefer adv
     )
    )
   )
  ((W::HOW w::far)
   (wordfeats (W::morph (:forms (-none)) (w::wh w::q)))
   (SENSES
    ((LF-PARENT ONT::distance)
     (example "how far did he run")
     (meta-data :origin step :entry-date 20080722 :change-date nil :comments step1) 
     (PREFERENCE 0.9) ; really prefer adv
     )))
  ((W::HOW w::long)
   (wordfeats (W::morph (:forms (-none)) (w::wh w::q)))
   (SENSES
    ((LF-PARENT ont::duration)
     (example "how long did he run")
     (meta-data :origin step :entry-date 20080722 :change-date nil :comments step1) 
     (PREFERENCE 0.96) ; prefer adv
     )))
  (W::HERE
   (SENSES
    ((LF-PARENT ONT::PLACE)
     (PREFERENCE 0.9) ; really prefer adv
     )
    )
   )
  (W::NOW
   (SENSES
    ((LF-PARENT ONT::DATE-OBJECT)
     (PREFERENCE 0.97)
     )
    )
   )
   (W::THEN
   (SENSES
    ((LF-PARENT ONT::DATE-OBJECT)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::SOMEPLACE
   (SENSES
    ((LF-PARENT ONT::PLACE)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::SOMEWHERE
   (wordfeats (W::ELSE-WORD +))
   (SENSES
    ((LF-PARENT ONT::LOCATION)
     (PREFERENCE 0.97)
     )
    )
   )
  ;; what's an example of this? 
  (W::THERE
   (SENSES
    ((LF-PARENT ONT::LOCATION)
     (SYNTAX (W::case W::obj))
     (PREFERENCE 0.97)
     )
    )
   )
  (W::TODAY
   (SENSES
    ((LF-PARENT ONT::DATE-OBJECT)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::TONIGHT
   (SENSES
    ((LF-PARENT ONT::DATE-OBJECT)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::TOMORROW
   (SENSES
    ((LF-PARENT ONT::DATE-OBJECT)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::YESTERDAY
   (SENSES
    ((LF-PARENT ONT::DATE-OBJECT)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::ANYWHERE
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     (PREFERENCE 0.97)
     )
    )
   )
  (W::EVERYWHERE
   (wordfeats (W::else-word +))
   (SENSES
    ((LF-PARENT ONT::WH-LOCATION)
     )
    )
   )
  ))

;; e.g Mondays are good for him, the monday before last etc.
(define-list-of-words :pos W::name
  :senses
  (((LF-PARENT ONT::DAY-NAME)
    (TEMPL PPWORD-N-TEMPL)))
  :words (W::MONDAY  W::TUESDAY W::WEDNESDAY W::THURSDAY W::FRIDAY W::SATURDAY W::SUNDAY)
  )

#||   These should not be necessary as we have special NP -> ADVBL rules for temporal expressions
;; meet next monday
(define-list-of-words :pos W::adv
  :senses
  (((LF-PARENT ONT::DAY-NAME)
    (PREFERENCE 0.97) 
    (TEMPL PPWORD-ADV-TEMPL)))
  :words (W::MONDAY  W::TUESDAY W::WEDNESDAY W::THURSDAY W::FRIDAY W::SATURDAY W::SUNDAY)
  )
||#
