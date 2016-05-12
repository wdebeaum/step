(in-package :lxm)

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::nonhuman-animal) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words ( w::cat w::dog  w::horse w::cow)  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::bird) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::bird)  
  )

;; external
(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::external-body-part)
    (TEMPL body-part-reln-templ)
    )
   )
 :words (
   W::FACE W::FINGER W::HEAD))

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (

;; N 1
  (W::PERSON
   (wordfeats (W::morph (:forms (-s-3p) :plur W::people)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("person%1:03:00"))
     (LF-PARENT ONT::PERSON)
     )
    )
   )

;; N 2
 (W::YEAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::time-unit)
     (example "a 3 year warranty")
     (templ substance-unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )

;; N 3
 (W::WAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::procedure)
     (templ other-reln-templ)
     (example "this is the way to paint a house")
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("way%1:06:00"))
     (LF-PARENT ONT::ROUTE)
     (example "do you know the way to calderon")
     )
    ((LF-PARENT ONT::direction)
     (example "orient the camera this way")
     (meta-data :origin calo-ontology :entry-date 20051209 :change-date nil :wn ("way%1:15:00") :comments Orient)
     )
     ((LF-PARENT ONT::distance)
     (example "it is a long way to the next oasis")
     (meta-data :origin navigation :entry-date 20080903 :change-date nil :comments nil)
     )
    )
   )

;; N 4
 (W::DAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("day%1:28:00" "day%1:28:06"))
     (LF-PARENT ONT::time-unit)
     (example "day of 24 hours" "for some days" "a 5-day week")
     (templ unit-templ)
     )

    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )

;; N 5
 (W::THING
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("thing%1:03:00"))
     (LF-PARENT ONT::referential-sem)
     )
    )
   )

;; N 6
 (W::MAN
   (wordfeats (W::morph (:forms (-s-3p) :plur W::men)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("man%1:18:00"))
     (LF-PARENT ONT::male)
     )
    )
   )


;; N 7
  (W::world
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("world%1:17:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

;; N 8
   (W::life
    (wordfeats (W::morph (:forms (-s-3p) :plur w::lives)))
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050816 :comments lf-restructuring)
     (LF-PARENT ONT::life-process)
     )
    )
   )

;; N 9
  (W::HAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::external-body-part)
     (TEMPL BODY-PART-RELN-TEMPL)
     )
    )
   )

;; N 10
 (W::PART
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("part%1:24:00"))
     (LF-PARENT ONT::part)
     (TEMPL other-reln-TEMPL)
     )
    )
   )

;; N 11
 (W::child
   (wordfeats (W::morph (:forms (-S-3P) :plur w::children)))
    (SENSES
     ((LF-PARENT ONT::child)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )

;; N 12
  (W::EYE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::external-body-part)
     (TEMPL BODY-PART-RELN-TEMPL)
     )
    )
   )

;; N 13
 (W::WOMAN
   (wordfeats (W::morph (:forms (-s-3p) :plur W::women)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("woman%1:18:00"))
     (LF-PARENT ONT::female)
     )
    )
   )

;; N 14
 (W::PLACE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("place%1:15:00" "place%1:15:04"))
     (LF-PARENT ONT::PLACE)
     )
    )
   )

;; N 15
 (W::WORK
   (SENSES
    ((meta-data :origin calo :entry-date 20040423 :change-date nil :wn ("work%1:06:00") :comments caloy1v6)
     (LF-PARENT ONT::information-function-object)
     (example "a big disk to store my work")
     )
    )
   )

;; N 16
 (W::WEEK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::time-unit)
     (templ substance-unit-templ)
     (example "two weeks of work")
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     (example "next week")
     )
    )
   )
 

;; N 17
  (W::CASE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("case%1:26:00"))
     (LF-PARENT ONT::SITUATION)
     )
    ((LF-PARENT ONT::manufactured-object)
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("case%1:06:00") :comments Office)
     (example "shop for business cases online")
     )
    )
   )


