;;;;
;;;; W::straddle
;;;;

(define-words :pos W::V :TEMPL AGENT-FORMAL-XP-TEMPL
 :words (
  (W::straddle
   (SENSES
    ((meta-data :origin "verbnet-1.5" :entry-date 20051219 :change-date nil :comments nil :vn ("assuming_position-50") :wn ("stoop%2:38:00" "stoop%2:38:04"))
     ;;(LF-PARENT ONT::body-movement)
     (lf-parent ont::straddle) ;; 20120523 GUM change new parent
     (TEMPL AGENT-neutral-TEMPL)
     )
    ((meta-data :origin "verbnet-2.0" :entry-date 20060315 :change-date nil :comments nil :vn ("contiguous_location-47.8") :wn ("straddle%2:42:01" "straddle%2:42:02"))
     (LF-PARENT ONT::surround)
     (TEMPL NEUTRAL-NEUTRAL1-XP-TEMPL) ; like cover,surround
     )
    )
   )
))

