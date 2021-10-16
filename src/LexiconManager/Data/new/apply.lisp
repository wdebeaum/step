;;;;
;;;; W::apply
;;;;

(define-words :pos W::V 
  :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
	  (W::apply
	   (wordfeats (W::morph (:forms (-vb) :nom w::application)))
	   (SENSES
	    ((LF-PARENT ONT::USE) ;; based on WN sense 7-8
	     (example "apply the rule [to this example]")
	     (SEM (F::ASPECT F::DYNAMIC) (F::cause f::agentive))
	     (meta-data :origin lam :entry-date 20050425 :change-date nil :comments lam-initial)
	     ;(templ agent-affected-goal-optional-templ  (xp (% W::PP (w::ptype w::to))))
	     (templ AGENT-AFFECTED-AFFECTED1-XP-OPTIONAL-TEMPL (xp (% W::PP (w::ptype w::to))))
	     )
	    ((EXAMPLE "apply for funding")
	     ;(LF-PARENT ONT::REQUEST)
	     (lf-parent ont::appeal-apply-demand) ;; 20120523 GUM change new parent
	     (SEM (F::Aspect F::unbounded) (F::Time-span F::extended))
	     (TEMPL AGENT-FORMAL-XP-TEMPL (xp (% W::pp (W::ptype W::for))))
	     )
	    ))
))