;; N 18
(W::POINT
   (SENSES
    ((LF-PARENT ONT::shape)
     (example "the flag with the point on it")
     (meta-data :origin fruitcarts :entry-date 20050401 :change-date nil :wn ("point%1:25:02") :comments fruitcarts-03-3)
     )
    ((LF-PARENT ONT::referential-sem)
     (example "a five point scale")
     (meta-data :origin plow :entry-date 20060523 :change-date nil :comments pq)
     (preference .96)
     )
    )
   )

;; N 19
 (w::government
   (SENSES
    ((LF-PARENT ONT::federal-organization)
     (EXAMPLE "the government ensures law and order")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("government%1:14:00") :comments nil)
     )
    )
   )

;; N 20
 (W::COMPANY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::military-group)
     (example "a company of soldiers")
     (TEMPL classifier-count-pl-templ)
     (PREFERENCE 0.97)
     )
    ((meta-data :origin calo :entry-date 20040113 :change-date nil :wn ("company%1:14:01") :comments calo-y1script)
     (LF-PARENT ONT::company)
     (example "a software company")
     (templ count-pred-templ)
     )
    )
   )

;; N 21
 (W::NUMBER
   (SENSES
    ;; a number is now a quantifier -- all other uses are ont::domain
     ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("number%1:07:00"))
      (LF-PARENT ONT::quantity)
      (TEMPL indef-classifier-count-pl-templ)
      (example "a certain number of books on the shelf")
      )
    ((LF-PARENT ONT::number)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("number%1:23:00") :comments nil)
     (example "this parameter is a real number")
     (templ other-reln-templ)
     (preference 0.96) ;; prefer quantifier use if available
     )
    )
   )

;; N 22
 (W::GROUP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil :wn ("group%1:03:00"))
     (LF-PARENT ONT::group-object)
     (example "a group of cars")
     (TEMPL classifier-count-pl-templ)
     )
    ((LF-PARENT ONT::group-object)
     (TEMPL count-pred-templ)
     (syntax (agr (? ag 3s 3p)))
     (SEM (F::intentional +))
     (example "the group entered the building")
     (meta-data :origin caloy-ontology :entry-date 20060220 :change-date 20090520 :comments caloy3)
     )
    )
   )

;; N 23
  (W::PROBLEM
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::PROBLEM)
     )
    )
   )

;; N 24
(W::FACT
   (SENSES
    ((LF-PARENT ONT::FACT)
     (example "the fact that he left")
     (templ count-subcat-that-optional-templ)
     (meta-data :origin trips :entry-date unknown :change-date 20041201 :wn ("fact%1:09:01") :comments caloy2)
     )
    )
   )


 (W::WORD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("word%1:10:00"))
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )

  (W::TIME
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("time%1:28:06"))
     (LF-PARENT ONT::TIME-point)
     (example "what time did it arrive")
     (templ other-reln-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("time%1:28:05" "time%1:28:00" "time%1:28:03" "time%1:28:01"))
     (LF-PARENT ONT::TIME-INTERVAL)
     (example "how much time does it take")
     (SEM (F::time-scale F::interval))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

 (W::HOUR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("hour%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (example "5 hours") ;; quantity terms
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (example "hour of the day")
     (templ time-reln-templ)
     )
    )
   )

 (W::LANGUAGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("language%1:10:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )

  (W::WEIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("weight%1:07:00"))
     (LF-PARENT ONT::WEIGHT)
     (example "the weight of the truck")
     (TEMPL OTHER-RELN-MASS-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("weight%1:07:00"))
     (LF-PARENT ONT::WEIGHT)
     (example "the weight of five pounds")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )

 (W::SENTENCE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sentence%1:10:00"))
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )

 (W::LETTER
   (SENSES
    ((LF-PARENT  ONT::linguistic-object)
     (example "what are the letters of the alphabet")
     )
    ((LF-PARENT ONT::info-medium)
     (example "he wrote a letter to his friend")
     (meta-data :origin calo :entry-date 20041103 :change-date nil :wn ("letter%1:10:00") :comments y2)
     )
    )
   )

 (W::vowel
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "If the language uses vowels above and below characters, Mail places the vowels correctly")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("vowel%1:10:01") :comments nil)
     )
    )
   )
 (W::MILE
   (abbrev w::mi)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mile%1:23:01" "mile%1:23:04" "mile%1:23:05" "mile%1:23:06" "mile%1:23:03" "mile%1:23:02"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )

 (W::RIVER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("river%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

 (W::CAR
 ;;  (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("car%1:06:00"))
     (LF-PARENT ONT::land-vehicle)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("car%1:06:01"))
     (LF-PARENT ONT::BOXCAR)
     (TEMPL pred-subcat-contents-templ)
     (PREFERENCE 0.98)
     )
    )
   )

 (W::BOOK
   (SENSES
    ((LF-PARENT ONT::book)
     (templ count-pred-subcat-originator-optional-templ)
     (example "a book by hemingway")
     (meta-data :origin calo :entry-date 20040716 :change-date 20070517 :wn ("book%1:06:00" "book%1:10:00") :comments y2)
     )
    )
   )

 (W::MUSIC
   (SENSES
    ((meta-data :origin calo :entry-date 20040406 :change-date nil :wn ("music%1:10:00") :comments y1v5)
     (LF-PARENT ONT::music)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

  (W::GROUP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil :wn ("group%1:03:00"))
     (LF-PARENT ONT::group-object)
     (example "a group of cars")
     (TEMPL classifier-count-pl-templ)
     )
    ((LF-PARENT ONT::group-object)
     (TEMPL count-pred-templ)
     (syntax (agr (? ag 3s 3p)))
     (SEM (F::intentional +))
     (example "the group entered the building")
     (meta-data :origin caloy-ontology :entry-date 20060220 :change-date 20090520 :comments caloy3)
     )
    )
   )

