;;;;
;;;; w::dismally
;;;;

(define-words :pos W::adv :templ PRED-VP-TEMPL 
 :words (
	 (W::dismally
	  (SENSES
    ((lf-parent ont::awful-val)
	    (TEMPL ADJ-OPERATOR-TEMPL)	    
	    (example "his ankles are dismally swollen" "he is dismally ill")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity ONT::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
    ((lf-parent ont::awful-val)
	    (TEMPL PRED-VP-TEMPL)	    
	    (example "he performed dismally on the exam")
	    (SEM (f::gradability +) (f::orientation f::neg) (f::intensity ONT::hi))
	    (meta-data :origin cardiac :entry-date 20080613 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
))

