;;;;
;;;; W::TIME
;;;;

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :tags (:base500)
 :words (
  (W::TIME
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("time%1:28:06"))
     (LF-PARENT ONT::TIME-OBJECT)
     (example "what time did it arrive")
     (templ other-reln-templ)
     )

    ((LF-PARENT ONT::TIME-LOC)
     (example "Much time passed")
     (templ MASS-PRED-TEMPL))
		
      
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("time%1:28:05" "time%1:28:00" "time%1:28:03" "time%1:28:01"))
     (LF-PARENT ONT::DURATION-SCALE)
     (example "how much time does it take")
     ;;(SEM (F::time-scale F::interval))
     (TEMPL MASS-PRED-TEMPL)
     )
    
    ((LF-PARENT ONT::DURATION-SCALE)
     ;;(SEM (F::time-scale F::interval))
     (example "a time of five minutes")
     (TEMPL reln-subcat-of-units-mass-TEMPL)
     )

    ((LF-PARENT ONT::multiple)
     (example "increase by two times")
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )

    )
   )
))

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :tags (:base500)
 :words (
  (W::time
   (SENSES
    ((LF-PARENT ONT::register)
     (TEMPL AGENT-FORMAL-XP-TEMPL)
     (example "He timed the runners")
     (meta-data :origin trips :entry-date 20090910 :change-date nil :comments nil :vn ("register-54.1"))
     )
    ((LF-PARENT ONT::register)
     (TEMPL AGENT-NEUTRAL-EXTENT-2-XP1-3-XP2-TEMPL)
     (example "He timed the runner at 1.64")
     (meta-data :origin trips :entry-date 20090910 :change-date nil :comments nil :vn ("register-54.1"))
     )
    ((LF-PARENT ONT::register)
     (TEMPL neutral-extent-xp-templ (xp (% W::PP (W::ptype W::at))))
     (example "he timed at 1.64 in the 10-yd dash")
     (meta-data :origin trips :entry-date 20090910 :change-date nil :comments nil :vn ("register-54.1"))
     )
    )
   )
))
#||
(define-words :pos W::n 
	      :words (
		      (W::times
		       (SENSES
			((LF-PARENT ONT::repetition)
			 (SYNTAX (W::agr (? agr W::3p)) (W::morph (:forms (-none))
								  ))
			 (templ  SUBSTANCE-UNIT-TEMPL)
			 (example "I ran three times")))))
	      )
||#