(W::FOOT
   (wordfeats (W::morph (:forms (-s-3p) :plur W::feet)))
   (abbrev w::ft)
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("foot%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("foot%1:08:01"))
     (LF-PARENT ONT::external-body-part)
     (TEMPL BODY-PART-RELN-TEMPL)
     )
    )
   )

 (W::SECOND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("second%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )

 (W::PAPER
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (example "a paper airplane")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("paper%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ((LF-PARENT ONT::info-medium) ;; like newspaper
     (EXAMPLE "i read it in the paper")
     (meta-data :origin calo-ontology :entry-date 20060423 :change-date nil :wn ("paper%1:10:03") :comments nil)
     )
    ))

 (W::EXAMPLE
   (SENSES
    ((meta-data :origin calo :entry-date 20041203 :change-date 20050817 :wn ("example%1:09:00") :comments lf-restructuring)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "here's an example")
     )
    )
   )

 (W::pattern
   (SENSES
    ((LF-PARENT ONT::grouping)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("pattern%1:09:00") :comments nil)
     (example "the legend shows a sample of the color and pattern used for each series")
     )
    )
   )

 (W::PERSON
   (wordfeats (W::morph (:forms (-s-3p) :plur W::people)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("person%1:03:00"))
     (LF-PARENT ONT::PERSON)
     )
    )
   )

 (W::MONEY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("money%1:21:00"))
     (LF-PARENT ONT::MONEY)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

(W::ROAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("road%1:06:00"))
     (LF-PARENT ONT::route)
     )
    )
   )

