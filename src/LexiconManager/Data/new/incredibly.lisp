;;;;
;;;; W::incredibly
;;;;

(define-words :pos w::adv
 :words (
  (w::incredibly
  (senses((TEMPL ADJ-OR-ADV-OPERATOR-TEMPL)
     (lf-parent ont::degree-modifier-high)
            (meta-data :origin adjective-reorganization :entry-date 20170413 :change-date nil :comments nil)
            )
           )
)
))

(define-words :pos W::adv :templ PRED-VP-TEMPL 
 :words (
	  (W::incredibly
	  (SENSES
	   ;((LF-PARENT ONT::acceptability-val)
	   ; (TEMPL ADJ-OPERATOR-TEMPL)	    
	   ; (example "his ankles are incredibly swollen" "he is incredibly ill")
	   ; (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	   ; (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	   ; )
	   ((LF-PARENT ONT::great-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed incredibly on the exam")
	    (SEM (f::gradability +) (f::orientation f::pos) (f::intensity f::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
))

