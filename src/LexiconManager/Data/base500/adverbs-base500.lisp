(in-package :lxm)

(define-words :pos W::ADV
 :words (

; PP 1
 (W::TO
   (SENSES
    ((LF-PARENT ONT::PURPOSE)
     (example "aspirin is used to treat headaches")
     (meta-data :origin medadvisor :entry-date 20011126 :change-date nil :comments nil)
     (TEMPL BINARY-CONSTRAINT-S-VPbase-TEMPL)
     )
    ((LF-PARENT ONT::TO-LOC)
     (example "go to the building")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ;; a generalized sense of to
    ((LF-PARENT ONT::TO)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (meta-data :origin navigation :entry-date 20080902 :change-date nil :comments nil)
     (example "I see the building to my right")
     (preference .97) ;; prefer to-loc if applicable
     )
    ((LF-PARENT ONT::TO-LOC)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (PREFERENCE 0.9) ;; prefer vp attachment
     )
    ;; 04 2010 no longer needed?
;    ((LF-PARENT ONT::TO-LOC-DEGREES)
;     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
;     (example "pan camera to 45 degrees")
;     (meta-data :origin coordops :entry-date 20070516 :change-date nil :comments nil)
;     )
    ((LF-PARENT ONT::event-time-rel)
     (example "the meeting should go to five pm")
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     (PREFERENCE 0.92)
     )
    ;; need a sense of to that attaches to non-trajectory NPs like plane, train
    ((LF-PARENT ONT::destination-LOC)
     (meta-data :origin ralf :entry-date 20040803 :change-date nil :comments nil)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (example "the plane to rochester")
     (PREFERENCE 0.9)
     )
    )
   )

;; PP 2
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

;; PP 3
(W::IN
   (SENSES
    ;; takes an event ont::of
    ((LF-PARENT ONT::situated-in)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "in that case" "in that event" "in the meeting")
     )
    ((LF-PARENT ONT::time-deadline-rel)
     (TEMPL BINARY-CONSTRAINT-adj-postpos-TEMPL)
     (meta-data :origin cernl :entry-date 20110114 :change-date nil :comments hpi-acn-3)
     (example "the device placed in five minutes")
     (preference .98)
     )
    ;; like within
    ((LF-PARENT ONT::scale-relation)
     (meta-data :origin calo :entry-date 20040423 :change-date nil :comments calo-y1v5)
     (example "is there a computer in that price range")
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (lf-form w::within)
     (preference .92) ;; prefer direction
     )
    ;;;;;need specific constraints that we're lacking now
    ((LF-PARENT ONT::TIME-span-rel)
     ;; for :vals (time-val) that are f::time
    ; (TEMPL BINARY-CONSTRAINT-S-OR-NP-TIME-VAL-TEMPL)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "he ran the race in June" "in the middle of the night")
     )
    ((LF-PARENT ONT::TIME-culmination-rel)
     (example "he ran the race in 5 minutes")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::TIME-deadline-rel)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (example "he will run in 5 minutes")
     )
    ;; takes a phys-obj ont::of
    ((LF-PARENT ont::in-loc) ;ONT::SPATIAL-LOC)
     (example "the dog is in the park")
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     )
    ;; why is this a spatial-loc?
    ((LF-PARENT ONT::spatial-LOC)
     (TEMPL BINARY-CONSTRAINT-val-STATE-NP-TEMPL)
     (meta-data :origin beetle2 :entry-date 20080506 :change-date nil :comments pilot3)
     (example "terminals are in the same state")
     ;; lowering this to .95 to prevent it from coming up first on "he built a house in 2 days"
     (preference 0.95) ;; don't choose if other options are available
     )	      
    ((LF-PARENT ONT::direction)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ;; in the air (excluded by ont::spatial-loc)
    )
   )