(W::MAP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("map%1:06:00"))
     (LF-PARENT ONT::MAP)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

 (W::science
   (SENSES
    ((LF-PARENT ONT::discipline) 
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("science%1:09:00") :comments Office)
     )
    )
   )

 (w::rule
	   (senses
	    ((lf-parent ont::information-function-object)
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :comments portability-experiment)
	     )	   	   	   	    
	    ))
  (W::VOICE
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::MEDIUM)
     )
    )
   )

 (W::POWER
   (SENSES
    (;; changed from ont::substance to newly created ont::power for AKRL in OBTW demo
     (meta-data :origin trips :entry-date 20060803 :change-date 20110926 :comments nil)
     (LF-PARENT ONT::power)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

 (W::town
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::district)
     )
    )
   )

 (W::cold
   (SENSES
    ((LF-PARENT ONT::TEMPERATURE)
     (example "severe cold is forecast for today")
     (meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather :wn ("cold%1:07:00" "cold%1:09:00"))
     (TEMPL OTHER-RELN-TEMPL)
     (templ mass-pred-templ)
     )
    )
   )

 (W::form
   (SENSES
    ( ;; 20050325 changed from info-function-object to template-info-object
     (LF-PARENT ONT::template-info-object)
     (example "fill out the requisition form to get approval")
     (meta-data :origin calo :entry-date 20040622 :change-date 20050325 :wn ("form%1:10:01") :comments y2)
     )
    )
   )

 (W::LINE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::grouping)
     (example "a product line" "a line of housewares")
     (templ other-reln-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("line%1:10:01"))
     (LF-PARENT ONT::graphic-symbol)
     (example "the red line on the map")
     )
    )
   )

 (W::girl
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("girl%1:18:04") :comments nil)
     (LF-PARENT ONT::child)
     )
    )
   )
  (W::boy
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("boy%1:18:03") :comments nil)
     (LF-PARENT ONT::child)
     )
    )
   )

 (W::SET
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::group-object)
     (example "a set of dishes")
     (TEMPL classifier-count-pl-templ)
     )
    )
   )

  (W::CENTER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::CENTER)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )

  (W::NAME
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("name%1:10:00"))
     (EXAMPLE "My name is Chester")
     (LF-PARENT ONT::NAME)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::AIR
   (SENSES
    ((LF-PARENT ONT::natural-substance)
     (SEM (F::form F::gas))
     (TEMPL MASS-PRED-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("air%1:27:00") :comments nil)
     )
    )
   )

 (W::END
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("end%1:15:00"))
     (LF-PARENT ont::pos-end-of-trajectory);ONT::LINE-DEPENDENT-LOCATION)
     (example "the end of the line")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::BOUND)
     (example "the end of the range ")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     ;; Myrosia lowered the preference slightly so that when "the end of the line" parses, it is given preference
     (preference 0.97)
     )
    ;; nominalizations of the verb ?
    ((LF-PARENT ONT::TIME-POINT)
     (example "the end of the meeting/lesson")
     (meta-data :origin newbeegle :entry-date 20050211 :change-date nil :wn ("end%1:28:00") :comments nil)
     (TEMPL GEN-PART-OF-RELN-ACTION-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the end of the year")
     (meta-data :origin step :entry-date 20080623 :change-date nil :wn ("end%1:28:00") :comments nil)
     (TEMPL GEN-PART-OF-RELN-INTERVAL-TEMPL)
     )
    )
   )

 (W::HOME
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::location)
     (TEMPL BARE-PRED-TEMPL)
     (example "he is at home")
     )
    )
   )

 (W::LAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("land%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

 (W::HOUSE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("house%1:06:00"))
     (LF-PARENT ont::lodging)
     )
    )
   )

  (W::PICTURE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

 (W::animal
   (SENSES
    ((LF-PARENT ONT::animal)
     (EXAMPLE "man is an animal")
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )

 (W::FAMILY
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::grouping)
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
 (W::mother
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("mother%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::father
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("father%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
 (W::girl
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("girl%1:18:04") :comments nil)
     (LF-PARENT ONT::child)
     )
    )
   )
  (W::boy
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("boy%1:18:03") :comments nil)
     (LF-PARENT ONT::child)
     )
    )
   )
 (W::self
   (SENSES
    ((meta-data :origin self :entry-date 20091027 :change-date nil :wn ("self%1:18:00") :comments nil)
     (LF-PARENT ONT::referential-person)
     (templ bare-pred-templ)    ;; e.g., self declared
     (example "one's own self")
     )
    )
   )

  (W::world
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("world%1:17:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

(W::ISLAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("island%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

 (W::moon
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :comments nil :wn ("moon%1:17:01" "moon%1:17:00"))
     (LF-PARENT ONT::natural-object)
     (example "the phases of the moon")
     )
    )
   )

 (W::earth
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments nil)
     (LF-PARENT ONT::geo-formation)
     )
    ((meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("earth%1:27:00" "earth%1:27:01"))
     (LF-PARENT ONT::substance) ;like dirt
     )
    )
   )

 (W::GROUND
   (SENSES
     ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("ground%1:17:00" "ground%1:27:00" "ground%1:17:01") :comments s3)
      (LF-PARENT ONT::geo-formation)
      )
     )
   )

 (W::rain
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("rain%1:19:00"))
     (LF-PARENT ONT::precipitation)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

  (w::room
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("room%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::internal-enclosure)
     (example "we need an lcd projector for our conference room")
     )
    )
   )

 (W::FRIEND
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("friend%1:18:00"))
     (LF-PARENT ONT::friend)
     )
    )
   )
 (W::IDEA
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("idea%1:09:00" "idea%1:09:01" "idea%1:09:03" "idea%1:09:02"))
     (LF-PARENT ONT::mental-object)
     (TEMPL COUNT-PRED-SUBCAT-TEMPL (xp (% W::np (W::sort W::wh-desc))))
     )
    )
   )

 (w::fish
   (wordfeats (W::morph (:forms (-S-3P) :plur w::fish)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("fish%1:13:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )

 (W::mountain
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mountain%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )


  (W::COLOR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::color)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

 (W::WOOD
   (SENSES
    ((meta-data :origin BOLT :entry-date 20031230 :change-date nil :comments most-frequent-words)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

 (W::song
   (SENSES
    ((LF-PARENT ONT::music)
     (EXAMPLE "play the song")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("song%1:10:00") :comments nil)
     )
    )
   )
  (W::body
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060803 :change-date nil :comments nil :wn ("body%1:08:00"))
     (LF-PARENT ONT::body-part)
     (templ body-part-reln-templ)
     )
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "put the body of the message here")
     (meta-data :origin plot :entry-date 20080225 :change-date nil :comments nil)
     (templ other-reln-templ)
     )
    )
   )
 ;; a unit of measure, a unit of electricity
  (W::UNIT
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("unit%1:23:00") :comments caloy3)
     (LF-PARENT ONT::MEASURE-UNIT)
     (example "a word is a linguistic unit")
     (TEMPL other-reln-templ)
     )
 ;   ((LF-PARENT ONT::group-object)
 ;    (TEMPL count-pred-templ)
 ;    (syntax (agr (? ag 3s 3p)))
 ;    (SEM (F::intentional +))
 ;    (example "dispatch unit 7")
 ;    (meta-data :origin obtw :entry-date 20110922 :change-date nil :comments demo)
 ;    )
    )
   )

 (W::MACHINE
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("machine%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::machine)
     )
    )
   )
 (W::box
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20050225 :change-date nil :wn ("box%1:06:00") :comments nil)
     ;(LF-PARENT ONT::small-container)
     (lf-parent ont::box)
     (example "paint the box red")
     (TEMPL pred-subcat-contents-templ)
     )
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
     (example "put the name in the text box")
     (LF-PARENT ONT::text-field)
     )
    )
   )

 (W::field
   (SENSES
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :wn ("field%1:14:03") :comments nil)
     (example "put the name in the author field")
     (LF-PARENT ONT::text-field)
     )
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("field%1:09:00") :comments nil)
     (example "the field of computer technology")
     (LF-PARENT ONT::discipline)
     )
    )
   )

 (W::noun
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("noun%1:10:00"))
     )
    )
   )
 (W::star
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("star%1:25:00") :comments nil)
     (example "take the square with the star on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
(W::figure
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "she is watching her figure")
     (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     )
    )
   )
 (W::FRONT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("front%1:15:00" "front%1:06:00" "front%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::BACK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("back%1:06:00" "back%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
 (w::table
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("table%1:06:01") :comments projector-purchasing)
  ;   (LF-PARENT ont::furnishings)
     (lf-parent ont::table)
     )
    ((meta-data :origin plow :entry-date 20060303 :change-date nil :wn ("table%1:14:00") :comments pq)
     (LF-PARENT ONT::chart)
     (example "here is the table of results")
     )
    )
   )
  (W::WEEK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::time-unit)
     (templ substance-unit-templ)
     (example "two weeks of work")
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     (example "next week")
     )
    )
   )
  (W::YEAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::time-unit)
     (example "a 3 year warranty")
     (templ substance-unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::MINUTE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("minute%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (example "five minutes of silence")
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::FACT
   (SENSES
    ((LF-PARENT ONT::FACT)
     (example "the fact that he left")
     (templ count-subcat-that-optional-templ)
     (meta-data :origin trips :entry-date unknown :change-date 20041201 :wn ("fact%1:09:01") :comments caloy2)
     )
    )
   )
 (W::PLANT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plant%1:06:01"))
     (LF-PARENT ONT::production-facility)
     )
    ((LF-PARENT ONT::plant)
     (example "could you water my plants while I'm away")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("plant%1:03:00") :comments Office)
     )
    )
   )

  (W::PAGE
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (meta-data :origin calo :entry-date 20041025 :change-date 20050325 :wn ("page%1:10:00") :comments y2)
     )
    )
   )
  (W::COUNTRY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::country)
     )
    )
   )
 (w::school
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send email from school")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("school%1:14:00") :comments nil)
     )
    )
   )
