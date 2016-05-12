
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

  (DEFINE-WORDS :POS W::NAME :WORDS
    (
     ;; this is domain specific but putting it here for now
;     (W::CSS
;    (SENSES
;     ((LF-PARENT ONT::research-institution) (TEMPL name-TEMPL)
;      (META-DATA :ORIGIN lou :ENTRY-DATE 20040601 :CHANGE-DATE NIL
;                 :COMMENTS "temporary entry"))))
    ((w::social w::security)
      (senses
      ((LF-PARENT ONT::federal-organization) (TEMPL name-TEMPL)
       (META-DATA :ORIGIN plot :ENTRY-DATE 20080505 :CHANGE-DATE NIL
		 :COMMENTS nil))))
     )
    )