;; PP 4
 (W::FOR
   (SENSES
    ((LF-PARENT ONT::PURPOSE)
     (example "He runs for his health")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
     ((LF-PARENT ONT::PURPOSE)
     (example "Hit return for more results")
     (meta-data :origin plot :entry-date 20081120 :change-date nil :comments chcs-tests)
     (TEMPL BINARY-CONSTRAINT-S-obj-val-TEMPL)
     (preference .97)
     )
    ((LF-PARENT ONT::PURPOSE)
     (example "she is happy for him to come; switch X has to be open for bulb A to light")
     (TEMPL adv-double-subcat-control-templ)
     )
    ;;;;; Reason convers just about everything, therefore, slightly lovered priority
    ;;;;; taking aspirin for foot, for headaches
    ;; 2006/05/24 these cases covered by purpose
;    ((LF-PARENT ONT::REASON)
;     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
;     (PREFERENCE 0.98)
;     )
    ((LF-PARENT ONT::ASSOC-WITH)
     (example "the company's budget for the computer purchase is 2000 dollars")
     (meta-data :origin calo :entry-date 20040901 :change-date nil :comments calo-y2)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (PREFERENCE 0.97)
     )
    ((LF-PARENT ONT::BENEFICIARY)
     (example "pick up the laundry for him")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::TIME-DURATION-REL)
     (example "he ran for five hours")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::spatial-DISTANCE-REL)
     (example "he ran for five miles")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    
    ((LF-PARENT ONT::PURCHASE-COST)
     (meta-data :origin calo :entry-date 20040423 :change-date nil :comments calo-y1v4)
     (example "I got it for five dollars")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::VALUE-COST)
     (meta-data :origin calo :entry-date 20040423 :change-date nil :comments calo-y1v4)
     (example "I want a computer for five dollars")
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     )
    
    )
   )

;; PP 5
 (W::ON
   (SENSES
    ((LF-PARENT ONT::TIME-weekday-rel)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "he departed on Monday")
     )
    ((LF-PARENT ONT::time-weekday-rel)
     (TEMPL BINARY-CONSTRAINT-adj-postpos-TEMPL)
     (meta-data :origin cernl :entry-date 20110114 :change-date nil :comments hpi-acn-3)
     (example "the device placed on that day")
     (preference .98)
     )
    ((LF-PARENT ONT::ON)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "it is on the corner")
     )
    ;;;;; on drugs, on antibiotics
    ((LF-PARENT ONT::on-medication)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     )
   ((LF-PARENT ONT::ASSOC-WITH)
     (example "get me a quote on the ibm thinkpad")
     (meta-data :origin calo :entry-date 20041130 :change-date nil :comments calo-y2)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (PREFERENCE 0.97)
     )
    )
   )

;; PP 6
 (W::WITH
   (SENSES
    ((LF-PARENT ONT::INSTRUMENT)
     (example "I went to the store with a truck")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::assoc-with)
     (example "I want a computer with 500 mb of ram")
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     )

     ((LF-PARENT ONT::assoc-with)
     (example "it is thrown with a speed of 20 m/s")
     (meta-data :origin step :entry-date 20081028 :change-date nil :comments step1)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (preference .97)
     )

    ((LF-PARENT ONT::accompaniment)
     (example "I went to the store with Pete")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::HAVE-PROPERTY)
     (example "he has a problem")
     (TEMPL BINARY-CONSTRAINT-NP-PROPERTY-TEMPL)
     )
    )
   )