(W::SUN
   (SENSES
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :comments projector-purchasing :wn ("sun%1:17:00" "sun%1:17:01"))
     (LF-PARENT ONT::natural-object)
     (example "the sun comes in very brightly")
     )
    )
   )
 (W::FOOD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("food%1:03:00"))
     (LF-PARENT ONT::FOOD)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
 (W::TREE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("tree%1:20:00"))
     (LF-PARENT ONT::plant)
     )
    )
   )
  (w::door
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("door%1:06:01") :comments Office)
     (LF-PARENT ONT::structural-opening)
     (templ gen-part-of-reln-templ)
     )
    )
   )
 (W::city
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::city)
     )
    )
   )


 (W::pose
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080422 :change-date nil :comments nil)
     (LF-PARENT ONT::body-property)
     )
    )
   )

 (W::kind
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("kind%1:09:00"))
     (EXAMPLE "What kind of surgery is it?")
     (LF-PARENT ONT::KIND)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::SIDE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::TOP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("top%1:15:00" "top%1:15:01" "top%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

(W::BACK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("back%1:06:00" "back%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::sea
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

(W::beauty
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::non-measure-ordered-domain)
     )
    )
   )

(W::war
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::located-event)
     )
    )
   )

(W::king
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::person)
     )
    )
   )

