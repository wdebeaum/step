;;;;
;;;; W::debate
;;;;

(define-words :pos W::v :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
  (W::debate
   (SENSES
    (;(LF-PARENT ONT::TALK)
     (LF-PARENT  ONT::argue)
     (example "he debated with her [about it]")
     (meta-data :origin "verbnet-2.0" :entry-date 20060605 :change-date nil :comments nil :vn ("correspond-36.1-1-1" "meet-36.3-2") :wn ("debate%2:31:00" "debate%2:32:01"))
     (TEMPL AGENT-AGENT1-FORMAL-2-XP1-3-XP-OPTIONAL-TEMPL
            (xp1 (% w::pp (w::ptype w::with))))
     )
    (;(LF-PARENT ONT::TALK)
     (LF-PARENT  ONT::argue)
     (example "he debated about it [with her]")
     (meta-data :origin "verbnet-2.0" :entry-date 20060605 :change-date nil :comments nil :vn ("correspond-36.1-1-1" "meet-36.3-2") :wn ("debate%2:31:00" "debate%2:32:01"))
     (TEMPL AGENT-FORMAL-AGENT1-2-XP1-PP-3-XP2-PP-WITH-OPTIONAL-TEMPL)
     )
    )
   )
))