;; PP 7
  (W::BY
   (SENSES
    ;;;;; ont::along requires a line or a strip as the ont::of
;    ((LF-PARENT ONT::ALONG)
;     (LF-FORM W::ALONG)
;     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL
;            (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
;     (EXAMPLE "go by the coast")
;     )
    ((LF-PARENT ONT::MANNER)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL
	    (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
     (EXAMPLE "we can go by car/by air; he communicated by phone")
     )
    ((LF-PARENT ONT::MANNER)
     (TEMPL BINARY-CONSTRAINT-PRED-TEMPL
	    (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
     (EXAMPLE "it is accessible by helicopter")
     )
    ;;;;; ont::via requires a point or region
    ;; don't need both this and ont::along
    ;; motion v only??
    ((LF-PARENT ONT::obj-in-path) ; ont::via
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL
            (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
     (EXAMPLE "go by pittsford")
     )
    ((LF-PARENT ont::adjacent) ; ont::spatial-loc --stative only
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -)))
     (example "the box is by the door")
     )
    ((LF-PARENT ONT::event-time-rel)
     (LF-FORM W::BY)
     (example "by the time he arrived it was too late")
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL
	    (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
     )
    ((LF-PARENT ONT::dimension)
     (example "8 by 10 (feet)")
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL
	    (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
     )
    ((LF-PARENT ONT::originator)
     (example "a book by an author")
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL
	    (xp (% W::NP (W::case (? cas W::obj -)) (w::refl -))))
     ;; changed from ont::assoc-with (general) to more specific ont::originator
     (meta-data :origin caloy4 :entry-date 20070417 :change-date 20070517 :comments nil)
     )
    ((LF-PARENT ONT::MANNER-REFL)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL
	    (xp (% W::NP (W::case (? cas W::obj -)) (w::refl +))))
     (example "the battery is in a closed path by itself" "the door closed by itself")
     (meta-data :origin beetle :entry-date 20090105 :change-date nil :comments beetle-pilots)
     )    
    )
   )

;; PP 9
(W::FROM
   (SENSES
    ;; requires ont::val to be physical object and ont::of to be trajectory +
    ((LF-PARENT ONT::FROM-LOC)
     (example "they departed from the station")
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     )
    ;; a generalized sense of ont::from
    ((LF-PARENT ONT::FROM)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (meta-data :origin gloss :entry-date 20100520 :change-date nil :comments nil)
     (example "I see the building to my right" "to go from a waking to a sleeping state")
     (preference .97) ;; prefer from-loc if applicable
     )
    ;; for nontrajectory nouns
    ((LF-PARENT ONT::source-as-loc)
     (example "the train from atlanta" "the book from the library")
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (preference .98) 
     )
    ;; requires ont::val to be a time
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     (example "the meeting lasted from five to seven pm ")
     )
    )
   )

;; PP 10
 (W::UP
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (example "the swelling is moving up his leg")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::SCALE-RELATION)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "his weight / the temperature is up (X)")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin cardiac :entry-date 20080428 :change-date nil :comments nil)
     )
    )
   )

;; PP 11
 (W::ABOUT
   (SENSES
    ;; collapse this sense w/ either qmodifier
    ((LF-PARENT ONT::time-clock-rel)
     (LF-FORM W::APPROXIMATE)
     (example "it's about midnight")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::QMODIFIER)
     (LF-FORM W::APPROXIMATE)
     (example "about 5 pounds")
     (TEMPL NUMBER-OPERATOR-TEMPL)
     )
    ((LF-PARENT ONT::MODIFIER)
     (LF-FORM W::APPROXIMATE)
     (example "he about cried")
     (preference 0.98) 
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    ((EXAMPLE "About the book, can we change it")
     (LF-PARENT ONT::TOPIC)
     (LF-FORM W::TOPIC)
     (TEMPL topic-templ)
     (PREFERENCE 0.96)  
     )
    ((EXAMPLE "a question about the book" "a discussion about the problem")
     (LF-PARENT ONT::Associated-information)
     (TEMPL binary-constraint-s-or-np-templ)
     )
    ((LF-PARENT ONT::degree-modifier)
     (example "it's about there")
     (TEMPL ADJ-ADV-OPERATOR-TEMPL)
     (meta-data :origin fruitcarts :entry-date 20050331 :change-date nil :comments fruitcarts-11-1)
     )
    )
   )

;; PP 12
 (W::INTO
   (SENSES
    ;; this sense requires trajectory +
    ((LF-PARENT ONT::to-loc)
     (example "move it into the triangle") 
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::goal-as-containment)
     (example "build it into the triangle")
     (meta-data :origin fruitcarts :entry-date 20050427 :change-date nil :comments fruitcart-11-4)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (PREFERENCE 0.98)
     )
    )
   )

;; PP 13
 (W::OVER
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::pos-as-over)
     (TEMPL BINARY-CONSTRAINT-NP-implicit-TEMPL)
     )
    ((LF-PARENT ONT::pos-as-over)
     (TEMPL BINARY-CONSTRAINT-S-implicit-TEMPL)
     )
    ((LF-PARENT ONT::QMODIFIER)
     (example "sell it for over five dollars")
     (TEMPL NUMBER-OPERATOR-TEMPL)
     (lf-form w::more)
     (meta-data :origin calo :entry-date 20040426 :change-date nil :comments calo-y1v1)
     )
    ((LF-PARENT ONT::TIME-span-rel)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (meta-data :origin step :entry-date 20080530 :change-date nil :comments nil)
     (example "over the last week")
     )
    ((LF-PARENT ONT::more-than-rel)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (example "purchases over five dollars")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin calo :entry-date 20040112 :change-date nil :comments calo-y1v1)
     )
    )
   )