(W::tail
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::WATER
   (SENSES
     ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("water%1:27:01" "water%1:27:00"))
      (LF-PARENT ONT::water)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

(W::cover
   (SENSES
    (
     (lf-parent ont::covering)
     (meta-data :origin caet :entry-date 20111220)
     )
    )
   )

(W::story
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :comments naive-subjects)
     (LF-PARENT ONT::information-function-object)
     (example "he wrote a story about his adventures")
     )
    )
   )

 (W::product
   (SENSES
    ((LF-PARENT ONT::product)
     (EXAMPLE "The SOFTWARE PRODUCT may contain support for programs written in Java")
     (meta-data :origin task-learning :entry-date 20050816 :change-date 20070612 :wn ("product%1:06:00" "product%1:06:01") :comments nil)
     )
    ((LF-PARENT ONT::outcome)
     (meta-data :origin caloy4 :entry-date 20070713 :change-date nil :comments plowpqs)
     )
    )
   )

 (W::NUMERAL
   (SENSES   
    ((LF-PARENT ONT::symbolic-representation)
     (example "a numeral is a representation of a number")
     (meta-data :origin bolt :entry-date 20120516 :comments top500)
     )
    )
   )

 ;; of course?
 (W::course
   (SENSES
    ((LF-PARENT ONT::instruction-EVENT)
     (meta-data :origin lam :entry-date 20050422 :change-date nil :wn ("course%1:04:01") :comments lam-initial)
     )
    )
   )