;; PP 14
 (W::AFTER
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (example "he left (after 5 pm)")
     (TEMPL binary-constraint-S-implicit-TEMPL)
     )
; 3/2011 conflating sit-val and val roles for ont::event-time-rel
;    ((LF-PARENT ONT::event-time-rel)
;     (TEMPL binary-constraint-SIT-VAL-S-decl-TEMPL)
;     )
    ((LF-PARENT ONT::event-time-rel)
     (example "he left after she arrived")
     (TEMPL binary-constraint-S-decl-TEMPL)
     )
;    ((LF-PARENT ONT::event-time-rel)
;     (TEMPL binary-constraint-SIT-VAL-NP-TEMPL)
;     )
    ((LF-PARENT ONT::event-time-rel)
     (meta-data :origin ralf :entry-date 20040809 :change-date nil :comments nil)
     (example "show me departures after 5 pm")
     (TEMPL binary-constraint-np-TEMPL)
     )
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL BINARY-CONSTRAINT-adj-postpos-TEMPL)
     (meta-data :origin cernl :entry-date 20110114 :change-date nil :comments hpi-acn-3)
     (example "the device placed after that day")
     (preference .98)
     )
    ((LF-PARENT ONT::pos-after-in-trajectory)
     (meta-data :origin beetle :entry-date 20090406 :change-date nil :comments nil)
     (example "after the bridge, turn left" "the bulbs that come after the switch affect it" "people before us in the queue")
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (preference 0.97)
     )
    )
   )

;; PP 15
(W::BENEATH
   (SENSES
    ((LF-PARENT ONT::SPATIAL-LOC)
     (LF-FORM W::UNDER)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (SYNTAX (W::ALLOW-DELETED-COMP +))
     (EXAMPLE "A list of related topics appears beneath the category you clicked")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :coments nil)
     )
    )
   )

;; PP 16
  (W::UNDER
   (SENSES
;    ((LF-PARENT ONT::VIA)
;     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
;     )
    ((LF-PARENT ONT::BELOW)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (SYNTAX (W::ALLOW-DELETED-COMP +))
     )
    ((LF-PARENT ONT::less-than-rel)
     (example "buy it for under five dollars")
      (TEMPL NUMBER-OPERATOR-TEMPL)
      (lf-form w::less)
      (meta-data :origin calo :entry-date 20040426 :change-date nil :comments calo-y1v1)
     )
    ((LF-PARENT ONT::less-than-rel)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (example "purchases under five dollars")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin calo :entry-date 20040112 :change-date nil :comments calo-y1v1)
    )
    )
   )
  

;; PP 17
  (W::ABOVE
   (SENSES
    ((LF-PARENT ONT::ABOVE)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (SYNTAX (W::ALLOW-DELETED-COMP +))
     )
    ((LF-PARENT ONT::QMODIFIER)
     (TEMPL NUMBER-OPERATOR-TEMPL)
      (lf-form w::more)
      (meta-data :origin calo :entry-date 20040426 :change-date nil :comments calo-y1v1)
      )
    ((LF-PARENT ONT::more-than-rel)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (example "purchases above five dollars")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin calo :entry-date 20040112 :change-date nil :comments calo-y1v1)
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
    )
   )


 (W::OUT
   (SENSES
    ((LF-PARENT ONT::direction)
     (TEMPL PRED-S-POST-TEMPL)
     )  
    )
   )

 ((W::OUT W::OF)
   (SENSES
    ((LF-PARENT ONT::source-as-containment)
     (example "it is out of the bag")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::situated-out)
     (meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :comments caloy3)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     )
    )
   )

 (W::when
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL binary-constraint-S-decl-TEMPL)
     (example "I saw him when he left")
     )
    ((LF-PARENT ONT::event-time-rel)
     (meta-
data :origin calo :entry-date 20040809 :change-date nil :comments caloy2)
     (example "buy me a monitor when buying a computer")
     (TEMPL binary-constraint-S-ing-TEMPL)
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

 (W::THEN
   (SENSES
    ;; when is it conjunct and when is it sequence-position?
    ((LF-PARENT ONT::CONJUNCT)
     (templ DISC-PRE-TEMPL)
     )
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     (templ DISC-PRE-TEMPL)
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

  (W::PERHAPS
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

 (W::AMONG
   (SENSES
    ((meta-data :origin calo :entry-date 20040916 :change-date nil :comments caloy2)
     (LF-PARENT ONT::among)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "he walked among them")
     )
    )
   )

  (W::RIGHT
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (example "turn right")
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::degree-modifier)
     (example "right there")
     (TEMPL ADV-OPERATOR-TEMPL)
     (preference .96) ;; prefer direction
     (meta-data :origin fruitcarts :entry-date 20050331 :change-date nil :comments fruitcarts-11-1)
     )
    )
   )
    
  (W::LEFT
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )

 (W::EAST
   (SENSES
    ((LF-PARENT ONT::CARDINAL-DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
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

 (W::THROUGH
   (SENSES
    ((LF-PARENT ONT::via)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::VIA)
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     )
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::REASON)
     (TEMPL binary-constraint-s-templ)
     (Example "to let the head fall forward through drowsiness")
     (meta-data :origin gloss-training :entry-date 20100217 :change-date nil :comments nil)
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

 (W::ALSO
   (SENSES
    ((LF-PARENT ONT::CONJUNCT)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     (templ DISC-PRE-TEMPL)
     )
    ((LF-PARENT ONT::ADDITIVE)
     (meta-data :origin trips :entry-date nil :change-date 20070609 :comments sentential-conjunction-cleanup)
     (LF-FORM W::ALSO)
     (TEMPL PRED-VP-TEMPL)
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


(W::BEFORE
   (SENSES
; 3/2011 conflating sit-val and val roles for ont::event-time-rel
;    ((LF-PARENT ONT::event-time-rel)
;     (TEMPL binary-constraint-SIT-VAL-S-decl-TEMPL)
;     )
;    ((LF-PARENT ONT::event-time-rel)
;     (TEMPL binary-constraint-SIT-VAL-NP-TEMPL)
;     )

    ((LF-PARENT ONT::event-time-rel)
     (TEMPL binary-constraint-S-decl-TEMPL)
     (example "he arrived before she left")
     )
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL binary-constraint-S-implicit-TEMPL)
     (example "he arrived before (5 pm)")
     )
    ((LF-PARENT ONT::event-time-rel)
     (meta-data :origin ralf :entry-date 20040809 :change-date nil :comments nil)
     (example "show me departures before 5 pm")
     (TEMPL binary-constraint-np-TEMPL)
     )
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL BINARY-CONSTRAINT-adj-postpos-TEMPL)
     (meta-data :origin cernl :entry-date 20110114 :change-date nil :comments hpi-acn-3)
     (example "the device placed before that day")
     (preference .98)
     )
    ((LF-PARENT ONT::pos-before-in-trajectory)
     (meta-data :origin beetle :entry-date 20090406 :change-date nil :comments nil)
     (example "just before the bridge, turn left" "the bulbs that come before the switch affect it")
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (preference 0.96)
     )
    )
   )

  (W::often
   (SENSES
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-VP-TEMPL)
     )
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL DISC-TEMPL)
     )
    )
   )

 (W::ALWAYS
   (SENSES
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )

(W::UNTIL
   (SENSES
    ; 3/2011 conflating :sit-val and :val roles
    ((LF-PARENT ONT::event-time-rel)
;     (TEMPL binary-constraint-SIT-VAL-S-decl-TEMPL)
     (TEMPL binary-constraint-S-decl-TEMPL)
     (example "he was sad until he went to the party")
     )
 ; 3/2011 conflating :sit-val and :val roles
;    ((LF-PARENT ONT::event-time-rel)
;     (example "he was sad until the party")
;     (TEMPL binary-constraint-SIT-VAL-NP-TEMPL)
;     )
    ((LF-PARENT ONT::event-time-rel)
     (meta-data :origin ralf :entry-date 20040809 :change-date nil :comments nil)
     (example "show me departures until 5 pm / the party")
     (TEMPL binary-constraint-s-or-np-TEMPL)
     )
    ((LF-PARENT ONT::time-culmination-rel)
     (meta-data :origin cernl :entry-date 20110105 :change-date nil :comments hpi-acn-1)
     (example "he was happy until recently" "it won't be ready until later")
     (templ binary-constraint-time-adv-result-val-templ) 
     )
    ((LF-PARENT ONT::time-culmination-rel)
     (meta-data :origin cernl :entry-date 20110105 :change-date nil :comments hpi-acn-1)
     (example "beat the mixture until smooth")
     (templ binary-constraint-adj-result-val-templ)
     )
    )
   )

 (W::TOWARD
   (SENSES
    ((LF-PARENT ONT::TO-LOC)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    )
   )

   (W::AGAINST
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (meta-data :origin step :entry-date 20080630 :change-date nil :comments nil)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (example "he ran against the wind")
     )
     ((LF-PARENT ONT::CONTRA)
     (meta-data :origin step :entry-date 20080630 :change-date nil :comments nil)
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (example "he fought against the proposal")
     )
    )
   )

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
  
 (W::SOON
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )

  (W::EVER
   (SENSES
    ((LF-PARENT ONT::CONTINUATION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::CONTINUATION)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((LF-PARENT ONT::FREQUENCY)
     (LF-FORM W::EVER)
     (TEMPL PRED-VP-PRE-TEMPL)
     )
    )
   )

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

 (W::OFF
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::source-as-on)
     (example "it is off the table")
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     )
    )
   )

  (W::AGAIN
   (SENSES
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20040414 :change-date nil :comments calo-y1v8)
     (LF-PARENT ONT::FREQUENCY)
     (TEMPL DISC-TEMPL)
     (PREFERENCE 0.92) ;; use only if the other template doesn't apply
     (example "hello again")
     )
    )
   )

 (W::ONCE
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (example "once he was a child")
     (TEMPL pred-s-vp-TEMPL)
     (preference .97)
     )
    ((LF-PARENT ONT::repetition)
     (example "take the medication once")
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )

(W::TWICE
   (SENSES
    ((LF-PARENT ONT::repetition)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )

(W::NOW
   (SENSES
    ((EXAMPLE "Now send a truck to Barnacle")
     (LF-PARENT ONT::SEQUENCE-POSITION)
     (templ DISC-PRE-TEMPL)
     )
    )
   )
  
 (W::STILL
   (SENSES
    ((LF-PARENT ONT::CONTINUATION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::CONTINUATION)
     (TEMPL PRED-S-VP-TEMPL)
     )
    ((lf-parent ont::continuation)
     (example "still 1.5 volts")
     (meta-data :origin beetle :entry-date 20080711 :change-date nil :comments nil) 
     (templ disc-templ)
     (preference 0.92)
     )
    ))

 (W::YET
   (SENSES
    ((LF-PARENT ONT::CONTINUATION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::CONTINUATION)
     (TEMPL PRED-S-VP-TEMPL)
     )
    )
   )

 (W::AGO
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (TEMPL PRED-NP-templ)
     (example "five years ago")
     )
    )
   )


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

 (W::DURING
   (SENSES
    ((LF-PARENT ONT::situated-in)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "during the meeting")
     )
    ((LF-PARENT ONT::TIME-span-rel)
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     (meta-data :origin step :entry-date 20080530 :change-date nil :comments nil)
     (example "during the last week")
     )
    )
   )

 (W::EARLY
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (example "he arrived early")
     (templ pred-s-post-templ)
     )
    )
   )

 (W::LATE
   (SENSES
    ((LF-PARENT ONT::event-time-rel)
     (templ pred-s-post-templ)
     )
    )
   )

 (W::NEVER
   (SENSES
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-S-POST-TEMPL)
     (SYNTAX (W::NEG +))
     )
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-S-VP-TEMPL)
     (SYNTAX (W::NEG +))
     )
    ((LF-PARENT ONT::FREQUENCY)
     (TEMPL PRED-VP-PRE-TEMPL)
     (SYNTAX (W::NEG +))
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

  (W::LAST
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     (TEMPL PRED-S-POST-TEMPL)
     (example "he did it last")
     (PREFERENCE 0.96) ;; prefer ordinal
     )
    ((LF-PARENT ONT::SEQUENCE-POSITION)
     (TEMPL DISC-TEMPL)
     )
    )
   )

 (W::NEAR
   (SENSES
    ((LF-PARENT ONT::time-clock-rel)
     (LF-FORM W::APPROXIMATE)
     (example "it is near five pm")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ont::near-reln) ; ONT::proximity
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL)
     (example "find a hotel near a zipcode" "he is near the party")
     (SYNTAX (W::ALLOW-DELETED-COMP +))
     )
    ((LF-PARENT ont::near-reln) ; ONT::proximity
     (TEMPL BINARY-CONSTRAINT-S-trajectory-TEMPL)
     (example "move it near the triangle")
     (preference .96)
     (SYNTAX (W::ALLOW-DELETED-COMP +))
     )
    )
   )



 (W::behind
   (SENSES
    ((LF-PARENT ONT::back)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (SYNTAX (W::ALLOW-DELETED-COMP +))
     (EXAMPLE "place the image behind the photo")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )

 (W::BETWEEN
   (SENSES
    ((LF-PARENT ONT::between)
     (example "it is between a rock and a hard place")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     (preference .98) ;; prefer np attachment
     )
     ((LF-PARENT ONT::between)
     (example "find flights between two cities")
     (TEMPL BINARY-CONSTRAINT-NP-TEMPL (xp (% W::NP (W::agr W::3p))))
     (meta-data :origin plow :entry-date 20060526 :change-date nil :comments pq0405)
     )
     ((LF-PARENT ONT::SPATIAL-LOC)
      (TEMPL BINARY-CONSTRAINT-OF-STATE-NP-TEMPL)
      (meta-data :origin beetle2 :entry-date 20082002 :change-date nil :comments pilot1)
      (example "voltage between terminals")
      (preference 0.96) ;; don't choose if other options are available
      )
     ((LF-PARENT ONT::time-clock-rel)
      (meta-data :origin ralf :entry-date 20040709 :change-date nil :comments nil)
      (example "between 4 and 5 pm")
      (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL  (xp (% W::NP (W::agr W::3p))))
      )
     ((LF-PARENT ONT::SCALE-RELATION)
      (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL  (xp (% W::NP (W::agr W::3p))))
      (example "purchases between five and ten dollars")
      (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
      (meta-data :origin calo :entry-date 20050418 :change-date nil :comments projector-purchasing)
      )
     )
   )

 (W::UP
   (SENSES
    ((LF-PARENT ONT::DIRECTION)
     (example "the swelling is moving up his leg")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::SCALE-RELATION)
     (TEMPL BINARY-CONSTRAINT-S-OR-NP-TEMPL)
     (example "his weight / the temperature is up (X)")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin cardiac :entry-date 20080428 :change-date nil :comments nil)
     )
    )
   )

 (W::DOWN
   (SENSES
    ((LF-PARENT ONT::direction)
     (example "he walked down the road/ down the wall")
     (TEMPL BINARY-CONSTRAINT-S-TEMPL)
     )
    ((LF-PARENT ONT::DIRECTION)
     (example "pan the camera down")
     (TEMPL PRED-S-POST-TEMPL)
     )
    ((LF-PARENT ONT::SCALE-RELATION)
     (TEMPL BINARY-CONSTRAINT-S-or-NP-TEMPL)
     (example "his weight / the temperature is down")
     (SYNTAX (W::ALLOW-DELETED-COMP +) (w::degree-adv +))
     (meta-data :origin cardiac :entry-date 20080428 :change-date nil :comments nil)
     )
    )
   )

(W::NORTH
   (SENSES
    ((LF-PARENT ONT::CARDINAL-DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )

(W::SOUTH
   (SENSES
    ((LF-PARENT ONT::CARDINAL-DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )

(W::EAST
   (SENSES
    ((LF-PARENT ONT::CARDINAL-DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )

(W::WEST
   (SENSES
    ((LF-PARENT ONT::CARDINAL-DIRECTION)
     (TEMPL PRED-S-POST-TEMPL)
     )
    )
   )

))