(W::class
   (SENSES
    ((EXAMPLE "fcc class b")
     (meta-data :origin calo :entry-date 20050418 :change-date nil :wn ("class%1:14:00") :comments projector-purchasing)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("class%1:04:00") :comments caloy3)
     (LF-PARENT ONT::instruction-event)
     (example "take a class")
     )
    )
   )

(W::wind
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("wind%1:19:00"))
     (LF-PARENT ONT::air-current)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

 (W::QUESTION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("question%1:10:03"))
     (LF-PARENT ONT::questioning)
     )
    )
   )

 (W::GOLD
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("gold%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))

 (W::AGE
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("age%1:07:00")
		:COMMENTS HTML-PURCHASING-CORPUS))))

 (W::PLANE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plane%1:06:01"))
     (LF-PARENT ONT::AIR-VEHICLE)
     )
    )
   )

 (W::BOAT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("boat%1:06:00"))
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )

 (W::SHIP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ship%1:06:00"))
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )

(W::GAME
   (SENSES
    ((meta-data :origin trips :entry-date unknown)
     (LF-PARENT ONT::GAME)
     )
    )
   )

 (W::heat
   (SENSES
    ((LF-PARENT ONT::TEMPERATURE)
     (example "oppressive heat is forecast for today")
     (meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather :wn ("heat%1:07:01" "heat%1:09:00"))
     (templ mass-pred-templ)
     )
    )
   )

 (W::SHAPE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus :wn ("shape%1:07:00" "shape%1:03:00"))
     (LF-PARENT ONT::shape)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

 (W::bed
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bed%1:06:00"))
     (LF-PARENT ont::furnishings)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )

 (W::snow
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("snow%1:19:00"))
     (LF-PARENT ONT::precipitation)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

 (W::area
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("area%1:07:00"))
     (LF-PARENT ONT::area)
     (example "the area of the room")
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin sense :entry-date 20091027 :change-date nil :comments nil :wn ("area%1:07:00"))
     (LF-PARENT ONT::area)
     (example "the area of 200 sq meters")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    ((LF-PARENT ONT::loc-as-area)
     (example "the house is in a nice area")
     )
    )
   )

 (W::ROCK
   (SENSES
    ((LF-PARENT ONT::natural-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("rock%1:17:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))

 (W::ORDER
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("order%1:10:01") :comments calo-y1script)
     (LF-PARENT ONT::ORDER)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (example "send the order to purchasing")
     )
    )
   )

 (W::fire
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20111005 :comments nil :wn ("fire%1:11:00"))
     ;; changed for obtw demo from ont::located-event to ont::fire
     (LF-PARENT ONT::fire)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )

 (W::STREET
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("street%1:06:00" "street%1:06:01"))
     (LF-PARENT ONT::thoroughfare)
     )
    )
   )

 (W::SURFACE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("surface%1:15:00" "surface%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::object
   (SENSES
    ((EXAMPLE "I found an interesting object")
     (LF-PARENT ONT::phys-object)
     (meta-data :origin boudreaux :entry-date 20031026 :wn ("object%1:03:00"))
     )
    )
   )

 (W::WHEEL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("wheel%1:06:00"))
     (LF-PARENT ONT::WHEEL)
     )
    )
   )

;; a lot?
 (W::LOT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("lot%1:15:00"))
     (LF-PARENT ONT::area-def-by-use)
     )
    )
   )

 (W::INCH
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("inch%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )

 (W::PIECE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::farm
   (SENSES
   ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
    (LF-PARENT ONT::facility)
    (example "wind energy is used on farms")
    )
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments step6)
    (LF-PARENT ONT::organization)
    (example "the farm made a profit")
     )
    )
   )

 (W::SIZE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("size%1:07:00"))
     (LF-PARENT ONT::size)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("size%1:07:00"))
     (LF-PARENT ONT::size)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )

 ((W::PORT)
   (SENSES
    ((LF-PARENT ONT::transportation-facility)
     (LF-FORM W::refueling_port)
     )
    )
   )

))