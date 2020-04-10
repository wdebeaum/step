(in-package :om)

;; DRUM
(define-type ONT::mutation
 :parent ONT::event-of-change
 :arguments ((:optional  ONT::affected ((? cau3a F::situation F::abstr-obj f::phys-obj) (F::tangible +))) )
 )

;; abstraction of stative verbs indicating position and orientation,
;;     plus the causal form "cause to position" - so we overload the roles!
;;   E.G., THE CHAIR LEANS AGAINST THE WALL, He leaned the chair against the wall.
(define-type ONT::position
    :comment "These are stative predicates indicating the position of an object with respect to another. They also typically allow a causal variant where an agent causes this position (see ONT::CAUSE-POSITION)"
  :parent ONT::event-of-state
  :sem (F::Situation (F::Trajectory -))
  :arguments ((:optional ONT::NEUTRAL1  ((? pvt1 F::Phys-obj f::abstr-obj)))
	      (:optional ONT::NEUTRAL ((? pvt F::Phys-obj f::abstr-obj)))
	      (:optional ont::agent ((? agt F::Phys-obj) (F::intentional +)))
	      (:optional ont::affected ((? aff F::Phys-obj f::abstr-obj)))
	      (:optional ont::affected1 ((? aff1 F::Phys-obj f::abstr-obj)))
	      )
 )

#||  ;; I think this is a duplicate of ont::place-in-position
(define-type ont::cause-position
    :comment "events involving causing a state of type ONT::POSITION"
    :parent ont::event-of-causation
    :arguments ((:optional ont::agent ((? agt F::Phys-obj) (F::intentional +)))
	     (:optional ont::affected ((? aff F::Phys-obj f::abstr-obj)))
             (:optional ont::affected1 ((? aff1 F::Phys-obj f::abstr-obj)))
	     )
 )||#

(define-type ont::retrieve
 :wordnet-sense-keys ("find%2:40:15" "recover%2:40:00" "regain%2:40:00" "retrieve%2:40:00")
  :parent ont::acquire
  )

#| working on refining it
(define-type ont::acquire-responsibility
 :wordnet-sense-keys ("undertake%2:41:01" "assume%2:41:00" "take_on%2:41:01" "take_over%2:41:01")
  :parent ont::acquire
  :arguments ((:REQUIRED ONT::neutral ((? th F::Situation F::Abstr-obj) (f::type ONT::mental-construction))))
  )
|#

(define-type ont::amass
 :wordnet-sense-keys ("accumulate%2:30:00" "accumulation%1:04:00" "amass%2:30:00" "conglomerate%2:30:00" "cumulate%2:30:00" "gather%2:30:00" "pile_up%2:30:00")
  :parent ont::acquire
  )

(define-type ont::commerce
  :parent ont::acquire
  :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -) (F::Aspect F::Dynamic))
  :arguments (
;	      (:optional ont::cost (f::abstr-obj (f::scale f::money-scale)) (:implements money))
	      (:optional ont::EXTENT (f::abstr-obj (f::scale ont::money-scale)) (:implements money))
	     (:REQUIRED ONT::affected ((? th11 F::Phys-obj F::Abstr-obj F::situation)) (:implements goods))
	     (:optional ont::neutral (f::abstr-obj (f::scale ont::money-scale)) (:implements money))
	     (:optional ont::result ((? rcp f::phys-obj f::abstr-obj) (f::intentional +)))
	     (:optional ont::source ((? sc f::phys-obj f::abstr-obj))) ;; order the book from amazon dot com
             )
  )

(define-type ONT::commerce-collect
 :wordnet-sense-keys ("bill%2:40:00" "charge%2:40:03")
  :parent ONT::commerce
  )


;; make/earn money, a profit
(define-type ONT::earning
 :parent ONT::acquire
 :sem (F::SITUATION (F::Aspect F::dynamic))
 :arguments ((:REQUIRED ONT::affected ((? th12 F::Phys-obj F::Abstr-obj) (f::type ONT::MONEY) (f::object-function f::currency) (f::intentional -)))
	     (:REQUIRED ONT::NEUTRAL ((? th13 F::Phys-obj F::Abstr-obj) (f::type ONT::MONEY) (f::object-function f::currency) (f::intentional -)))
 ))

(define-type ONT::borrow
 :wordnet-sense-keys ("borrow%2:40:00")
  :parent ONT::commerce-collect
  )

;; 12/2009 removing the f::intentional restriction so one can buy horses
(define-type ONT::purchase
 :wordnet-sense-keys ("buy%2:40:00" "purchase%1:04:00" "purchase%2:40:00")
 :parent ONT::commerce
 :sem (F::SITUATION (F::Aspect F::dynamic))
 :arguments (     (:REQUIRED ONT::affected ((? th13 F::Phys-obj F::Abstr-obj F::situation) ;(f::intentional -)
					 )))
 )

(define-type ONT::lease-hire
 :wordnet-sense-keys ("charter%2:40:00" "charter%2:41:01" "engage%2:40:00" "hire%2:40:00" "hire%2:41:01" "hire_out%2:40:00" "lease%2:40:00" "lease%2:41:00" "lease%2:41:01" "rent%2:40:00" "rent%2:40:01" "rent%2:41:00" "rent%2:41:01" "take%2:40:03")
 :parent ONT::commerce
 :sem (F::SITUATION (F::Aspect F::dynamic))
 :arguments (     (:REQUIRED ONT::affected ((? th14 F::Phys-obj F::Abstr-obj F::situation) (f::intentional -))))
 )

(define-type ONT::RELINQUISH
 :parent ONT::event-of-causation
 :comment "An AGENT does something that results in loss of possession or control of the AFFECTED"
 :sem (F::SITUATION)
 :arguments ((:REQUIRED ONT::Agent ((? ag F::Phys-obj f::abstr-obj) ;(F::intentional +)
				    ) (:implements donor))
	     ;; can relinquish phys-obj as well as power, authority
             (:REQUIRED ONT::affected ((? tc  F::Phys-obj f::abstr-obj f::situation)))
	     ;; need to update this to allow organizations as recipients
;	     (:REQUIRED ONT::Recipient ((? rcp F::Phys-obj f::abstr-obj (F::intentional +))) (:implements recipient))
	     ;; generalizing recipient to non-human non-intentional, e.g. the generator supplies/gives/sends power to the city
	     (:OPTIONAL ont::result)
             )
 )

;;; an agent/cause give/provides things to someone or something
;; give the man a book / give a book to the man
;; the windmill supplies areas with electricity
(define-type ONT::GIVING
 :wordnet-sense-keys ("give%2:40:00" "give%2:40:03" "give%2:40:11" "giving%1:04:00" "offer%1:10:01" "offering%1:10:01"  "send_in%2:41:00")
 :parent ONT::RELINQUISH
 :comment "To relinquish control of AFFECTED AFFECTED-RESULT, typically voluntarily and possibly in exchange for something"
 :sem (F::SITUATION (f::cause f::agentive) (F::iobj F::recipient))
 :arguments ((:REQUIRED ONT::affected ((? oc F::Phys-obj F::Abstr-obj F::situation)
				       (f::type (? typ ont::Phys-object ont::loaded-claim  ;;  lawsuit
						   ont::mental-construction ont::information-function-object)))
			(f::tangible +))
	     (:REQUIRED ONT::affected-result ((? tc2  F::Phys-obj f::abstr-obj)))
	     (:optional ONT::RESULT ((? tc3  F::Phys-obj f::abstr-obj)))
             )
 )

(define-type ont::feeding
 :wordnet-sense-keys ("drench%2:34:00" "give%2:34:00")
 :parent ont::giving
 :comment "giving ingestible material (e.g. food, drink)"
)

(define-type ont::drugging
 :wordnet-sense-keys ("drug%2:34:00")
 :parent ont::feeding
)

(define-type ONT::donate-give
 :wordnet-sense-keys ("donate%2:40:00" "gift%1:21:00" "gift%2:40:00")
 :comment "to give without expectation of any payback or return"
 :parent ONT::giving
 )

;; owe
(define-type ONT::FUTURE-GIVING
 :wordnet-sense-keys ("bequeath%2:40:00" "leave%2:40:01" "will%2:40:00")
 :parent ONT::donate-give
 )

;; charge or bill an account, pay for something, spend money for something
(define-type ONT::commerce-pay
 :wordnet-sense-keys ("bid%2:40:00" "pay%2:40:00" "tithe%2:40:03")
 :parent ONT::giving
 :sem (F::Situation (F::Trajectory -)(F::Aspect F::dynamic))
 :arguments ((:OPTIONAL ONT::Source  ((? atp F::phys-obj F::abstr-obj) (F::object-function f::currency)))  ;; charge it to/take it from my card/account
;             (:OPTIONAL ONT::Cost (f::abstr-obj (F::scale F::money-scale)) (:implements money))
             (:OPTIONAL ONT::EXTENT (f::abstr-obj (F::scale ont::money-scale)) (:implements money))
	     (:optional ont::neutral ) ;; the thing that was paid for
             )
 )

;; sell something for a price
(define-type ONT::commerce-sell
 :wordnet-sense-keys ("merchandise%2:40:00" "sell%2:40:00")
 :parent ONT::giving
 :sem (F::Situation (F::Trajectory -)(F::Aspect F::dynamic))
 )

(define-type ONT::lend
 :wordnet-sense-keys ("hock%2:40:00" "lend%2:40:00" "loan%2:40:00" "pawn%2:40:00" "soak%2:40:03")
  :parent ONT::commerce-sell
  )

(define-type ONT::supply
 :wordnet-sense-keys ("furnish%2:40:00" "provide%2:40:00" "render%2:40:02" "supply%2:40:00")
  :parent ONT::giving
  :arguments ((:optional ONT::agent)
              (:optional ONT::affected (F::Phys-obj))
	      )
  )

(define-type ONT::surrender
 :wordnet-sense-keys ("cede%2:40:01" "chuck_up_the_sponge%2:33:00" "concede%2:40:00" "despair%2:37:00" "give_up%2:41:00" "grant%2:40:04" "relent%2:42:00" "submit%2:33:00" "surrender%2:40:00" "yield%2:33:00" "yield%2:40:01" "abandon%2:31:01" "abandon%2:40:01")
  :parent ONT::relinquish
  :arguments ((:optional ONT::affected-result (F::Phys-obj) (F::tangible +))
	      )
  :comment " an AGENT relinquishes AFFECTED unwillingly"
  )

(define-type ONT::lose
  :wordnet-sense-keys ("lose%2:39:00" "lose%2:39:01" "lose%2:40:00" "lose%2:40:01" "lose%2:40:02" "lose%2:40:06" "lose_sight_of%2:39:00" "loss%1:04:00")
  :parent ONT::relinquish
  )

#|(define-type ONT::state-of-being
  :parent ONT::event-of-state
  :arguments ((:REQUIRED ONT::neutral ((? ag F::Phys-obj f::abstr-obj)) (:implements donor))
             (:REQUIRED ONT::Formal ((? tc  F::Phys-obj f::abstr-obj f::situation)))
	     ))
|#

(define-type ONT::discard
    :wordnet-sense-keys ("eliminate%2:30:01" "eliminate%2:31:00" "eliminate%2:42:01" "get_rid_of%2:40:01"
					     )
    :parent ONT::relinquish
    :arguments ((:OPTIONAL ONT::Source)
		)
    )

(define-type ONT::owe
 :wordnet-sense-keys ("owe%2:40:01")
 :parent ONT::event-of-state
 :arguments ((:OPTIONAL ONT::neutral1 ((? rcp F::Phys-obj f::abstr-obj)))
	     (:optional ont::neutral2 )
             )
  )

(define-type ONT::is-compatible-with
 :wordnet-sense-keys ("accept%2:42:00" "accompany%2:42:00" "agree%2:42:03" "apply%2:42:01" "take%2:42:03")
 :parent ONT::event-of-state
 :arguments ((:REQUIRED ONT::NEUTRAL (F::Phys-obj (F::intentional -)))
	     (:ESSENTIAL ONT::neutral1 ((? tt F::phys-obj F::situation F::abstr-obj))))
 :comment "one object meets some criteria defined by another object"
 )

(define-type ONT::acquire-by-action
  :parent ONT::acquire
  )

(define-type ONT::appropriate
 :wordnet-sense-keys ("assume%2:38:00" "catch%2:35:00" "claim%2:32:03" "fill%2:41:00" "seize%2:40:07" "snatch%2:35:02" "take%2:35:00" "take%2:40:15")
 :parent ONT::acquire-by-action
 :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -) (F::Aspect F::Dynamic))
 :arguments ((:REQUIRED ONT::AGENT ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:REQUIRED ONT::affected ((? th15 F::Phys-obj f::abstr-obj f::situation)))
	     (:REQUIRED ONT::source ((? src F::Phys-obj f::abstr-obj) (F::intentional +)))
	     )
 )

(define-type ont::steal
 :wordnet-sense-keys ("loot%2:40:00" "loot%2:40:01" "steal%2:40:00")
 :parent ONT::acquire-by-action 
)

(define-type ONT::capture
  :wordnet-sense-keys ("capture%2:35:01" "catch%2:35:01" "get%2:35:09" "seize%2:35:01" "take%2:40:01")
  :parent ONT::acquire-by-action
  )

(define-type ONT::take-incrementally
 :wordnet-sense-keys ("bleed%2:40:09" "drain%2:34:00")
 :parent ONT::acquire-by-action
 )

(define-type ONT::take-by-deception
 :wordnet-sense-keys ("cheat%2:41:00" "chisel%2:41:01" "rip_off%2:41:00")
 :parent ONT::acquire-by-action
 :arguments ((:optional ONT::affected1 ((? agt F::Phys-obj f::abstr-obj))
			))
 )

;; book (a room, flight), reserve
(define-type ont::reserve
 :wordnet-sense-keys ("book%2:41:01" "booking%1:04:00" "hold%2:41:00" "reserve%2:41:00" "reservation%1:04:01")
  :parent ont::acquire
  :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -) (F::Aspect F::Dynamic))
  :arguments (
;	      (:optional ont::cost (f::abstr-obj (f::scale f::money-scale)) (:implements money))
	      (:optional ont::EXTENT (f::abstr-obj (f::scale ont::money-scale)) (:implements money))
	     (:REQUIRED ONT::affected((? th16 F::Phys-obj F::Abstr-obj f::situation)))
	     )
  )

(define-type ONT::MOVE
  :wordnet-sense-keys ("be_active%2:29:00" "draw%2:35:13" "go%2:33:00" "go%2:38:00" "go%2:42:06" "jaunt%2:38:00" "locomote%2:38:00" "make%2:38:05" "mobilize%2:30:00" "move%2:38:00" "move%2:38:02" "move%2:38:03" "movement%1:04:02" "move_out%2:41:00" "relocation%1:04:00" "take%2:38:05" "travel%2:38:00" "wreathe%2:38:00" "movement%1:11:00")
 :parent ont::motion
 :sem (F::SITUATION (F::CONTAINER -) (F::Locative -) (F::trajectory +))
 :arguments (;(:OPTIONAL ONT::agent (F::Phys-obj (:required (f::origin (? org f::human f::non-human-animal)))
					       ;(:default (F::Mobility F::Self-Moving))))
;             (:OPTIONAL ONT::purpose (F::Situation (F::Cause F::Agentive) (F::Aspect F::Dynamic)))
	     (:OPTIONAL ONT::REASON (F::Situation (F::Cause F::Agentive) (F::Aspect F::Dynamic)))
	     (:essential ont::scale (F::abstr-obj  (F::scale ont::domain)))
             )
 )

(define-type ont::MIGRATE
  :wordnet-sense-keys ("migrate%2:38:00" "migrate%2:38:01")
  :parent ont::move
  )

(define-type ont::TRANSLOCATE
  :wordnet-sense-keys ("translocate%2:40:00")
  :parent ont::move
  )

#|
; merged with FLUIDIC-MOTION
;; CAET
(define-type ont::pour
  :wordnet-sense-keys ("pour%2:38:03")
  :parent ont::move
  )
|#

;; CAET
(define-type ont::stir
  :parent ont::move
  )

(define-type ONT::move-by-means
 :wordnet-sense-keys ("drive%2:38:11" "take%2:38:02" "take%2:38:11")
; :parent ONT::MOVE
 :parent ONT::TRANSPORTATION
 :arguments ((:ESSENTIAL ONT::formal  (F::phys-obj (F::spatial-abstraction (? sab F::line F::strip))))
             )
 )

;; ascend, rise, elevate
(define-type ONT::move-upward
 :wordnet-sense-keys ("raise%2:38:00")
 :parent ONT::MOVE
 )

;; descend, dip (?)
(define-type ONT::move-downward
    :wordnet-sense-keys ("drop%2:38:01")
    :parent ONT::MOVE
 )

(define-type ONT::move-upside-down
 :wordnet-sense-keys ("invert%2:30:00" "invert%2:30:01")
 :parent ONT::move
 )

;; advance
(define-type ONT::move-forward
    :wordnet-sense-keys ( "progress%2:38:00")
    :parent ONT::MOVE
    )

;; recede
(define-type ONT::move-away
 :wordnet-sense-keys ("go%2:34:09")
 :parent ONT::MOVE
 )

;; back
(define-type ONT::move-back
 :wordnet-sense-keys ("back%2:38:01" "move_back%2:38:00" "retrograde%2:38:00")
 :parent ONT::MOVE
 )

;; roll
(define-type ONT::roll
 :parent ONT::MOVE
 )

;; shoot
(define-type ONT::move-quickly
    :definitions ((ont::and (ONT::MOVE :id ?id :agent ?agent :affected ?affected)
			    (ONT::SPEEDY :figure ?id)))
 :parent ONT::MOVE
 )

;; loop
(define-type ONT::circular-move
 :parent ONT::MOVE
 )

;; flutter
(define-type ONT::flutter
 :wordnet-sense-keys ("flutter%1:04:00" "flutter%1:11:01" "flutter%1:26:00" "flutter%2:29:00" "flutter%2:38:00" "flutter%2:38:01" "flutter%2:38:02" "flutter%2:38:03")
 :parent ONT::MOVE
 )

;; wobble
(define-type ONT::unsteady-move
 :parent ONT::MOVE
 )

;; glide, slide
(define-type ONT::move-fluidly
 :parent ONT::MOVE
 )

;; bounce
(define-type ONT::bounce-reflect
 :parent ONT::MOVE
 :wordnet-sense-keys ("bounce%2:35:03" "bounce%2:38:00" "bounce%2:38:02" "reflect%2:39:00" "reflect%2:43:00")
 )

;; pan
(define-type ONT::pan
 :parent ONT::MOVE
 )

;; jump, hop
(define-type ONT::jump
 :wordnet-sense-keys ("jump%2:38:01")
 :parent ONT::bounce-reflect
 )

;; sway, rock, quake
(define-type ONT::move-back-and-forth
 :wordnet-sense-keys ("move_back_and_forth%2:38:00")
 :parent ONT::MOVE
 )

;; fall, tumble
(define-type ONT::fall
    :wordnet-sense-keys ("fall%2:38:00" "fall%2:38:03")
  :parent ONT::MOVE-downward
  )

;; drift
(define-type ONT::drift
     :wordnet-sense-keys ("drift%2:38:01" "drift%2:38:02" "drift%2:38:04")
 :parent ONT::MOVE
 )


;; haul, lug
(define-type ONT::CAUSE-MOVE
    :definitions ((ont::CAUSE-EFFECT :agent ?agent
				     :formal (ONT::move :affected ?affected)))
  :parent ONT::MOVE
 )

#|
; merged with MOVE-UPWARD
;; heft, lift
(define-type ONT::lift
 :parent ONT::MOVE
 )
|#

;; head, approach, near
(define-type ONT::move-toward
 :wordnet-sense-keys ("come%2:38:00" "come_up%2:38:02")
 :parent ONT::MOVE
 :arguments ((:essential ont::neutral))   ;; the goal
 )

;; bypass
(define-type ONT::move-around
 :parent ONT::MOVE
 )

;; this should be refined to a web-specific class
;; scroll up/down a page
(define-type ont::scroll
  :parent ont::move
  )

;;; walk, run
;;; How to specify that the formal and the agent can be the same???
;;;(:BOUND AGENT () Formal)
(define-type ONT::SELF-LOCOMOTE
 :parent ONT::MOVE
 :sem (F::SITUATION (:required (F::Cause F::Agentive))(:default (F::Aspect F::unbounded) (F::Time-span F::extended)))
 :arguments (;(:ESSENTIAL ONT::AGENT (F::Phys-obj (F::origin (? o f::non-human-animal F::human))) (:implements FORMAL))
	     (:ESSENTIAL ONT::AGENT (F::Phys-obj (:required (f::origin (? org f::human f::non-human-animal)))
					       (:default (F::Mobility F::Self-Moving))))
	     (:optional ont::neutral (F::phys-obj (f::type ont::geo-object)))  ;; the path, road, as in "walk the path, walk the hills"
             )
 :wordnet-sense-keys("splash%2:35:02" "walk%2:38:00" "walk%2:38:02" "walk%2:38:03" "walk%2:38:04")
)

(define-type ont::locomote-up
    :wordnet-sense-keys ("ascend%2:38:02" "climb%2:38:00" "climb%2:38:01")
    :parent ONT::self-locomote
    )

(define-type ONT::swim
    :wordnet-sense-keys ("swim%2:38:00")
    :definitions ((ont::SELF-LOCOMOTE :agent ?agent
				      :result (ONT::move :affected ?affected)))
 :parent ONT::self-locomote
 )

;; gambol
(define-type ONT::move-playfully
 :parent ONT::self-locomote
 )

;; meander
(define-type ONT::move-leisurely
 :parent ONT::self-locomote
 )

;; jog
(define-type ONT::move-rapidly
 :wordnet-sense-keys ("hasten%2:36:00" "hurry%2:38:00" "run%2:38:00" "rush%2:30:00" "rush%2:38:00")
 :parent ONT::self-locomote
 )

;;
(define-type ONT::move-slowly
 :wordnet-sense-keys ("amble%2:38:00" "mosey%2:38:00")
 :parent ONT::self-locomote
 )

;; dance
(define-type ONT::dance
    :wordnet-sense-keys ("choreography%1:04:00" "dance%2:36:00" "dance%2:38:01" "dance%2:38:02" "dancing%1:04:00" "stage_dancing%1:04:00")
    :parent ONT::move
    :arguments ((:OPTIONAL ONT::neutral (F::situation (f::type ont::dance))))
    )



;; takes a formal object -- walk the dog;
;; not this one: walk the patient over to the xray facility (accompany)
(define-type ONT::walking
 :wordnet-sense-keys ("walk%2:38:05")
 :parent ONT::cause-move
 :arguments ((:ESSENTIAL ONT::affected (F::Phys-obj (F::origin (? o f::non-human-animal F::human))
						    (F::mobility f::movable)))
             )
 )

(define-type ont::physical-process
  :wordnet-sense-keys ("physical_phenomenon%1:19:00" "physical_process%1:03:00"  "process%1:03:00")
  :parent ONT::event-of-undergoing-action
  :sem (F::Situation)
  :arguments ((:REQUIRED ONT::affected (F::phys-obj))
	      )
  )

(define-type ONT::biological-process
    :wordnet-sense-keys ("biological_process%1:22:00"
			 "organic_process%1:22:00")
    :parent ONT::physical-process
    )


;; sleep, bleed, vomit, awaken
(define-type ONT::bodily-process
 :wordnet-sense-keys ("activity%1:22:00::" "bodily_function%1:22:00::" "bodily_process%1:22:00::" "body_process%1:22:00::")
 :parent ONT::physical-process
 :sem (F::Situation)
 :arguments ((:REQUIRED ONT::agent (F::phys-obj (F::origin F::living)))
	     (:REQUIRED ONT::affected (F::phys-obj (F::origin F::living)))
             (:OPTIONAL ONT::affected1 (F::phys-obj (F::form F::substance))) ;; e.g. an excretion
;	     (:OPTIONAL ONT::property (f::abstr-obj)) ;; he woke up happy
             )
 )

(define-type ont::processes-of-consciousness
 :parent ont::bodily-process
 )


(define-type ont::fall-asleep
    :wordnet-sense-keys ("fall_asleep%2:29:00" "go_to_bed%2:29:00")
    :definitions (ont::become :affected ?affected
			      :formal (ont::asleep-val :figure ?affected))
    :parent ont::processes-of-consciousness
    )

(define-type ont::sleep
    :wordnet-sense-keys("nap%1:28:00" "oversleep%2:29:00" "sleep%1:26:00" "sleep%1:26:02" "sleep%2:29:00")
    :definitions (ont::have-property :neutral ?affected
				     :formal (ont::asleep-val :figure ?affected))
    :parent ont::processes-of-consciousness
    )

(define-type ont::lie-dormant
 :wordnet-sense-keys("lie_dormant%2:41:00")
 :parent ont::sleep
 )

(define-type ont::nod
    :wordnet-sense-keys("nod%2:29:03")
    :definitions ((ont::and (ont::have :neutral ?affected :neutral1 (ont::head :id ?hd :figure ?affected))
			    (ont::move :affected ?hd))) 
    :parent ont::bodily-process
 )

(define-type ont::lose-consciousness
    :wordnet-sense-keys("loss_of_consciousness%1:11:00" "zonk_out%2:29:01")
    :definitions (ont::become :neutral ?affected
			      :formal (ont::not-aware-val :figure ?affected))
    :parent ont::processes-of-consciousness
    )

(define-type ont::awake
    :wordnet-sense-keys("arise%2:29:00" "awake%2:29:00" "wake%2:29:00")
    :definitions (ont::become :neutral ?affected
			      :formal (ont::awake-val :figure ?affected))
    :parent ont::processes-of-consciousness
    )

(define-type ont::alter-consciousness
 :wordnet-sense-keys ("hallucinate%2:39:00" "trip%2:34:00")
 :parent ont::processes-of-consciousness
)

(define-type ont::metabolize
 :wordnet-sense-keys ("metabolism%1:22:00")
 :parent ont::bodily-process
)

;; added for ASMA
(define-type ont::breathe
 :wordnet-sense-keys ("breathe%2:29:00" "choke%2:29:00" "respire%2:29:00" "suspire%2:29:03")
 :parent ont::bodily-process
)

;; added for ASMA
(define-type ont::obstructed-breathing
 :wordnet-sense-keys ("choke%2:29:01" "choke%2:29:03" "pant%2:29:00" "suffocate%2:29:01" "suffocate%2:35:01" "wheeze%1:04:00" "wheeze%2:29:00")
 :parent ont::breathe
)

(define-type ont::exhale
 :wordnet-sense-keys ("exhalation%1:04:00" "exhale%2:29:00")
 :parent ont::breathe
)

(define-type ont::exhale-forcefully
 :wordnet-sense-keys ("cough%2:29:00" "sneeze%2:29:00")
 :parent ont::exhale
)

(define-type ont::inhale
 :wordnet-sense-keys ("inhale%2:29:00" "intake%1:04:01")
 :parent ont::breathe
)

(define-type ont::excrete
 :wordnet-sense-keys ("excrete%2:29:00")
 :parent ont::bodily-process
)

(define-type ont::excrete-waste
 :wordnet-sense-keys ("defecate%2:29:00" "excretion%1:22:00" "urinate%2:29:00" "urinate%2:29:01")
 :parent ont::excrete
)

(define-type ont::vomit
 :wordnet-sense-keys ("gag%2:29:01" "vomit%2:29:00")
 :parent ont::excrete
)

(define-type ont::keep-down-vomit
 :wordnet-sense-keys ("keep_down%2:29:00")
 :parent ont::bodily-process
)

(define-type ont::sweat
 :wordnet-sense-keys ("sweat%2:29:00")
 :parent ont::excrete
)

(define-type ont::salivate
 :wordnet-sense-keys ("salivate%2:29:00")
 :parent ont::excrete
)


(define-type ont::bleed
 :wordnet-sense-keys ("bleed%2:29:00" "menstruation%1:22:00")
 :parent ont::excrete
)

(define-type ont::change-skin-color
 :wordnet-sense-keys ("flush%2:29:00" "pale%2:29:00")
 :parent ont::bodily-process
)

(define-type ont::digest
 :wordnet-sense-keys ("digest%2:34:00" "digestion%1:22:00")
 :parent ont::bodily-process
)

;; blood pulses through the veins                                                                                                                                                                                                            
(define-type ONT::pulse
 :wordnet-sense-keys ("pulse%1:11:00" "pulse%1:28:00")
 :parent ONT::BODILY-PROCESS
 :sem (F::Situation (F::aspect F::dynamic) (F::cause F::force))
 :arguments ((:REQUIRED ONT::affected)
             )
 )

(define-type ont::hair-process
 :wordnet-sense-keys ("bristle%2:38:00")
 :parent ont::bodily-process
)




;;;	 (:optional agent (ft_Phys-obj (intentional +) (Mobility F_Self-Moving)))
(define-type ONT::TRANSPORT
 :wordnet-sense-keys ("bring%2:38:00" "convey%2:38:00" "take%2:38:10" "bring%2:35:02" "port%2:38:06")
 :parent ONT::TRANSPORTATION
 :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory +))
 :arguments (
;	     (:ESSENTIAL ONT::Instrument (F::Phys-obj (F::Mobility F::Movable) (F::intentional -)))
             )
 )

(define-type ONT::DRIVE
 :wordnet-sense-keys ("drive%2:38:01")
 :parent ONT::TRANSPORT
 :sem (F::situation (F::Aspect F::dynamic))
 :arguments ((:ESSENTIAL ONT::agent (F::Phys-obj (F::Mobility F::land-movable) (F::intentional +))
             )
	     ))

#|
;; wheel (as a verb); need a new name
(define-type ONT::wheel-drive
 :parent ONT::drive
 :sem (F::situation (F::Aspect F::dynamic))
 )
|#

;; bike, cycle
(define-type ont::bike
  :parent ont::transport
  )

(define-type ONT::ROTATE
 :wordnet-sense-keys ("turn%2:38:00" "rotate%2:38:01")
 :parent ONT::event-of-causation
 :sem (F::situation (F::Aspect F::dynamic))
 :arguments (
;	     (:ESSENTIAL ONT::Instrument (F::Phys-obj (F::object-Function F::Vehicle) (F::Container +) (F::Mobility
;                             F::movable) (F::intentional -)))
             )
 )

(define-type ONT::RIDE
 :wordnet-sense-keys ("ride%2:38:00" "ride%2:38:01" "sit%2:38:03")
 :parent ONT::TRANSPORT
 :sem (F::situation (F::Aspect F::dynamic))
 :arguments ((:ESSENTIAL ONT::affected (F::Phys-obj (F::object-Function F::Vehicle) (F::Container +) (F::intentional -)))
	     (:ESSENTIAL ONT::Agent (F::Phys-obj (F::intentional +)))
             )
 )

(define-type ONT::FLY
 :wordnet-sense-keys ("fly%2:38:00" "wing%2:38:00" "fly%2:38:07")
 :parent ONT::MOTION
 :sem (F::situation (F::Aspect F::dynamic))
 :arguments ((:ESSENTIAL ONT::agent (F::Phys-obj (F::Mobility
                             F::air-movable))
             )
 ))


;;; Note that we reserve self-movement for "undirected" verbs
;;; Unlike "Arrive", the time is "extended"
(define-type ONT::COME
 :wordnet-sense-keys ("come%2:42:15")
 :parent ONT::MOVE
 :sem (F::SITUATION (f::cause f::force) (F::Aspect F::bounded) (F::Time-span F::Extended))
 )

;; the crowd dispersed; the water spread across the floor; the electricity distribution spread to the countryside
(define-type ONT::DISPERSE
 :wordnet-sense-keys ("scatter%2:38:01" "break_up%2:38:01" "dispel%2:38:01" "dissipate%2:38:01" "disperse%2:38:01" "disperse%2:38:00" "dissipate%2:38:00" "scatter%2:38:00" "spread_out%2:38:02" "distribute%2:35:01")
 :parent ont::motion
 :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Force))
 :arguments ((:REQUIRED ONT::affected ((? th17 f::phys-obj f::abstr-obj f::situation)))
             (:OPTIONAL ONT::agent)
             ;;(:OPTIONAL ONT::agent ((? f::abstr-obj F::phys-obj) (F::intentional +)) (:implements cause))
             )
 )

(define-type ONT::GO-ON
 :wordnet-sense-keys ("proceed%2:38:00" "go_forward%2:38:00" "continue%2:38:00")
 :parent ONT::MOVE
 :sem (F::SITUATION (F::Aspect F::Unbounded) (F::Time-span F::Extended))
 )

#|
; merge with RETURN
(define-type ONT::GO-BACK
 :parent ONT::MOVE
 :sem (F::SITUATION (:required (F::Cause F::Agentive))(:default (F::Aspect F::bounded) (F::Time-span F::atomic)))
 :arguments ((:ESSENTIAL ONT::AGENT (F::Phys-obj (f::Mobility F::Self-Moving)) (:implements FORMAL))
	     (:OPTIONAL ONT::Source (F::Phys-obj))
             )
 )
|#


(define-type ONT::RETURN
 :wordnet-sense-keys ("return%2:38:12" "take_back%2:38:03" "bring_back%2:38:00" "return%1:04:01")
 :parent ONT::MOVE
 :sem (F::SITUATION (:required)(:default (F::Aspect F::bounded) (F::Time-span F::atomic)))
 )

;; reach a conclusion, a limit
;;   you might think GOAL as the object, but the new classification says its neutral
;;   the fact that the agent is at the object after is an entailment
(define-type ONT::REACH
 :wordnet-sense-keys ("reach%2:38:00" "hit%2:38:07" "attain%2:38:00")
 :parent ONT::event-of-action ;; need to have a better placement for this!
 :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Agentive) (F::trajectory -) (F::Locative -)
                (F::Time-span F::Atomic))
 :arguments ((:OPTIONAL ONT::agent ((? ag f::abstr-obj F::Phys-obj) (f::intentional +)))
	     (:REQUIRED ONT::neutral ((? th18 f::phys-obj f::abstr-obj f::situation)))
	     )
 )


(define-type ONT::FOLLOW-SOMETHING
 :wordnet-sense-keys ("follow%2:38:00" "come_after%2:41:00" "follow%2:42:03")
 :parent ONT::MOTION-WRT-ANOTHER-OBJECT
 :sem (F::SITUATION (F::Aspect F::Unbounded) (F::Cause F::Agentive) (F::Trajectory +))
 )

(define-type ONT::PURSUE
 :wordnet-sense-keys ("pursue%2:38:00")
 :parent ONT::MOTION-WRT-ANOTHER-OBJECT
 :sem (F::SITUATION (F::Aspect F::Unbounded) (F::Cause F::Agentive) (F::Trajectory +))
 )

(define-type ONT::PRECEDE
 :wordnet-sense-keys ("antecede%2:42:00" "come_before%2:41:00")
 :parent ONT::MOTION-WRT-ANOTHER-OBJECT
 )

;; join another agent
(define-type ONT::CATCH
 :wordnet-sense-keys ("catch%2:33:10")
 :parent ONT::MOTION-WRT-ANOTHER-OBJECT
 :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Agentive) (F::Trajectory +))
 :arguments ((:OPTIONAL ONT::affected (F::Phys-obj (f::intentional +)))
             (:OPTIONAL ONT::agent (F::Phys-obj (f::intentional +)))
             )
 )

(define-type ONT::DEPART
    :wordnet-sense-keys ("depart%2:38:01" "leave%2:38:01" "leave%2:38:00")
    :parent ONT::MOTION-WRT-ANOTHER-OBJECT
    :comment "Object moves away from another object"
    :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Force) (F::Time-span F::Atomic)) 
    :arguments ((:OPTIONAL ONT::neutral ((? neut F::Phys-obj f::situation)))  ;; I left the party
	     (:optional ONT::source  ;; as in "I left from the party"
			)))

;;; A more abstract motion. Involves object changing places, but
;;; possibly through a sequence of motions
;;; The cause is agentive, but the agent is often unexpessed
;;; Often requires a source/recipient that are different
;;; from locations involved
;;; Source/goal are typi
(define-type ONT::Transfer
 :wordnet-sense-keys ("change%2:38:00" "transfer%2:38:02" "transfer%2:40:00" "change_owners%2:40:00")
 :parent ont::giving
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ont::divert
  :parent ont::transfer
  )

(define-type ONT::DELIVER
  :wordnet-sense-keys ("deliver%2:35:00")
; :parent ONT::TRANSPORTATION
 :parent ONT::TRANSFER
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments ((:OPTIONAL ONT::RESULT ((? rcp F::Phys-obj f::abstr-obj))) ;(F::intentional +)))
             (:OPTIONAL ONT::SOURCE ((? src F::Phys-obj f::abstr-obj))) ;(F::intentional +)))
             (:ESSENTIAL ONT::Agent)
             )
 )

(define-type ONT::SEND
 :wordnet-sense-keys ("send%2:32:00" "post%2:32:02" "mail%2:32:00" "ship%2:38:00" "send%2:38:00" "transport%2:38:01" "transmit%2:35:00" "transfer%2:35:00" "transport%2:35:01" "channel%2:35:00" "channelize%2:35:00" "channelise%2:35:00" "make_pass%2:38:00" "bundle_off%2:38:00" "transmission%1:04:01")
 :parent ONT::TRANSFER
 :sem (F::SITUATION (F::Aspect F::Dynamic) (F::trajectory +))
 :arguments ((:OPTIONAL ONT::RESULT ((? rcp F::Phys-obj f::abstr-obj))) ;(F::intentional +)))
             (:ESSENTIAL ONT::Agent)
             )
 )

(define-type ont::transmit
 :wordnet-sense-keys ("air%2:32:02" "air%2:32:01")
 :parent ont::send
)


(define-type ONT::SENDCOPY
 ; no WN sense available for cc, bcc and copy (copy someone something)
 :parent ONT::SEND
 :sem (F::SITUATION (F::Aspect F::Dynamic) (F::trajectory +))
 :arguments ((:OPTIONAL ONT::RESULT)
             (:ESSENTIAL ONT::Agent)
             )
 )


;;; We assume that passing moving objects is a different sense
(define-type ONT::PASS-ACROSS
 :wordnet-sense-keys ("pass%2:38:00" "go_through%2:38:00" "go_across%2:38:00")
 :parent ONT::MOTION-WRT-ANOTHER-OBJECT
 :sem (F::SITUATION (F::Trajectory -))
 :arguments (
             )
 )


(define-type ONT::AVOID-LOCATION
 :parent ONT::MOTION ;PATH-SHAPE
 :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::formal)   ;; the location, or an object
             )
 )

;;  wait, watch
(define-type ONT::wait-watch
    :wordnet-sense-keys ("wait%2:42:00" "watch%2:39:01")
    :comment "action of being attentive so as to notice something; stay vigilant"
    :parent ont::pay-attention
;    :sem (F::SITUATION (F::Cause F::Agentive))
;   :parent ont::intentionally-act 
; commenting out the following arguments as they are inherited from ont::cogitation
;    :arguments ((:optional ont::neutral ((? o F::Phys-obj f::abstr-obj f::situation)))
;		(:optional ont::formal (f::situation))
;	     )
)

;; avoid, escape, evade, get around
(define-type ONT::avoiding
 :wordnet-sense-keys ("avoid%2:32:00" "avoid%2:41:03" "keep_off%2:34:00" "avoid%2:34:00" "forbear%2:42:00")
 :parent ont::intentionally-act
 :sem (F::SITUATION (F::Cause F::Agentive))
 :arguments ((:optional ont::neutral ((? o F::Phys-obj f::abstr-obj f::situation)))
	     (:optional ont::formal (f::situation))
	     )
 )

(define-type ont::procrastinate
 :wordnet-sense-keys ("drag_one's_feet%2:42:00")
 :parent ont::avoiding
 :comment "waste time and delay what needs to be done. avoid by engaging something other than what one should be doing"
)

(define-type ONT::ignore
 :wordnet-sense-keys ("disregard%2:31:00" "ignore%2:31:01" "ignore%2:32:00" "ignore%2:32:02" "ignore%2:39:00" "neglect%2:31:05")
 :parent ont::intentionally-act
 :arguments ((:optional ont::neutral ((? o F::Phys-obj f::abstr-obj f::situation))))
)

(define-type ont::unfocused-activity
 :wordnet-sense-keys ("potter%2:35:01")
 :parent ont::intentionally-act
 :comment "engage in menial or unfocused activity; muck about, mess around"
)

;; 20121212 GUM change delete type and associated words
;; go to bed; go to sleep; turn in; hit the sack
;(define-type ONT::prepare-for-sleep
; :parent ont::intentionally-act
; :sem (F::SITUATION (F::Cause F::Agentive))
; :arguments ((:optional ont::property)) ;; go to sleep happy
; )

;;; This is actually 2 moving objects passing
;;; I put it into motion-wrt-another-object frame
(define-type ONT::PASS-BY
  :wordnet-sense-keys ("travel_by%2:38:01" "pass_by%2:38:00" "surpass%2:38:00" "go_past%2:38:00" "go_by%2:38:01" "pass%2:38:05")
  :parent ONT::motion-wrt-another-object
  :sem (F::SITUATION (F::Trajectory -))
  
  )

;;; This is only for movable objects meeting
;;; Path meeting gets mapped to intersection
(define-type ONT::MEET
 :wordnet-sense-keys ("meet%2:41:00" "gather%2:41:00" "assemble%2:41:00" "forgather%2:41:00" "foregather%2:41:00"  "come_across%2:38:00" "encounter%2:33:00" "meet%2:41:03"  "meet%2:41:01")
 :parent ONT::agent-interaction
 :sem (F::SITUATION (F::Trajectory -))
 :arguments (
             )
 )

(define-type ONT::COLLIDE
 :wordnet-sense-keys ("collide%2:35:01"  "collide%2:35:00" "crash%2:38:02" "crash%2:38:01")
 :comment "two objects comes into contact with force with another, typically both being negatively affected - also supports the plural subject that cincludes both objects"
 :parent ONT::cause-contact
 :sem (F::SITUATION (F::Trajectory -))
 :arguments ((:required ONT::affected (F::Phys-obj (F::mobility F::movable)))
	     (:optional ONT::affected1 (F::Phys-obj (F::mobility F::movable)))
             )
 )

(define-type ONT::kicking
 :parent ONT::hitting
 :sem (F::SITUATION (F::Trajectory -))
 )


(define-type ONT::PULL
 :wordnet-sense-keys ("force%2:35:01" "draw%2:35:03" "pull%2:35:00" "pull%2:35:04")
 :parent ONT::apply-force
 :arguments ((:optional ONT::source (F::abstr-obj (f::type ONT::SOURCE-RELN))))
 )


(define-type ONT::SUCK
 :wordnet-sense-keys ( "suck%1:04:00" "suck%2:34:04")
 :parent ONT::pull
 )

(define-type ONT::PUSH
 :wordnet-sense-keys ("poke%2:35:01" "push%2:38:00" "force%2:38:00" "thrust%2:38:00" "thrust%2:42:01" "wedge%2:35:00" "bump%2:35:00" "push%1:04:00" "boost%1:04:01")
  :parent ONT::apply-force
 )

(define-type ONT::PUSH-LIQUID
 :wordnet-sense-keys ("squirt%2:35:00" "squirt%2:35:10" "sprinkle%2:35:01" "spray%2:35:03" "splash%2:35:04" "splash%2:35:00")
  :parent ONT::push
  )

(define-type ont::expectorate
 :wordnet-sense-keys ("expectorate%2:29:00")
 :parent ont::push-liquid
) 


(define-type ont::blow
 :wordnet-sense-keys ("blow%2:29:00")
 :parent ont::apply-force
)

(define-type ONT::RUB-scrape-wipe
 :wordnet-sense-keys ("rub%2:35:00" "rub%2:39:00" "stroke%2:35:00" "swab%2:35:01")
  :parent ONT::apply-force
 )

(define-type ONT::PRESS
 :wordnet-sense-keys ("compress%2:35:00" "constrict%2:35:00" "squeeze%2:35:01" "compact%2:35:00" "contract%2:35:04" "press%2:35:02")
 :parent ONT::PUSH
 )

(define-type ONT::squeeze
 :wordnet-sense-keys ("squeeze%2:35:00")
 :parent ONT::PUSH
 )

;;; These are all opposite to movement - stopping, staying, standing etc
;;; They all occur at a point
;;; I kept them from the original hierarchy
;;; They didn't fit under FRAMENET frames
(define-type ONT::PERSISTENT-STATE ;LOCATED-MOVE-STATE
    :parent ONT::event-of-action
    :comment "a state of (passively) maintaining some object's state (e.g., position, possession)"
    :sem (F::SITUATION (F::trajectory -))
    :arguments ((:essential ont::agent)
		(:ESSENTIAL ONT::location (F::Phys-obj (F::Object-Function F::Place)))
		(:essential ont::formal)   ;; stay in motion, stay happy, ...
		)
    )

(define-type ONT::BE-INACTIVE
 :wordnet-sense-keys ("rest%2:41:00")
 :parent ONT::PERSISTENT-STATE ;HAVE-PROPERTY
)

(define-type ont::confine
 :wordnet-sense-keys ("confine%2:41:00" "confine%2:35:01" "confinement%1:04:00" "confinement%1:04:01")
  :parent ont::PERSISTENT-STATE ;located-move-state
  )

#||
(define-type ONT::STOP-MOVE
 :wordnet-sense-keys ("park%2:35:00")
 :parent ONT::LOCATED-MOVE-STATE
 :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Force))
 :arguments ((:REQUIRED ONT::affected (F::Phys-obj (F::Mobility F::Movable) (f::intentional -)))
             (:OPTIONAL ONT::agent)
             ;;(:OPTIONAL ONT::agent (F::phys-obj (F::intentional +)) (:implements cause))
             )
 )||#

;; marriage, birthday
(define-type ONT::social-event
 :parent ONT::event-defined-by-activity
  :sem (f::situation (:default (f::aspect f::dynamic)))
 		)

;; birth, death
(define-type ONT::be-born
 :wordnet-sense-keys ("nascence%1:11:00" "nascency%1:11:00" "nativity%1:11:00" "birth%1:11:00" "bear%2:29:01")
 :parent ONT::life-process
  :sem (f::situation (:default (f::aspect f::dynamic)))
  :arguments ((:essential ONT::affected-result (F::Phys-obj (f::type ont::mammal)))))

(define-type ONT::live
 :wordnet-sense-keys ("exist%2:42:01" "live%2:42:06" "live%2:42:07" "outlast%2:42:00" "survive%2:42:00" "survive%2:42:01" "survive%2:42:02")
 :parent ONT::life-process
  :sem (f::situation (:default (f::aspect f::dynamic)))
  :arguments ((:essential ONT::neutral))
  )

(define-type ONT::die
 :wordnet-sense-keys ("demise%1:28:00" "dying%1:28:00" "death%1:28:00" "death%1:26:01" "destruction%1:26:00" "last%1:28:01" "death%1:28:01" "death%1:26:00" "death%1:19:00" "die%2:30:00" "die%2:30:02"  "death%1:11:00" "decease%1:11:00" "expiry%1:11:00")
 :parent ONT::life-process
  :sem (f::situation (:default (f::aspect f::dynamic)))
 		)

; merged with ont::live
#|
(define-type ONT::survive
 :wordnet-sense-keys ("outlive%2:42:00" "outlast%2:42:00" "survive%2:42:03" "endure%2:42:00")
 :parent ONT::live
  :sem (f::situation (:default (f::aspect f::dynamic)))
  :arguments ((:essential ONT::affected ((? oc F::Phys-obj F::Abstr-obj f::situation))))
  )
|#

;; breath, heartbeat, inhalation
(define-type ONT::body-process-event
 :parent ONT::bodily-process
  :sem (f::situation (:default (f::aspect f::dynamic)))
 		)


;; exchange
(define-type ONT::transfer-event
 :parent ONT::event-defined-by-activity
  :sem (f::situation (:default (f::aspect f::dynamic)))
 		)

;; flood
(define-type ONT::natural-event
 :parent ONT::event-type
  :sem (f::situation (:default (f::aspect f::dynamic) (f::cause f::phenomenal)) (:required (f::trajectory -)))
    :arguments ((:essential ont::agent (f::situation (f::cause f::phenomenal)))
		))

;; not used
;(define-type ONT::atmospheric-condition
; :parent ONT::natural-event
; :sem (f::situation (:default (f::aspect f::static)))
; )

;; storm, thunder, lightning
(define-type ONT::atmospheric-event
 :wordnet-sense-keys ("brighten%2:43:00" "storm%2:43:01" "boom%2:43:00" "blow%2:43:00")
 :parent ONT::natural-event
 :arguments ((:essential ont::agent)
	     (:optional ont::norole)
	     )
 )

;; rain, snow, sleet, hail
(define-type ONT::precipitating
 :wordnet-sense-keys ("precipitate%2:43:00" "come_down%2:43:00" "fall%2:43:00")
 :parent ONT::atmospheric-event
 )

(define-type ONT::FLOODING
 :wordnet-sense-keys ("flood%1:19:00" "flood%1:23:00" "flood%2:35:00" "flood%2:30:00" "flood%2:30:01" "flush%2:30:03")
 :parent ONT::natural-event
 :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Force))
 :arguments ((:REQUIRED ONT::affected (F::Phys-obj (F::Mobility F::Movable)))
             (:OPTIONAL ONT::agent)
             )
 )

(define-type ONT::DROUGHT
 :wordnet-sense-keys ("drought%1:26:00")
 :parent ONT::natural-event
 :sem (F::SITUATION (F::Aspect F::Bounded) (F::Cause F::Force))
 :arguments (
             )
 )

(define-type ONT::STAY
 :wordnet-sense-keys ("stay%2:30:00" "remain%2:30:00" "rest%2:30:00" "dig_in%2:35:00" "settle%2:30:01" "stand_still%2:38:00" "stay%2:38:01" "stay_in_place%2:38:00" "live%2:42:08")
 :parent ONT::PERSISTENT-STATE ;LOCATED-MOVE-STATE
 :sem (F::SITUATION (F::Aspect F::Unbounded) (F::Cause F::Force) (F::Time-span F::Extended))
 :arguments ((:REQUIRED ONT::affected (F::Phys-obj (F::Mobility F::Movable)))
	     
             )
 )

;; top level for change: states, situations, objects
(define-type ont::change
 :wordnet-sense-keys ("change%1:07:00" "change%1:06:01" "change%2:30:00" "change%1:04:00" "change%1:19:00" "change%2:30:02" "change%2:30:08" "change%2:30:01" "transition%2:30:00")
 :parent ont::event-of-causation
 :comment "an event involving some change in an object"
 :sem (F::Situation (F::Cause F::force))
 :arguments (
	     (:optional ont::agent ((? cs f::phys-obj f::abstr-obj f::situation)))
	     (:optional ont::result)
	     ;; e.g. the research fluctuates with the budget; the interest increases with time
	     (:OPTIONAL ONT::formal ((? cl f::abstr-obj f::situation f::time))) ; was ont::correlate
	     ;;(:optional ont::agent ((? ag f::abstr-obj F::phys-obj )(F::intentional +))))
	     ))

;;; Additional class for state changes
;; for example for verbs where it doesn't make sense to separate object-change and situation-change senses
(define-type ONT::change-state
 :wordnet-sense-keys ("change%1:24:00" "modification%1:11:00" "alteration%1:11:00" "change%1:11:00" "overload%2:35:01")
  :parent ONT::change
  :arguments ((:REQUIRED ONT::affected ((? oc F::Phys-obj F::Abstr-obj f::situation)))
	      ;;(:OPTIONAL ONT::agent ((? ag f::abstr-obj F::phys-obj)(F::intentional +)) (:implements cause))
	      
	      (:required ont::agent((? cs f::phys-obj f::abstr-obj f::situation)))
	      )
  )

(define-type ONT::change-integrity
    :wordnet-sense-keys ("change_integrity%2:30:00")
    :parent ONT::change-state
    :comment "an AFFECTED undergoes a change of physical or chemical state that affects its integrity, e.g., thaw. Allows but does not require an AGENT"
    :sem (F::Situation (F::Trajectory -))
    :arguments ((:OPTIONAL ONT::Result (F::abstr-obj (F::TYPE (? t ont::resulting-state ont::domain-property))))
		)
    )

(define-type ONT::crush
 :wordnet-sense-keys ("squash%2:35:00" "crush%2:35:00" "squelch%2:35:00" "mash%2:35:00" "grind%2:35:00" "crush%1:04:00") 
 :parent ONT::change-integrity
 )


(define-type ont::solidify
 :wordnet-sense-keys ("clot%2:30:01" "freeze%2:30:02" "freeze%2:30:00" "solidify%2:30:00" "solidify%2:30:01" "crystallize%2:30:01")
 :parent ont::change-integrity
)

(define-type ont::liquefy
 :wordnet-sense-keys ("liquefy%2:30:00" "liquefy%2:30:01" "melt%2:30:01")
 :parent ont::change-integrity
)

(define-type ont::dissolve
 :wordnet-sense-keys ("dissolve%2:30:01" "dissolve%2:30:00")
 :parent ont::change-integrity
)

(define-type ont::granulate
 :wordnet-sense-keys ("granulate%2:30:00" "granulate%2:30:01")
 :parent ont::change-integrity
 )

(define-type ont::gasify-boil
 :wordnet-sense-keys ("gasify%2:30:00" "boil%2:30:01")
 :parent ont::change-integrity
 )

(define-type ONT::life-transformation
    :wordnet-sense-keys ("fruit%2:36:01" "cross-fertilize%2:29:00" "cross-fertilize%2:29:01" "work%2:30:14" "work%2:30:13" "ripen%2:30:01" "ripen%2:30:00" "mellow%2:30:00"
					 "mutation%1:11:01")
 :parent ONT::change-integrity
 )

(define-type ONT::burn
 :wordnet-sense-keys ("scorch%2:30:07" "sear%2:30:07" "singe%2:30:07" "burn%2:43:02" "combust%2:30:00" "combust%2:43:00" "combust%2:43:02")
 :parent ONT::change-integrity
 )

(define-type ont::chemical-change
 :wordnet-sense-keys ("demulsify%2:30:01" "demulsify%2:30:00" "polymerize%2:30:02" "polymerize%2:30:00" "emulsify%2:30:01" "emulsify%2:30:00")
 :parent ont::change-integrity
)

(define-type ONT::deteriorate
 :wordnet-sense-keys ("acerbate%2:37:00" "decay%2:30:00" "decay%2:30:01" "decay%2:30:02" "decompose%2:30:02" "degrade%2:35:00" "disintegrate%2:30:01")
 :parent ONT::change-integrity
 :arguments ((:REQUIRED ONT::Formal ((? tt f::phys-obj f::abstr-obj f::situation)))
             (:OPTIONAL ONT::Agent)
             )
 )


(define-type ONT::explode
 :wordnet-sense-keys ("set_off%2:30:00" "blow_up%2:30:03" "detonate%2:30:00" "detonate%2:30:01" "explode%2:30:01" "explode%2:30:00" "burst%2:30:09")
  :parent ONT::change-state
  )

(define-type ont::collapse
 :wordnet-sense-keys ("collapse%2:38:00" "collapse%2:38:03")
 :parent ont::change-state
)

;; revive, come to, energize, perk up
(define-type ont::reviving
    :wordnet-sense-keys ("resuscitate%2:29:00" "revive%2:29:01" "revive%2:29:02" "revitalize%2:30:00")
    :definitions ((ont::cause-effect :agent ?agent
				     :formal (ont::become :affected ?affected
							  :formal (ont::aware-val :figure ?affected))))
    :parent ont::change-state
    )

(define-type ONT::OBJECT-CHANGE
 :parent ONT::change
 :sem (F::SITUATION)
 :arguments ((:REQUIRED ONT::affected((? atyp F::Phys-obj F::Abstr-obj f::situation) (F::intentional -)))
             (:OPTIONAL ONT::RESULT)
	     (:OPTIONAL ONT::affected1 (F::Phys-obj))
	     (:OPTIONAL ONT::source (F::Phys-obj))
	     (:optional ont::affected-result)

	     )
 )

;; break a window, a plate
(define-type ont::break-object
 :wordnet-sense-keys ("wreck%1:11:00" "crash%1:11:00" "smash%1:04:00" "crash%1:04:00" "ram%2:35:01" "crash%2:35:00" "crash%2:38:04" "break_apart%2:35:00" "break_up%2:35:02" "crash%2:35:01" "come_apart%2:30:00" "fall_apart%2:30:03" "split_up%2:30:00" "separate%2:30:03" "break%2:30:00" "break%2:30:10" "break%2:30:15" "check%2:30:03" "crack%2:30:01" "tear%2:35:00" "rupture%2:35:00" "snap%2:35:01" "bust%2:35:02" "fracture%2:29:01" "break%2:35:13")
    :parent ont::object-change
    :arguments ((:required ONT::affected (F::Phys-obj (f::form (? f f::object f::solid))  ; "pizza" is (default) f::solid
						  ;; Myrosia 2008/16/07 added origin non-living to account for "break a path", "break a stone"
						  ;(f::origin (? o  f::artifact f::non-living)) ; living: break a leg
						  ))
		(:optional ONT::Result (F::abstr-obj (f::type ont::resulting-object)));;(F::Phys-obj (f::form f::object) (f::origin f::artifact)))
		(:optional ONT::agent)
;		(:optional ont::instrument (f::phys-obj))
		)
    )

(define-type ONT::shape-change
 :wordnet-sense-keys ("forge%2:36:03" "mould%2:36:01" "mold%2:36:01" "work%2:36:12" "form%2:36:00" "shape%2:36:00" "shape%2:30:00" "form%2:30:01")
  :parent ONT::object-change
  )

(define-type ONT::fold
 :parent ONT::shape-change
 :wordnet-sense-keys ("fold%2:35:00" "deformation%1:11:01" "line%1:15:01")
 :arguments ((:required ONT::affected (F::Phys-obj (f::mobility f::movable))))
 :sem (F::situation (F::Aspect F::dynamic))
 )



;(define-type ONT::sharpen ;; GUM change : new class
;  :parent ONT::shape-change
;  :wordnet-sense-keys ("sharpen%2:35:00")  
;  )

;(define-type ONT::soften
;  :parent ont::shape-change
;  :wordnet-sense-keys ("soften%2:30:01" "soften%2:30:00")
;)

(define-type ONT::nature-change
 :wordnet-sense-keys ("process%2:36:00" "work_on%2:36:00" "work%2:36:00" "process%2:30:00" "treat%2:30:01")
  :parent ONT::object-change
  )

#|
;;; My own top frame for situation changes
(define-type ONT::Situation-Change
 :wordnet-sense-keys ("go%2:42:03" "go%2:42:12")
 :parent ONT::change
 :sem (F::Situation (:required (F::Aspect F::Dynamic))(:default (F::Cause F::Force)))
 ;; formal really shouldn't be a situation here
 :arguments ((:REQUIRED ONT::formal (F::Situation (F::Aspect (? asp F::Dynamic F::Stage-level))))
             (:ESSENTIAL ONT::agent)
             ;;(:OPTIONAL ONT::agent ((? agt f::phys-obj f::abstr-obj) (f::intentional +)) (:implements cause))
	     (:required ont::effect (F::Situation (F::Aspect (? asp F::Dynamic F::Stage-level)))))
 )
|#

(define-type ONT::Stop
    :wordnet-sense-keys ("abort%2:29:00" "blow_out%2:43:00" "bog_down%2:38:01" "break%2:42:04" "cease%2:42:00" "discontinue%2:42:00" "expire%2:42:00" "get_off%2:41:00" "give_up%2:42:00" "halt%2:38:01" "lay_off%2:42:00" "quit%2:42:04" "run_out%2:42:00" "stop%2:38:01" "stop%2:42:00" "strand%2:38:02" "strand%2:38:03" "terminate%2:30:01")
    :parent ONT::inhibit-effect
;    :arguments ((:ESSENTIAL ONT::affected ((? oc F::Situation)))  ; commented this out because we can say "stop the car"
;		)    
 )

;; added because of importance in bio domain
(define-type ONT::deactivate
    :comment "Stoping the running of some ongoing process or object that causes a process"
    :parent ONT::stop
 )

(define-type ONT::pause
  :wordnet-sense-keys ("pause%2:42:00" "pause%2:32:01")
  :parent ONT::inhibit-effect
 :arguments ((:OPTIONAL ONT::EXTENT (F::abstr-obj (F::scale ont::duration-scale)))
             ;;; wait for john
             ;(:OPTIONAL ONT::Formal (F::phys-obj))
             )
 )




;; 20120524 GUM change new type
(define-type ont::cause-produce-reproduce
    :comment "an AGENT causes a new object to be created"
    :wordnet-sense-keys ("output%1:23:00" "produce%2:36:03" "yield%2:40:00" "yield%2:40:02")
    :parent ont::cause-effect
    :definitions ((ont::cause-effect :agent ?agent
				     :formal (ont::become
					      :formal (ont::exists :neutral ?affected))))
    :arguments ((:ESSENTIAL ONT::affected-result ((? agt F::phys-obj f::abstr-obj f::situation)))
		)
    )

(define-type ONT::START
 :wordnet-sense-keys ("begin%2:30:01" "start%2:41:00" "get_down%2:30:00" "start%2:38:00" "start%1:11:00" "start%1:28:00" "take%2:41:13" "take_to%2:41:01" "begin%2:32:04" "originate_in%2:42:00" "initiate%2:36:00" "initiate%2:30:00")
 :parent ONT::cause-effect
 :arguments ((:OPTIONAL ONT::neutral ((? agt f::abstr-obj f::situation)))  ;; start the meeting
	     )
 )

;; 20190125 MERGING ont::startoff-begin-commence-start with ont::start
;; 20120523 GUM change new type
;(define-type ont::startoff-begin-commence-start
; :wordnet-sense-keys ("get_down%2:30:00" "start%2:38:00" "start%1:11:00" "start%1:28:00" "take%2:41:13" "take_to%2:41:01" "begin%2:32:04")
;;    :wordnet-sense-keys ("start%2:38:00" "start%2:41:00" "take_to%2:41:01" "start%1:11:00" "start%1:28:00")
;    :parent ont::start
;    )


(define-type ONT::START-OBJECT
 :wordnet-sense-keys ("start%2:38:01" "start_up%2:38:00" "activate%2:30:00" "trip%2:36:00" "trigger%2:33:00" "go_off%2:30:00" "go_off%2:33:00")
 :parent ONT::start
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments (;;(:REQUIRED ONT::Formal)
             (:REQUIRED ONT::Agent)
	     (:OPTIONAL ONT::Affected (f::phys-obj));; (f::form f::substance))) ;; turn off the water -- you're really runing off the tap which produces water
             ))

(define-type ont::boot-up
    :parent ont::start-object
    :arguments ((:REQUIRED ONT::Affected (f::phys-obj (F::TYPE (? xx ont::device ont::algorithm )))))
  :wordnet-sense-keys ("boot%2:29:00")
  :comment "start a computer or software program"
  )

;(define-type ont::reboot
;  :parent ont::boot-up
;  )

;;; This is a hack, and so I leave many features absent.
;;; This is "no formal" restart referring to dialogue level
;; restart, start again, start over
(define-type ONT::RESUME
  :wordnet-sense-keys ("restart%2:30:00" "return%1:04:02")
 :parent ONT::start
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -) (F::Time-span F::atomic))
 )



;; merged again ASK-QUERY-QUESTION and ENQUIRE-INQUIRE (which mainly takes the intransitive form)
;; renamed and moved up to under COMMUNICATION
(define-type ont::ask-question
  :wordnet-sense-keys ("ask%2:32:00" "ask%2:32:02" "ask%2:32:04")
    :parent ont::COMMUNICATION
    )

#|
;; 20120524 GUM change new type
(define-type ont::ask-query-question
    :parent ont::questioning
    )


;; 20120524 GUM change new type
(define-type ont::enquire-inquire
    :parent ont::questioning
    )
|#



(define-type ONT::ATTRACT
 :wordnet-sense-keys ("attract%2:35:00" "attract%2:35:01" "affinity%1:19:01" "affinity%1:19:02")
 :parent ONT::event-of-causation
  :arguments ((:ESSENTIAL ONT::agent ((? oc F::Phys-obj F::Abstr-obj)))
	      (:ESSENTIAL ONT::affected ((? oc2 F::Phys-obj F::Abstr-obj)))
	      ))



;; go out, socialize, mingle
(define-type ONT::social-activity
 :wordnet-sense-keys ("socialize%2:41:01" "socialise%2:41:01" "mingle%2:41:00" "visit%1:04:02" )
  :parent ONT::activity
  :sem (F::Situation (:required (F::Aspect F::Dynamic))(:default (F::Cause F::Force)))
  :arguments ((:ESSENTIAL ONT::agent (f::phys-obj  (:required (f::origin (? org f::human f::non-human-animal)))))
;	      (:OPTIONAL ONT::Co-Agent)
	      (:optional ont::affected)
             )
 )

;;  e.g., represent someone in court
(define-type ont::represent
    :wordnet-sense-keys ("defend%2:41:00" "be%2:42:08")
    :parent ONT::social-activity
    :sem (F::Situation (:required (F::Aspect F::Dynamic))(:default (F::Cause F::Force)))
    :arguments ((:ESSENTIAL ONT::affected (f::phys-obj  (:required (f::origin (? org f::human f::non-human-animal)))))
		))

(define-type ont::social-relationship
  :wordnet-sense-keys ("relationship%1:24:00" "relationship%1:26:00" "romance%1:26:00" "affair%1:26:00" "relationship%1:26:01")
  :parent ont::social-activity
)

(define-type ont::physical-activity
  :parent ont::activity
  )

(define-type ONT::Sensitivity
 :parent ONT::physical-process
 ;;; Protagonist
 :arguments ((:ESSENTIAL ONT::affected)
             ;;; Trigger
             (:REQUIRED ONT::Formal)
             )
 )

;; addicted to, allergic to
(define-type ONT::physical-reaction
 :parent ONT::sensitivity
 ;;; The undergoer - john is addicted to drugs, he is allergic to peanut butter
 :arguments ((:ESSENTIAL ont::affected (F::phys-obj (F::intentional +)))
             (:ESSENTIAL ONT::Formal)
             )
 )

;; exercise

(define-type ONT::working-out
 :wordnet-sense-keys ("work_out%2:29:01" "work%2:29:00" "exercise%2:29:01" "exercise%2:34:00" "exert%2:34:00" "exercise%1:04:00" "exercising%1:04:00" "physical_exercise%1:04:00" "physical_exertion%1:04:00" "workout%1:04:00" "exercise%2:29:00")
  :parent ONT::physical-activity
  :sem (F::Situation (:required (F::Aspect F::Dynamic))(:default (F::Cause F::Force)))
  :arguments ((:ESSENTIAL ONT::agent (f::phys-obj (f::origin f::human) (f::intentional +)))
	      (:ESSENTIAL ONT::affected (f::phys-obj (f::origin f::human))) ;; body parts are origin human
             )
 )

(define-type ONT::cardiopulmonary-exercise
 :parent ONT::working-out
  :wordnet-sense-keys ("cardiopulmonary_exercise%1:04:00")
 )

;;; doesn't require transfer
;; find, locate
;; compare also ont::becoming-aware, ont::coming-to-belive, ont::seek
(define-type ONT::FIND
 :wordnet-sense-keys ("bump%2:40:12" "chance%2:40:12" "come_up%2:40:00" "encounter%2:40:00" "find%2:40:00" "find%2:40:01" "find%2:40:02" "get_hold%2:40:00" "happen%2:40:12" "line_up%2:40:00" "regain%2:40:01")
 :parent ONT::acquire
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments ((:OPTIONAL ont::result ((? rcp F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:ESSENTIAL ONT::Agent)
             (:ESSENTIAL ONT::affected  ((? t f::phys-obj F::abstr-obj F::situation)))
             (:OPTIONAL ONT::SOURCE (F::Phys-obj))
             )
 )

;; seek, look for
(define-type ONT::seek
 :parent ONT::scrutiny
 )

;; look up
(define-type ONT::look-up
  :wordnet-sense-keys ("look_up%2:32:00")
  :parent ONT::seek
 )



;; this is to correspond to the activity-ongoing in FrameNet
;; So far there is no immediate distinction with activity-ongoing
;; because this is too specific and difficult to disambiguate
;; this will be keep, continue, go on, proceed and so forth
(define-type ont::activity-ongoing
  :wordnet-sense-keys ("maintain%2:40:10" "save%2:40:03" "maintain%2:34:00" "keep_on%2:41:00" "retain%2:41:01" "maintain%2:31:00"  "continue%2:42:01" "persist%2:42:01" "welter%2:31:00" "sustain%2:42:01" "keep_up%2:33:00")
  :parent ont::event-of-action
  :comment "actively doing something to maintain a state (i.e., involves an agent)"
  :sem (f::situation (:default (f::aspect f::dynamic) (f::cause f::phenomenal)) (:required (f::trajectory -)))
  :arguments ((:essential ont::formal (f::situation)) ;; this would be the interview which went well
	      (:essential ont::neutral) 
	      (:optional ont::agent ((? agt f::phys-obj f::abstr-obj))) 
	      ))

; merged into RESTART
#|
;; resume, recommence
(define-type ONT::resume-action
 :parent ONT::activity-ongoing
 )
|#

;;; When something happens, there are no agents
(define-type ONT::Happen
 :wordnet-sense-keys ("chance%2:41:01::")
 :parent ONT::event-of-state
 :sem (F::Situation (F::Cause F::Phenomenal))
 :arguments ((:optional ont::formal ((? tp f::situation f::abstr-obj)))
	     (:optional ont::experiencer ((? atp F::phys-obj F::abstr-obj) (F::intentional +)))
	     ))

;;; When something appears, there are no agents
(define-type ONT::appear
 :wordnet-sense-keys ("appear%2:30:00" "appear%2:30:02" "break%2:32:05" "come_out%2:32:00" "materialize%2:30:00")
 :parent ONT::event-of-undergoing-action
 :comment "an entity comes into existence or comes into view"
 :sem (F::Situation (F::Cause F::Phenomenal))
 :arguments ((:optional ont::affected ((? tp f::phys-obj f::abstr-obj)))
	     )
 )

;;; When something appears, there are no agents
(define-type ONT::disappear
 :wordnet-sense-keys ("disappear%2:30:00" "go_down%2:34:00" "vanish%2:30:02")
 :parent ONT::event-of-undergoing-action
 :comment "an entity goes out of existence or goes out of view"
 :sem (F::Situation (F::Cause F::Phenomenal))
 :arguments ((:optional ont::affected ((? tp f::phys-obj f::abstr-obj)))
	     )
 )

;;; Stop is just an interruption
;;; Finish implies completed action

;;; Complete takes an action that requires an intentional agent
(define-type ONT::Complete
    :wordnet-sense-keys ("complete%2:30:02" "finish%2:30:02" "carry_to_term%2:29:00" "hold_one's_own%2:42:00" "succeed%2:41:00" "excel%2:42:00" "completion%1:04:00"
					    "success%1:11:00" "success%1:04:00" "completion%1:04:02")
					; :parent ONT::SITUATION-CHANGE
    :parent ONT::ACTING
    :sem (F::Situation (F::Cause F::agentive))
    :arguments ((:essential ont::formal))
    )

;; manage
(define-type ONT::manage-to-complete
 :wordnet-sense-keys ("pull_off%2:41:00")
 :parent ONT::complete
; :arguments ((:OPTIONAL ONT::Instrument (F::Phys-obj (F::intentional -)))
;	     (:REQUIRED ONT::effect (F::Situation))
;	     (:REQUIRED ONT::Formal ((? obj F::PHYS-OBJ F::ABSTR-OBJ)))
;	     (:OPTIONAL ONT::Cause)
;	     (:REQUIRED ONT::agent ((? ag f::abstr-obj F::phys-obj) (F::intentional +)) (:implements cause))
;             )
 )

(define-type ONT::progress
 :wordnet-sense-keys ("go%2:30:02" "progress%2:30:00"  "progress%2:30:01" )
; :parent ONT::SITUATION-CHANGE
 :parent ONT::ACTIVITY-ONGOING
 :comment "A situation continues to develop"
 :sem (F::Situation (F::Cause F::agentive))
 )

;; swear  20120523 GUM change new type
(define-type ont::swear
    :parent ont::exclamation
    )

(define-type ONT::warn
 :wordnet-sense-keys ("warn%2:32:00")
 :parent ONT::directive
 )

(define-type ont::threaten
 :wordnet-sense-keys ("threaten%2:32:00" "intimidate%2:37:01" "menace%2:32:00" "harass%2:37:00")
 :parent ont::directive
)

#|
(define-type ONT::instruct
    :parent ONT::directive
    )
|#

(define-type ONT::promise
 :wordnet-sense-keys ("promise%2:32:00" "promise%2:32:01")
 :parent ONT::commissive
 )

;; kill, destroy
(define-type ont::destroy
    :comment "render inoperative"
    :wordnet-sense-keys ("destroy%2:35:00" "destroy%2:36:00" "down%2:38:00" "knock_out%2:30:00" "knock_out%2:30:01" "destruction%1:04:00"
					   "abortion%1:04:00")
    :arguments ((:REQUIRED ONT::affected ((? xx F::Phys-obj F::Abstr-obj)
					  (F::type (? tt ONT::phys-object ont::mental-construction)))))
    :parent ont::change-state
    )

(define-type ont::kill
    :wordnet-sense-keys ("kill%2:35:00" "kill%2:35:01" "kill%2:35:02" "destroy%2:35:01"
					"killing%1:04:00" "corporal_punishment%1:04:00")
    :comment "killing a living being"
    ;;:definitions ((cause-effect :agent (R :agent) :formal (ont::die :affected (R :affected))))
    :arguments ((:ESSENTIAL ONT::affected (F::phys-obj (F::type ont::organism) (F::origin F::living))))
    :parent ont::destroy
    )

;; denude, depopulate
(define-type ONT::destroy-part-of-whole
 :wordnet-sense-keys ("denude%2:30:00" "bare%2:30:00" "denudate%2:30:00" "strip%2:30:05")
 :parent ONT::destroy
 :arguments ((:OPTIONAL ONT::formal1) ; formal1 is the part, formal is the whole
             )
 )

(define-type ONT::Conversing
    :wordnet-sense-keys ("talk_about%2:32:01" "talk_of%2:32:00" "converse%2:32:00" "discourse%2:32:01" "correspond%2:32:00"
					      "conversation%1:10:00")
    
 :parent ONT::communication
 :comment "extended interaction using communication acts, symmetric  AGENT1"
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments ((:ESSENTIAL ONT::agent ((? atp F::phys-obj F::abstr-obj) (F::intentional +)))
	     (:ESSENTIAL ONT::agent1 ((? atp1 F::phys-obj F::abstr-obj) (F::intentional +)))
             )
 )


(define-type ONT::Interact
 :wordnet-sense-keys ("interact%2:41:00")
 :parent ONT::agent-interaction
 :sem (F::Situation (F::Trajectory -))
 :arguments (
	     (:REQUIRED ONT::agent ((? o1 F::Situation F::Phys-obj f::abstr-obj)))
	     (:ESSENTIAL ONT::agent1 ((? o2 F::Situation F::Phys-obj f::abstr-obj)))
             )
 )


;;; interview people
(define-type ONT::INTERVIEW
 :wordnet-sense-keys ("question%2:32:09" "interview%2:32:00" "interview%1:10:01")
 :parent ONT::directed-communication
 :comment "interviewing people"
 :sem (F::SITUATION (F::Cause F::agentive))
 )

;; cognizer gains knowledge from understanding a text or other signs
(define-type ONT::READ
 :wordnet-sense-keys ("translate%2:31:00" "interpret%2:31:02" "read%2:31:04" "understand%2:31:03" "read%2:31:01" "read%2:31:00")
 :parent ONT::acquire-belief
 :arguments ((:ESSENTIAL ONT::FORMAL ((? tt F::phys-obj F::abstr-obj f::situation) (F::information F::information-content)))
             )
 )

(define-type ONT::decide
 :wordnet-sense-keys ("decide%2:31:00" "decide%2:31:02" "decision%1:04:00")
 :parent ONT::acquire-belief
 :arguments ((:ESSENTIAL ONT::FORMAL ((? tt F::phys-obj F::abstr-obj f::situation) (F::information F::information-content)))
             )
 )

;; cognizer acquires knowledge about a situation but it doesn't hold
(define-type ONT::MisUnderstand
 :wordnet-sense-keys ("misconstrue%2:31:01" "misinterpret%2:31:02" "misconceive%2:31:01" "misunderstand%2:31:01" "misapprehend%2:31:01" "be_amiss%2:31:01")
 :parent ONT::acquire-belief
 :arguments ((:REQUIRED ONT::Agent)
             (:ESSENTIAL ONT::Formal ((? t F::abstr-obj f::phys-obj F::situation)))
             )
 )


(define-type ONT::doubt
 :wordnet-sense-keys ("doubt%2:31:00" "disbelieve%2:31:00" "discredit%2:31:00")
  :parent ONT::attitude-of-belief
  )

;; fight, struggle, contend, defend
(define-type ONT::fighting
 :wordnet-sense-keys ("campaign%2:33:00" "fight%2:33:00")
 :parent ONT::agent-interaction
 :arguments ((:optional ONT::neutral)  ;; fight with the proposal
	     (:optional ont::formal)  ;; struggle to breath
             )
 )

;;; we assume that "you" etc does not show outside
(define-type ONT::WANT
 :wordnet-sense-keys ("desire%2:37:00" "want%2:37:00")
 :parent ONT::EXPERIENCER-EMOTION
 :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::extended) (F::Trajectory -))
 ;;; (Cause -)
 :arguments ((:ESSENTIAL ONT::neutral ((? s F::phys-obj f::abstr-obj) (F::intentional +)))
          ;;   (:OPTIONAL ONT::Formal ((? o F::Phys-obj F::abstr-obj F::situation)))
	     (:optional ont::neutral1)
	     (:OPTIONAL ONT::Formal)
             ;;(:OPTIONAL ONT::Effect (F::Situation))
	     ;; this breaks 'I want you to go' & parses the 'to go' as ont::purpose
         ;;    (:OPTIONAL ONT::Purpose ((? purp F::situation F::phys-obj)))
             )
 )

(define-type ONT::misses
 :wordnet-sense-keys ("miss%2:37:00")
 :parent ONT::want
 )

;(define-type ont::raging
; :wordnet-sense-keys ("seethe%2:37:00" "rage%2:37:00" "fume%2:37:00")
; :parent ont::experiencer-emotion
;)

(define-type ONT::disliking
 :wordnet-sense-keys ("dislike%2:37:00")
 :parent ONT::experiencer-emotion
 )

(define-type ONT::regretting
 :wordnet-sense-keys ("deplore%2:32:01" "lament%2:32:00" "bewail%2:32:00" "bemoan%2:32:00" "atone%2:37:00")
 :parent ONT::experiencer-emotion
 )

(define-type ONT::hesitate
  :wordnet-sense-keys ("hesitate%2:42:00")
  :parent ont::experiencer-emotion
  )

(define-type ONT::enduring
 :wordnet-sense-keys ("digest%2:31:03" "endure%2:31:00" "stick_out%2:31:00" "stomach%2:31:00" "bear%2:31:00" "stand%2:31:00" "tolerate%2:31:00" "support%2:31:04" "brook%2:31:00" "abide%2:31:00" "suffer%2:31:00" "put_up%2:31:00" "last_out%2:42:00")
 :parent ONT::active-perception
 )

;; 20121212 GUM change delete type (no words)
;(define-type ONT::annoying
; :parent ONT::experiencer-emotion
; )

(define-type ONT::fearing
 :wordnet-sense-keys ("fear%2:37:03" "fear%2:37:00" "dread%2:37:00" "fear%2:37:13")
 :parent ONT::experiencer-emotion
 :definitions ((ont::have-property :neutral ?experiencer
				   :formal (ont::afraid :figure ?experiencer
							:ground ?neutral)))
							
 )

(define-type ONT::care
 :wordnet-sense-keys ("mind%2:31:02" "care_a_hang%2:37:00")
 :parent ONT::experiencer-emotion
 )

(define-type ONT::state-of-worrying
 :wordnet-sense-keys ("worry%2:37:00" "concern%2:42:01")
 :parent ONT::care
 )

(define-type ONT::empathize
 :wordnet-sense-keys ("empathise%2:31:00" "sympathize%2:37:01" "sympathize%2:37:00")
 :parent ONT::care
 )

(define-type ONT::pity
 :wordnet-sense-keys ("pity%2:37:00")
 :parent ONT::care
 )

(define-type ONT::envying
    :wordnet-sense-keys ("envy%2:37:01" "begrudge%2:37:00")
    :definitions ((ont::have-property :neutral ?experiencer
				      :formal (ont::envious :figure ?experiencer
							   :ground ?neutral)))

    :parent ONT::experiencer-emotion
    )

;;; AFFECT-EXPERIENCER: NEUTRAL EXPERIENCE
(define-type ont::neutral-experience
 :parent ont::affect-experiencer
)

(define-type ont::evoke-numbness
 :parent ont::neutral-experience
 :wordnet-sense-keys ("sedate%2:29:00" "numb%2:39:00" "anesthetize%2:29:00")
)

;(define-type ONT::evoke-emotion
; :wordnet-sense-keys ("arouse%2:37:00" "elicit%2:37:00" "enkindle%2:37:00" "kindle%2:37:00" "evoke%2:37:00" "fire%2:37:00" "raise%2:37:08" "provoke%2:37:00")
; :parent ONT::affect-experiencer
; :comment "actions the cause some emotion in an agent"
; :definitions ((ont::cause-effect :agent ?agent
;			   :formal (ont::experiencer-emotion :experiencer ?affected)))
; ;; experiencer restricted to be intentional in order to distinguish certain
; ;; words' senses under ONT::evoke-emotion from those under ONT::evoke-physical
; :arguments ((:REQUIRED ONT::affected (F::phys-obj (F::origin f::living) (F::intentional +)))
;             )
; )
;)

(define-type ONT::evoke-excitement
 :wordnet-sense-keys ("agitate%2:37:00" "exalt%2:37:01" "overwhelm%2:37:00" "stir%2:37:01" "stir%2:39:00")
 :parent ONT::neutral-experience
 :comment "stir strong feelings"
 )

(define-type ONT::evoke-attention
    :wordnet-sense-keys ("interest%2:37:00" "preoccupy%2:37:00")
    :arguments ((:OPTIONAL ONT::formal (F::situation)))     ;; e.g., they engaged him in the movie /He was engaged in the movie
    :parent ONT::neutral-experience
 )

(define-type ont::evoke-curiosity
 :wordnet-sense-keys ("intrigue%2:42:00")
 :parent ont::evoke-attention
)

(define-type ONT::evoke-attraction
 :wordnet-sense-keys ("capture%2:37:00" "touch%2:37:00" "disarm%2:37:00")
 :parent ONT::evoke-attention
 )

(define-type ONT::evoke-clarity
 :wordnet-sense-keys ("enlighten%2:32:00")
 :parent ONT::neutral-experience
 )

(define-type ONT::evoke-surprise
 :wordnet-sense-keys ("amaze%2:31:00" "awe%2:37:00" "stagger%2:37:00" "stun%2:39:00" "surprise%1:11:00" "surprise%2:31:00")
 :parent ONT::neutral-experience
 :comment "evoke shock or astonishment via the unexpected"
 )

(define-type ont::evoke-sensory-perception
 :wordnet-sense-keys ("sensitize%2:30:02" "greet%2:39:00")
 :parent ont::neutral-experience
)

;;; AFFECT-EXPERIENCER: IMPROVE EXPERIENCE

(define-type ont::improve-experience
 :parent ont::affect-experiencer
)

(define-type ont::evoke-relief
 :wordnet-sense-keys ("still%2:37:01"); "comfort%2:37:01")
 :parent ont::improve-experience
 :arguments ((:REQUIRED ONT::affected (F::phys-obj (F::intentional +))))
)

(define-type ont::evoke-liveliness
 :wordnet-sense-keys ("energize%2:29:00" "enliven%2:30:00")
 :parent ont::improve-experience
)

(define-type ont::evoke-calm
 :wordnet-sense-keys ("calm%2:37:01" "pacify%2:37:00" "mellow%2:30:01" "mellow%2:30:03")
 :parent ont::evoke-relief
 :comment "verbs dealing specifically with the relief of emotional/mental pain or discomfort"
)

(define-type ONT::evoke-comfort
 :parent ONT::evoke-relief
 :wordnet-sense-keys ("comfort%2:37:01" "relax%2:29:00" "relax%2:29:01" "rest%2:32:01")
 :comment "verbs dealing specifically with the relief of physical pain or discomfort"
 )

(define-type ont::evoke-harmony
  :wordnet-sense-keys ("resonate%2:31:00")
  :parent ont::improve-experience
)

(define-type ONT::evoke-joy
    :wordnet-sense-keys ("gladden%2:37:01" "lighten%2:37:01" "enchant%2:37:00" "elate%2:37:00" "cheer%2:32:03" "thrill%2:37:02")
;"greet%2:39:00"
    :parent ONT::improve-experience
    )

(define-type ont::evoke-amusement
 :wordnet-sense-keys ("entertain%2:41:00" "amuse%2:32:00" "amuse%2:41:00")
 :parent ont::evoke-joy
 :comment "evoke joy via entertainment, amusement and diversion"
)

(define-type ont::evoke-satisfaction
 :parent ont::evoke-joy
 :wordnet-sense-keys ("content%2:34:00" "satisfy%2:37:00" "quench%2:34:00" "indulge%2:41:01" "indulge%2:34:00" "indulge%2:34:12" "indulge%2:41:00" "satisfaction%1:04:00")
 :comment "evoke joy via by providing satisfaction and pleasure"
)

;;; AFFECT-EXPERIENCER: WORSEN EXPERIENCE

(define-type ont::worsen-experience
 :parent ont::affect-experiencer
)

(define-type ONT::evoke-confusion
 :parent ONT::worsen-experience
 :wordnet-sense-keys ("confuse%2:37:00" "confuse%2:31:03" "flabbergast%2:31:00")
 )

(define-type ONT::evoke-fear
 :parent ONT::worsen-experience
 :wordnet-sense-keys ("frighten%2:37:00")
    :definitions ((ont::cause-effect :agent ?agent
				     :formal (ont::fearing :experiencer ?affected)))
 )

(define-type ONT::evoke-boredom
 :wordnet-sense-keys ("bore%2:37:00" "tire%2:37:01" "pall%2:30:00" "pall%2:29:00" "pall%2:30:03" "pall%2:30:02")
 :parent ONT::worsen-experience
 )

(define-type ONT::evoke-discomfort
 :wordnet-sense-keys ("seize%2:31:04")
 :parent ONT::worsen-experience
 :comment "to cause physical discomfort that are not related to irration/bother"
 )

(define-type ont::evoke-hunger
 :wordnet-sense-keys ("starve%2:34:00" "starve%2:34:03" "starvation%1:26:00" "starvation%1:04:00")
 :parent ont::evoke-discomfort
)

(define-type ONT::evoke-tiredness
 :wordnet-sense-keys ("exhaust%2:29:00" "tire%2:29:01")
 :parent ONT::evoke-discomfort
 )

(define-type ONT::evoke-hurt
 :parent ONT::worsen-experience
 :wordnet-sense-keys ("hurt%2:29:01" "hurt%2:39:00" "hurt%2:37:01")
 :comment "cause hurt or suffering"
 )

;(define-type ONT::evoke-pain
; :parent ONT::worsen-experience
; :wordnet-sense-keys ("hurt%2:37:01")
; :comment "cause pain"
; )

(define-type ONT::evoke-injury
 :wordnet-sense-keys ("injure%2:29:00" "maim%2:29:00" "blind%2:39:01")
 :comment "verbs that specifically deal with physical hurt"
 :parent ONT::evoke-hurt
 )

(define-type ONT::evoke-shame
 :wordnet-sense-keys ("shame%2:37:00" "shame%2:41:00" "humiliate%2:37:00" "embarrass%2:37:00")
 :parent ONT::evoke-hurt
 )

(define-type ont::evoke-bother
 :wordnet-sense-keys ("bother%2:38:00" "bother%2:41:01")
 :parent ont::worsen-experience
)

(define-type ONT::evoke-offense
 :parent ONT::evoke-bother
 :comment "verbs that specifically deal with mental/emotional hurt"
 :wordnet-sense-keys ("offend%2:37:00" "offend%2:37:02")
 )

(define-type ont::evoke-physical-irritation
 :parent ont::evoke-bother
 :wordnet-sense-keys ("irritate%2:29:00" "chafe%2:39:00" "rub%2:35:01" "itch%2:39:02")
)

(define-type ont::evoke-social-irritation
 :parent ont::evoke-bother
 :wordnet-sense-keys ("antagonize%2:37:00" "frustrate%2:37:00")
)

(define-type ONT::evoke-annoyance
 :wordnet-sense-keys ("bother%2:37:00" "dissatisfy%2:37:00" "irk%2:37:00" "displease%2:37:00")
 :parent ONT::evoke-bother
 :comment "evoke emotional/mental irritation"
 )

(define-type ONT::evoke-worry
 :wordnet-sense-keys ("worry%2:37:01" "haunt%2:37:00")
 :parent ONT::evoke-bother
 :comment "cause to be concerned or worried (involving primarily negative thoughts)"
 )

(define-type ont::evoke-upset
 :wordnet-sense-keys ("upset%2:37:01" "disturb%2:37:00" "circus%1:04:01" )
 :parent ont::evoke-bother
)

(define-type ont::evoke-distress
 :wordnet-sense-keys ("tense%2:29:00" "tense%2:29:01"  "jar%2:37:00" "unnerve%2:37:00")
 :parent ont::evoke-upset
 :comment "put a stressor on tranquility"
)

(define-type ONT::evoke-anger
 :wordnet-sense-keys ("anger%2:37:00" "madden%2:37:02" "try%2:37:00" "try%2:37:01")
 :parent ONT::evoke-upset
    :comment "cause to be angry"
    :definitions (ont::cause-effect :agent ?agent
			     :formal (ont::have-property :neutral ?affected
							 :formal (ont::angry :figure ?affected)))

 )

(define-type ONT::evoke-sadness
 :wordnet-sense-keys ("sadden%2:37:01" "discourage%2:37:00" "disappoint%2:37:00" "devastate%2:30:01" "grieve%2:37:01")
 :parent ONT::evoke-upset
 :comment "evoke disappointment, disheartening, sadness, or grief"
 )

(define-type ONT::evoke-disgust
 :wordnet-sense-keys ("disgust%2:39:00" "repel%2:37:00" "horrify%2:37:01" "nauseate%2:37:00")
 :parent ONT::evoke-upset
 )

(define-type ONT::evoke-ill-being
 :wordnet-sense-keys ("nauseate%2:39:00")
 :parent ONT::evoke-disgust
 :comment "includes physical feeling of nausea"
 )


;(define-type ont::evoke-cognitive-state
; :parent ont::affect-experiencer
;)

;; soothe, calm down, relax, settle down
;(define-type ONT::subduing
;    :parent ONT::evoke-emotion
; )

;(define-type ONT::evoke-physical
; :parent ONT::affect-experiencer
; )


;;  This is for "the truck needs repair"

(define-type ONT::NECESSITY
 :wordnet-sense-keys ("need%2:34:01" "demand%2:42:00" "necessitate%2:42:00" "require%2:34:00")
 :parent ONT::event-of-state
 :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::extended) (F::Cause -) (F::Trajectory -))
 ;;; basically any - restriction comes from somewhere else
 :arguments ((:REQUIRED ONT::Formal ((? o F::Phys-obj F::abstr-obj F::situation)))
	     (:optional ont::neutral) ;; the trucks needs repair??
	     
             )
 )

(define-type ONT::SUFFICIENCY
 :wordnet-sense-keys ("suffice%2:42:00")
 :parent ONT::event-of-state
 :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::extended) (F::Cause -) (F::Trajectory -))
 ;;; basically any - restriction comes from somewhere else
 :arguments ((:REQUIRED ONT::Formal ((? o F::Phys-obj F::abstr-obj F::situation)))
	     (:optional ont::neutral) 
	     
             )
 )

;; lack
(define-type ONT::lacking
 :wordnet-sense-keys ("lack%2:42:00" "miss%2:42:00" "lack%1:26:00" "deficiency%1:26:00" "want%1:26:01")
 :parent ONT::event-of-state
 :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::extended) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::neutral1 ((? th19 F::Phys-obj F::abstr-obj F::situation)))
	     (:required ont::neutral ((? af f::phys-obj f::abstr-obj)))
             )
 )

(define-type ONT::NEED-TO-HAVE
 :parent ONT::NECESSITY
 )

(define-type ONT::acknowledge
 :parent ONT::response
 )

;; 20120524 GUM change new type
(define-type ONT::be
 ;:wordnet-sense-keys ("be%2:42:02" "be%2:42:06" "be%2:42:07" "be%2:41:00" "be_full%2:34:00" "be_quiet%2:32:00" "mean%2:42:03" "rest%2:41:00" "equal%2:42:01")
; :parent ONT::in-relation
 :wordnet-sense-keys ("be%2:41:00" "be%2:42:02" "be%2:42:06" "be%2:42:07" "be_full%2:34:00" "be_quiet%2:32:00" "equal%2:42:01")
 :parent ONT::object-compare
 :comment "Object is defined in terms of another (including equality)"
 )

(define-type ONT::proposition-equal
; :wordnet-sense-keys ("be%2:42:06" "be%2:42:07" "be%2:41:00" "be%2:42:02" "be_full%2:34:00" "be_quiet%2:32:00" "mean%2:42:03" "rest%2:41:00")
 :arguments ((:REQUIRED ONT::neutral ((? th19 F::abstr-obj f::situation)  (f::type (? t ont::mental-construction ont::fact)))))
                                     ;;  (?th (f::type ont::mental-construction))))
 :parent ONT::be
 )

;; DIFFER - the set of things being compared is NEUTRAL, the value for the difference is EXTENT, and
;;   the property/scale that its on is FORMAL1

(define-type ont::differ
    :wordnet-sense-keys ("differ%2:42:00")
    :parent ont::object-compare
    :arguments ((:essential ont::neutral)
		(:essential ont::formal)
		;;12/02/08 MD relaxed the restriction on property to handle "voltage is a difference in states between the terminals"
		(:essential ont::extent (f::abstr-obj (f::measure-function f::term)))
		)
    :comment "object is not similar to another with respect to some property"
    )

;; 20120523 GUM change new type
(define-type ONT::accept-agree
 :wordnet-sense-keys ("grudge%2:37:00" "agree%2:32:00" "agree%2:32:04" "accept%2:32:00" "consent%2:32:00" "go_for%2:32:00" "affirm%2:32:01" "acceptance%1:04:00" )
 :parent ONT::response
 )

(define-type ONT::compromise
 :wordnet-sense-keys ("compromise%2:32:01" "compromise%2:32:00")
 :parent ONT::accept-agree
 )

(define-type ONT::contest
 :wordnet-sense-keys ("disagree%2:32:00" "differ%2:32:00" "dissent%2:32:01" "take_issue%2:32:00")
 :parent ONT::response
 )

(define-type ont::contest-deny-oppose-protest ;; 20120523 GUM change new type
    :wordnet-sense-keys ("opposition%1:04:01" "oppose%2:32:01" "oppose%2:32:00"  "oppose%2:33:01")
    :parent ont::contest
    )

(define-type ont::object ;; 20120524 GUM change new type
    :wordnet-sense-keys ("object%2:42:00"  "objection%1:10:00")
    :parent ont::contest
    )

(define-type ONT::reject
 :wordnet-sense-keys ("bounce%2:40:01" "decline%2:40:00" "dismiss%2:32:02" "pass_up%2:40:00" "refuse%2:40:00" "refuse%2:41:00" "reject%2:40:00" "turn_down%2:40:00" "deny%2:32:05" "deny%2:40:00" "refuse%2:32:00" "refuse%2:40:01" "refuse%2:42:04" "reject%2:31:00")
 :parent ONT::response
 )

(define-type ONT::judgement
 :parent ONT::agent-interaction
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments ((:optional ONT::affected)
 	     (:optional ONT::formal)
             )
 )

;; graduate
(define-type ONT::advancing-status
 :parent ONT::judgement
 :wordnet-sense-keys ("graduate%2:40:01" "promote%2:41:00")
 :arguments ((:OPTIONAL ONT::source ((? src f::phys-obj F::abstr-obj))))
 )

(define-type ont::grade-score
 :parent ont::judgement
)

(define-type ont::passing
 :wordnet-sense-keys ("pass%2:41:07")
 :parent ont::grade-score
)

(define-type ont::failing
 :wordnet-sense-keys ("fail%2:41:07")
 :parent ont::grade-score
)

(define-type ONT::approve-authorize
 :wordnet-sense-keys ("approve%2:31:00" "authorize%2:32:00" "authorize%2:41:00" "clear%2:40:07" "condone%2:32:00")
 :parent ONT::judgement
 :arguments ((:required ONT::AFFECTED ((? t f::abstr-obj f::situation)))
	     (:optional ont::norole))
 )

(define-type ONT::abuse
 :wordnet-sense-keys ("mistreat%2:41:00" "maltreat%2:41:00" "abuse%2:41:00" "ill-use%2:41:00" "step%2:41:00" "ill-treat%2:41:00")
 :parent ONT::judgement
 )

(define-type ONT::reward
 :wordnet-sense-keys ("honor%2:41:00" "honour%2:41:00" "reward%2:41:01")
 :parent ONT::judgement
 )

(define-type ONT::compensate
 :wordnet-sense-keys ("compensate%2:40:01")
 :parent ONT::judgement
 )

(define-type ONT::punish
 :wordnet-sense-keys ("punish%2:41:00" "penalize%2:41:00" "penalise%2:41:00" "revenge%1:04:00")
 :parent ONT::judgement
 :arguments ((:optional ONT::NEUTRAL))
 )

(define-type ONT::avenge ;ONT::revenge-punish
 :wordnet-sense-keys ("revenge%2:33:00")
 :parent ONT::judgement
 :arguments ((:required ONT::NEUTRAL))
 )

(define-type ONT::impress
; :wordnet-sense-keys ("affect%2:37:00" "impress%2:37:01" "move%2:37:00" "strike%2:37:00")
 :wordnet-sense-keys ("impress%2:37:00" "wow%2:37:00" )
 :parent ONT::judgement
; :arguments (
;	     (:required ONT::cause)
;             )
 )

(define-type ONT::blame
 :wordnet-sense-keys ("blame%2:32:00")
 :parent ONT::judgement
 )

(define-type ONT::forgive
 :wordnet-sense-keys ("forgive%2:32:00")
 :parent ONT::judgement
 )

(define-type ONT::PARDON
 :parent ONT::forgive
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments ((:required ONT::affected)
             )
 )

(define-type ONT::criticize
 :wordnet-sense-keys ("knock%2:32:02" "criticize%2:32:00" "criticise%2:32:00" "pick_apart%2:32:00")
 :parent ONT::loaded-claim
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ONT::reprimand
 :wordnet-sense-keys ("reprimand%2:32:00" "censure%2:32:00" "criminate%2:32:01")
 :parent ONT::criticize
 )

(define-type ONT::praise
 :wordnet-sense-keys ("praise%2:32:00" "applause%1:10:00")
 :parent ONT::loaded-claim
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments (
;	     (:OPTIONAL ONT::Predicate((? prd F::Phys-obj F::Abstr-obj F::situation))) ;; praise it as exceptional
              )
 )

; insincere praise
(define-type ONT::flatter
 :wordnet-sense-keys ("flatter%2:32:00")
 :parent ONT::praise
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments (
;	     (:OPTIONAL ONT::Predicate((? prd F::Phys-obj F::Abstr-obj F::situation))) 
              )
 )

(define-type ONT::complain
 :wordnet-sense-keys ("complain%2:32:00" "kick%2:32:00" "plain%2:32:00" "sound_off%2:32:00" "quetch%2:32:00" "kvetch%2:32:00")
 :parent ONT::loaded-claim
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ONT::insult
 :wordnet-sense-keys ("diss%2:32:00" "insult%2:32:00" "affront%2:32:00")
 :parent ONT::loaded-claim
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ONT::accuse
 :wordnet-sense-keys ("accuse%2:32:00" "impeach%2:32:00" "incriminate%2:32:00" "criminate%2:32:00")
 :parent ONT::loaded-claim
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ONT::convince
 :wordnet-sense-keys ("convert%2:32:00" "convince%2:32:00" "persuade%2:32:00" "win_over%2:32:00")
 :parent ONT::perlocution
 )

(define-type ONT::dissuade
 :wordnet-sense-keys ("dissuade%2:32:00")
 :parent ONT::perlocution
 )

(define-type ONT::defame
 :wordnet-sense-keys ("defame%2:32:00" "slander%2:32:00" "smirch%2:32:00" "asperse%2:32:00" "denigrate%2:32:01" "calumniate%2:32:00" "smear%2:32:00" "sully%2:32:00" "besmirch%2:32:00" "charge%1:10:00" "recrimination%1:10:00")
 :parent ONT::accuse
 )

(define-type ONT::indict
 :wordnet-sense-keys ("accuse%2:32:01" "charge%2:32:02" "prosecute%2:41:00")
 :parent ONT::accuse
 )


(define-type ONT::thank
 :wordnet-sense-keys ("thank%2:32:00" "give_thanks%2:32:04")
 :parent ONT::conventional-speech-act
 )

(define-type ONT::ANSWER
 :wordnet-sense-keys ("answer%2:32:00" "reply%2:32:00" "respond%2:32:00")
 :parent ONT::response
 )

(define-type ONT::APOLOGIZE
 :wordnet-sense-keys ("apologize%2:32:00" "apologise%2:32:00")
 :parent ONT::conventional-speech-act
 )

(define-type ONT::greet
 :wordnet-sense-keys ("greet%2:32:00" "recognize%2:32:01" "recognise%2:32:01" "greet%2:32:01" "greeting%1:10:00")
 :parent ONT::conventional-speech-act
 )

(define-type ONT::welcome
 :wordnet-sense-keys ("welcome%2:32:00" "receive%2:32:00")
 :parent ONT::conventional-speech-act
 )

(define-type ONT::congratulate
 :wordnet-sense-keys ("compliment%2:32:00" "congratulate%2:32:00")
 :parent ONT::conventional-speech-act
 )

;; honor, respect, prize, treasure, value
(define-type ONT::appreciate
 :wordnet-sense-keys ("appeal%2:37:00" "appreciate%2:37:00" "bask%2:37:13" "delight%2:34:00" "enjoy%2:37:00" "like%2:37:04" "like%2:37:05" "love%2:37:00" "relish%2:37:00" "savor%2:37:00" "savour%2:37:00")
 :parent ONT::experiencer-emotion
 :arguments ((:REQUIRED ONT::Formal ((? t f::phys-obj f::abstr-obj f::situation f::time)))
             (:ESSENTIAL ONT::neutral) ;((? s  f::phys-obj f::abstr-obj) (F::intentional +)))
	     (:optional ONT::neutral1)
             )
 )

(define-type ONT::Information-scrutiny
 :parent ONT::SCRUTINY
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments ((:REQUIRED ONT::affected (?th (F::information F::Information-content)))
             (:ESSENTIAL ONT::Agent ((? cg f::phys-obj f::abstr-obj) (F::intentional +)))
             )
 )

(define-type ONT::SOLVE
 :wordnet-sense-keys ("work%2:31:13" "lick%2:31:00" "puzzle_out%2:31:00" "figure_out%2:31:00" "work_out%2:31:04" "solve%2:31:00" "resolve%2:31:03" "solve%2:31:01")
 :parent ONT::INFORMATION-SCRUTINY
 )

;;; perform as expected, e.g., the truck/plan works
(define-type ONT::FUNCTION
 :wordnet-sense-keys ("do%2:41:03" "drive%2:42:00" "function%2:35:00" "idle%2:35:00")
 :parent ONT::event-of-state
 :arguments ((:REQUIRED ONT::neutral ((? t F::phys-obj F::abstr-obj )(f::intentional -)))
	     (:optional ONT::extent (f::abstr-obj (f::scale ont::rate-scale)))
             )
 )

(define-type ONT::SUMMARIZE
 :wordnet-sense-keys ("sum_up%2:32:00" "summarize%2:32:00" "summarise%2:32:00" "resume%2:32:00")
 :parent ONT::INFORMATION-SCRUTINY
 )

(define-type ONT::KNOW
 :wordnet-sense-keys ("know%2:31:02" "know%2:31:03" "know%2:31:01" "cognize%2:31:00" "cognise%2:31:00")
 :parent ONT::attitude-of-belief
 :comment "EXPERIENCER is certain that a situation holds"
 :sem (F::SITUATION (F::Aspect F::Indiv-Level) (F::Time-span F::Extended))
 )

;; cognizer understands some fact/material
(define-type ONT::UNDERSTAND
 :wordnet-sense-keys ("understand%2:31:00")
 :parent ONT::AWARENESS
 :sem (F::SITUATION (F::Aspect F::Indiv-Level) (F::Time-span F::Extended))
 )

;; cognizer knows whether situation holds
;; know
(define-type ONT::KNOWIF
 :parent ONT::KNOW
 )

;; cognizer acquires belief that s/he knew previously
(define-type ONT::Remember
 :wordnet-sense-keys ("remember%2:31:00" "retrieve%2:31:00" "recall%2:31:00" "call_back%2:31:00" "call_up%2:31:04" "recollect%2:31:00" "think%2:31:02" "commemorate%2:31:00" "remember%2:31:01" "remember%2:31:02")
 :parent ONT::acquire-belief
 :sem (F::SITUATION (F::Aspect F::bounded) (F::Time-span F::atomic))
 )

;; cognizer loses knowledge of situation
(define-type ONT::Forget
 :wordnet-sense-keys ("leave%2:31:02" "forget%2:31:02" "forget%2:31:03" "draw_a_blank%2:31:00" "blank_out%2:31:00" "block%2:31:00" "forget%2:31:00" "forget%2:31:01" "bury%2:31:00")
 :parent ONT::change-AWARENESS
 :sem (F::SITUATION (F::Aspect F::bounded) (F::Time-span F::atomic))
 :arguments ((:REQUIRED ONT::Formal)
             (:OPTIONAL ONT::Neutral ((? atp F::phys-obj F::abstr-obj F::situation)))
 ))

(define-type ONT::FAMILIAR
 :wordnet-sense-keys ("know%2:31:14" "know%2:31:00" "recognize%2:31:00" "recognise%2:31:00" "know%2:31:15" "know%2:31:04")
 :parent ont::awareness ;; 20120529 GUM change
 ;;:parent ONT::SALIENCE + args
 :arguments ((:REQUIRED ONT::Formal)
             (:OPTIONAL ONT::Neutral (F::phys-obj (F::origin f::human) (F::intentional +)))  ; how about "I know this dog/the city/the lines (of the play) very well"?
	     (:OPTIONAL ONT::neutral1)  ;; thing known
             ;;; Ground/ Loc-Perc
;             (:OPTIONAL ONT::Place)
;	     (:optional ONT::PREDICATE ((? agt F::Phys-obj f::abstr-obj f::situation)))
             )
 )

#|
(define-type ONT::NOT-FAMILIAR
 :parent ONT::SALIENCE
 :arguments (
;	     (:optional ONT::PREDICATE ((? agt F::Phys-obj f::abstr-obj f::situation)))
	     )
 )
|#

(define-type ONT::SUPPOSE
 :wordnet-sense-keys ("say%2:32:03" "suppose%2:32:00")
 :comment "EXPERIENCER posits a possible proposition"
 :parent ONT::attitude-of-belief
 :sem (F::SITUATION (F::Aspect F::Stage-level) (F::Time-span F::Extended))
 )

;; cognizer predicts a situation in the future
;; predict, forcast
(define-type ONT::PREDICT
 :wordnet-sense-keys ("promise%2:32:02" "anticipate%2:32:00" "forebode%2:32:00" "call%2:32:10" "prognosticate%2:32:00" "foretell%2:32:00" "predict%2:32:00" "prognosis%1:10:00" "forecast%1:10:00")
 :parent ONT::cogitation
 :arguments ((:essential ont::affected))
 )

(define-type ONT::TALK
 :wordnet-sense-keys ("posit%2:32:02" "put_forward%2:32:00" "state%2:32:01" "submit%2:32:00" "talk%2:32:01" "talk%1:10:00" )
 :parent ONT::conversing
 :comment "extended communicative interaction, FORMAL is the topic of discussion"
 :sem (F::Situation (F::Cause F::agentive) (F::Time-span F::extended))
 :arguments ((:ESSENTIAL ONT::formal ((? th20 F::Abstr-obj F::Situation f::phys-obj)))
             )
 )

(define-type ont::discuss
    :wordnet-sense-keys ("discuss%2:32:00")
    :parent ont::conversing
    :comment "extended communication on a specific topic (FORMAL)"
    )

(define-type ONT::schmooze-talk
    :parent ont::talk
    :wordnet-sense-keys ("chat%2:32:00") 
    :comment "informal extended conversing "
    )

(define-type ont::assert
    :wordnet-sense-keys ("assert%2:32:01" "statement%1:10:00")
    :comment "tell categorically"
    :parent ont::representative
    )

(define-type ONT::tell
    :parent ont::representative
    :wordnet-sense-keys ("state%2:32:00" "tell%2:32:00" "inform%2:32:00") 
    :comment "fairly generic representative act"
    )

(define-type ONT::EXPLAIN
 :wordnet-sense-keys ("explain%2:32:00" "explicate%2:32:00")
 :parent ONT::representative
 :comment "a representative speech act that explains some situation"
 )

(define-type ONT::describe
    :wordnet-sense-keys ("describe%2:32:00" "depict%2:32:01" "draw%2:32:00")
    :parent ont::representative
    :arguments ((:REQUIRED ONT::neutral))
    )

(define-type ONT::SAY
    :wordnet-sense-keys ("mention%2:32:00" "note%2:32:00" "observe%2:32:00" "remark%2:32:00" "say%2:32:01" "say%2:32:13" "talk%2:32:00" "remark%1:09:00")
    :parent ONT::COMMUNICATION
    :comment "A single act of verbal communication, or sequence of acts by the same agent"
    :sem (F::Situation (F::Cause F::agentive))
    :arguments ((:REQUIRED ONT::Formal)
		(:optional ont::neutral)  ;; for special case of THE CAT said/reported/mentioned to be green
		(:ESSENTIAL ONT::Agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
		(:optional ont::result)
		)
    )

(define-type ont::sing
    :parent ont::say
    :wordnet-sense-keys ("sing%2:36:00" "singing%1:04:00")
    )

(define-type ont::extended-say
    :parent ont::say
    :wordnet-sense-keys ("recount%2:32:00" "dictate%2:31:00" "narrate%2:32:00") 
    :comment "an extended series of communicative acts by an agent, following some script or structure"
    )


(define-type ont::scripted-say
    :parent ont::say
    :wordnet-sense-keys ("quote%2:32:00")
    :comment "an communicative acts controlled by an existing source"
    )


;; stream, channel information objects, e.g. stream the data
(define-type ONT::DIRECT-information
 :wordnet-sense-keys ("traffic%1:10:00")
 :parent ONT::EVENT-OF-ACTION
 :sem (F::Situation)
 :arguments ((:REQUIRED ONT::Formal (?s (F::information F::Information-content)))
;	     (:essential ont::instrument)
             )
 )

(define-type ONT::REPEAT
 :wordnet-sense-keys ("repeat%2:32:00" "reiterate%2:32:00" "ingeminate%2:32:00" "iterate%2:32:00" "restate%2:32:00" "retell%2:32:00")
 :parent ONT::say
 :comment "say again"
 :arguments ((:ESSENTIAL ONT::Formal)
             )
 )

(define-type ONT::manner-say
 :wordnet-sense-keys ("whisper%2:32:00" "blab%2:32:02" "scream%2:32:01" "scream%2:32:08" "scream%2:39:00" "shout%2:32:00" "shout%2:32:08")
 :parent ONT::say
 :comment "saying in a particular manner of speaking"
 :arguments ((:ESSENTIAL ONT::Formal)
             )
 )

(define-type ONT::nonverbal-say
    :parent ONT::say
    :wordnet-sense-keys ("signal%1:10:00" "email%2:32:00" "write%2:32:00" "write%2:32:08")
    :comment "saying using a medium other that speech"
    :arguments ((:ESSENTIAL ONT::Formal)
		)
    )


(define-type ONT::collaborate
 :parent ONT::agent-interaction
  :wordnet-sense-keys ("collaborate%2:41:00" "cooperation%1:04:01")
 :arguments ((:REQUIRED ONT::Formal)
             (:REQUIRED ONT::agent)
             )
 )

(define-type ONT::compete
 :parent ONT::agent-interaction
  :wordnet-sense-keys ("compete%2:33:00")
 )

(define-type ONT::win-compete
 :parent ONT::compete
  :wordnet-sense-keys ("win%2:33:00" "triumph%1:11:00")
  )

(define-type ONT::tie-compete
 :parent ONT::compete
  :wordnet-sense-keys ("tie%2:33:00" "tie%1:11:00")
  )

(define-type ONT::score-compete
 :parent ONT::compete
  :wordnet-sense-keys ("score%1:04:00")
 )

(define-type ONT::lose-compete
 :parent ONT::compete
  :wordnet-sense-keys ("lose%2:33:00")
 )

(define-type ONT::BELIEVE
  :wordnet-sense-keys ("think%2:31:01" "believe%2:31:04" "consider%2:31:08" "conceive%2:31:00" "think%2:31:03" "opine%2:31:02" "suppose%2:31:00" "imagine%2:31:01" "reckon%2:31:02" "guess%2:31:00" "strike%2:37:00" )
 :parent ONT::attitude-of-belief
 :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::Extended))
 :arguments ((:optional ont::neutral1)
	     (:REQUIRED ONT::formal ((? formal f::situation f::abstr-obj)))
             )
 )

(define-type ONT::BELIEF-ascription
  :wordnet-sense-keys ("view%2:31:00")
  :comment " a subclass of believe for verbs that take constructions such as 'I deem him as unsuitable'. They do not take that complements like ONT::BELIEVE verbs do"
  :parent ONT::believe)

(define-type ONT::HYPOTHESIZE
  :wordnet-sense-keys ("hypothesize%2:31:00::")
 :parent ONT::attitude-of-belief
 :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::Extended))
 :arguments ((:optional ont::neutral1)
	     (:REQUIRED ONT::formal ((? formal f::situation f::abstr-obj)))
             )
 )

;;  trust, believe - a person or entity
(define-type ONT::believe-source
    :parent ONT::awareness
    :comment "EXPERIENCER trusts or relys on some source/person/authority"
    :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::Extended))
    :arguments ((:required ont::neutral1 ((? cg2 f::abstr-obj F::Phys-obj) (F::intentional +)))
		)
    )

;;  trust, believe - a person or entity
(define-type ONT::TRUST
  :wordnet-sense-keys ("accept%2:31:00")
  :comment "e.g., trust, believe - generally 'in' something"
  :parent ONT::believe-source
  :sem (F::SITUATION (F::Aspect F::static) (F::Time-span F::Extended))
  :arguments ((:required ont::neutral1 ((? cg2 f::abstr-obj F::Phys-obj) (F::intentional +)))
	      )
  )


;; cognizer assumes situation holds
;; assume, presume
(define-type ONT::Assume
 :wordnet-sense-keys ("assume%2:31:00" "presume%2:31:00" "take_for_granted%2:31:00")
 :parent ONT::expectation
 :sem (F::SITUATION (F::Aspect F::Stage-Level) (F::Time-span F::Extended))
 )

(define-type ONT::Confirm
 :wordnet-sense-keys ("confirm%2:32:00")
 :parent ONT::assert
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ONT::SUGGEST
 :wordnet-sense-keys ("advise%2:32:02" "proposal%1:10:00" "propose%2:32:00" "suggest%2:32:00")
 :parent ONT::directive
 )

(define-type ONT::ADVISE
 :wordnet-sense-keys ("advise%2:32:00")
 :parent ONT::SUGGEST
 )

(define-type ont::nominate
    :wordnet-sense-keys ("nominate%2:41:02")
    :parent ONT::conventional-speech-act
    )

(define-type ONT::naming
 :wordnet-sense-keys ("designate%2:32:00" "denominate%2:32:00")
 :parent ONT::conventional-speech-act
 )

(define-type ONT::declare-performative
 :wordnet-sense-keys ("pronounce%2:32:00" "proclaim%2:32:02")
 :parent ONT::conventional-speech-act
 )

(define-type ONT::ritual-classification
 :wordnet-sense-keys ("anoint%2:31:00" "install%2:41:00")
 :parent ONT::conventional-speech-act
 )


(define-type ont::incur-inherit-receive
    :wordnet-sense-keys ("fall%2:40:12" "get%2:39:14" "inherit%2:40:02" "take%2:31:09")
    :arguments ((:REQUIRED ONT::affected1 ((? tt f::phys-obj f::abstr-obj) (f::intentional -))))
    :parent ont::event-of-undergoing-action
    )

(define-type ont::receive-punishment
    :wordnet-sense-keys ("catch_it%2:41:00" "get_it%2:41:00")
    :arguments ((:REQUIRED ONT::affected ((? obj F::PHYS-OBJ F::ABSTR-OBJ)))
                (:OPTIONAL ONT::source))
    :parent ont::incur-inherit-receive
    )


#|
;; 20120524 GUM change new type
(define-type ONT::take-on
 :parent ONT::accept
 )
|#

(define-type ONT::PRESCRIBING
 :wordnet-sense-keys ("prescribe%2:32:00")
 :parent ONT::giving
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments ((:REQUIRED ONT::agent  ((? ag f::phys-obj f::abstr-obj) (f::intentional +)))
	     ;;(:REQUIRED ont::result (f::phys-obj (f::intentional +)))
	     ;; a medication, a regime ...
	     (:essential ont::formal ((? tt f::phys-obj f::abstr-obj) (f::intentional -)))
             )
 )

(define-type ONT::NEGOTIATE
 :wordnet-sense-keys ("negociate%2:32:00" "negotiate%2:32:00" "talk_terms%2:32:00")
 :parent ONT::discuss
 :comment "extended communication with goal of reaching some agreement (RESULT)"
 :arguments ((:optional ONT::result ((? ag f::phys-obj f::abstr-obj)))) ; (f::intentional +))))
 )

(define-type ONT::ARGUE
    :wordnet-sense-keys ("argue%2:32:00" )
    :parent ONT::discuss
    :comment "extended communication with opposing views on a topic"
    )

; for non-agent-interaction senses of reveal, show, ...
(define-type ONT::reveal
 :wordnet-sense-keys ("reveal%2:39:00" "reveal%2:32:00" "cause_to_be_perceived%2:39:00")
 :parent ONT::event-of-causation
 :arguments ((:REQUIRED ONT::affected ((? obj F::PHYS-OBJ F::ABSTR-OBJ)))
	     (:OPTIONAL ONT::agent((? oc F::Phys-obj F::Abstr-obj F::Situation) (f::intentional -))) ; the conversation/test revealed the problem
	      )
 )

(define-type ONT::show
 :wordnet-sense-keys ("demo%2:39:00" "demonstrate%2:39:01" "exhibit%2:39:00" "express%2:32:00" "present%2:39:00" "prove%2:31:00" "show%2:39:00" "show%2:39:02")
 :parent ont::COMMUNICATION
 :arguments ((:ESSENTIAL ONT::Agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +))))
 )

(define-type ont::expose
 :wordnet-sense-keys ("uncover%2:35:00")
 :parent ont::show
)

(define-type ONT::teach-train
    :wordnet-sense-keys ("lesson%1:04:01" "teach%2:32:00" "teach%2:30:00" "train%2:31:00" "train%2:41:02" "train%2:41:00" "train%2:41:01""train%2:32:00" "sensitize%2:39:00")
    :parent ONT::SHOW
    )

(define-type ONT::establish-communication
 :wordnet-sense-keys ("ring%2:32:00" "phone%2:32:00" "call_up%2:32:00" "telephone%2:32:00" "call%2:32:01" "reach%2:32:00" "get_through%2:32:00" "get_hold_of%2:32:00" "contact%2:32:00")
 :parent ONT::COMMUNICATION
 )

(define-type ONT::HIDE
 :wordnet-sense-keys ("hide%2:39:00" "conceal%2:39:01" "conceal%2:39:00" "hide%2:39:01")
 :parent ONT::PUT
 )

(define-type ONT::place-in-position
 :comment "placing an object in a certain position: e.g., lean, sit, stand,  ..."
 :wordnet-sense-keys ("lean%2:35:00" "set_down%2:35:00" "seat%2:35:00" "stand%2:35:01" "perch%2:35:10" "park%2:35:00" "center%2:38:00")
 :parent ONT::PUT
 )

(define-type ONT::Correlation
 :wordnet-sense-keys ("affirm%2:31:00" "argue%2:32:01" "indicate%2:32:02" "mean%2:42:03" "read%2:32:02" "underlie%2:42:00")
 :parent ONT::event-of-state
 :sem (F::situation (F::aspect F::static) (F::trajectory -))
 :arguments ((:ESSENTIAL ONT::neutral ((? n  F::Phys-obj f::abstr-obj) (F::intentional -)))
	     (:OPTIONAL ONT::neutral1 ((? n1 F::Phys-obj f::abstr-obj)))
             (:OPTIONAL ONT::formal (F::situation))
	     ))

(define-type ONT::IMPLY
 :wordnet-sense-keys ("imply%2:32:01" "entail%2:42:01")
 :parent ONT::correlation
 :comment "an entailment relation holds netween NEUTRAL and NEUTRAL1"
 )


;;  something that encodes a message
(define-type ONT::encodes-message
    :comment "some artifact conveys some message"
    :wordnet-sense-keys ("go%2:42:02" "intend%2:32:02" "read%2:42:00" "represent%2:36:01")
    :arguments ((:REQUIRED ONT::neutral ((? n  F::Phys-obj f::abstr-obj) (f::information f::information-content)))
		(:OPTIONAL ONT::neutral1 ((? n1 F::Phys-obj f::abstr-obj))))
    :parent ONT::EVENT-OF-STATE
    )

(define-type ONT::RELATE
 :wordnet-sense-keys ("associate%2:31:00" "tie_in%2:31:00" "relate%2:31:00" "link%2:31:00" "colligate%2:31:02" "link_up%2:31:00" "connect%2:31:00" "correlate%2:42:00" "bear_on%2:42:00")
 :parent ONT::EVENT-OF-STATE
; :sem (F::Situation (F::Aspect F::Dynamic) (F::Cause F::Agentive))
 :sem (F::situation (F::aspect F::static) (F::trajectory -))
 :arguments ((:REQUIRED ONT::neutral ((? n  F::situation F::Phys-obj f::abstr-obj)))
	     (:REQUIRED ONT::neutral1 ((? n1 F::situation F::Phys-obj f::abstr-obj)))
	     (:REQUIRED ONT::neutral2 ((? n2 F::situation F::Phys-obj f::abstr-obj)))
             (:REQUIRED ONT::formal (F::situation))
	     ;; Cognizer, for cases like "the reading tells me that the bulb is damaged"
	     (:OPTIONAL ONT::affected (F::phys-obj (F::intentional +)))
             )
 )

(define-type ONT::REFUTE
 :wordnet-sense-keys ("refute%2:32:00::" "contradict%2:31:00::")
 :parent ONT::event-of-state
 :sem (F::situation (F::aspect F::static) (F::trajectory -))
 :arguments ((:REQUIRED ONT::neutral ((? n  F::Phys-obj f::abstr-obj)))
	     (:REQUIRED ONT::neutral1 ((? n1 F::Phys-obj f::abstr-obj)))
             (:REQUIRED ONT::formal (F::situation))
	     ;; Cognizer, for cases like "the reading tells me that the bulb is damaged"
	     (:OPTIONAL ONT::affected (F::phys-obj (F::intentional +)))
             )
 )

;; cognizer performs some mental calculation
(define-type ONT::calculation
    :wordnet-sense-keys ("account%2:40:00" "get%2:31:03" "total%2:42:00")
    :parent ONT::becoming-aware-of-value
    )

(define-type ONT::calc-add
 :parent ONT::calculation
 :wordnet-sense-keys ("add%2:31:00")
 :arguments ((:REQUIRED ONT::Formal (F::ABSTR-OBJ (F::TYPE ONT::MATHEMATICAL-TERM)))
	     (:OPTIONAL ONT::formal1  (F::ABSTR-OBJ (F::TYPE ONT::MATHEMATICAL-TERM)))
	     
	     ))

(define-type ONT::calc-subtract
    :wordnet-sense-keys ("subtract%2:31:00")
    :parent ONT::calculation
    :arguments ((:OPTIONAL ONT::formal1)
             )
 )

(define-type ONT::calc-multiply
 :parent ONT::calculation
  :wordnet-sense-keys ("multiply%2:31:00")
 :arguments ((:OPTIONAL ONT::formal1)
             )
 )

(define-type ONT::calc-divide
 :wordnet-sense-keys ("go%2:42:13" "divide%2:31:00")
 :parent ONT::calculation
 :arguments ((:OPTIONAL ONT::formal1)
             )
 )

(define-type ONT::Select
    :wordnet-sense-keys ("choose%2:31:00" "choose%2:31:02" "determine%2:31:01" "opt%2:31:00" "pick_out%2:31:00" "prefer%2:31:00" "select%2:31:00" "selection%1:04:00" "take%2:31:01" "take%2:40:02" "vote%2:41:09")
    :parent ONT::CHOOSING
    :arguments ((:REQUIRED ONT::AGENT ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
		(:ESSENTIAL ONT::neutral ((? tt F::phys-obj F::abstr-obj f::situation f::time))))
 )

;; for clicking (with a mouse)
;; a specialized form of ont::select where formal must be a physical representation
(define-type ONT::click
 :wordnet-sense-keys ("click%2:38:00" "click%1:04:00")
 :parent ONT::apply-force
 :arguments ((:ESSENTIAL ONT::affected (F::phys-obj))) ;(f::object-function f::gui-object))))
 )

(define-type ONT::retain
 :wordnet-sense-keys ("keep%2:35:10" "stay_fresh%2:42:00" "keep%2:42:03" "keep%2:40:00" "hold_on%2:40:00" "cling%2:37:00" "lay_aside%2:40:00")
  :parent ONT::PERSISTENT-STATE ;located-move-state
  :arguments ((:REQUIRED ONT::affected ((? obj F::PHYS-OBJ F::ABSTR-OBJ)))
;	      (:OPTIONAL ONT::cause)
	      (:OPTIONAL ONT::agent (F::phys-obj (F::intentional +)) (:implements cause))
	      )
 )

(define-type ont::protecting
 :wordnet-sense-keys ("preserve%2:42:01" "keep%2:42:02" "defend%2:33:00" "protection%1:21:00")
  :parent ont::event-of-causation
  :arguments ((:REQUIRED ONT::affected((? obj F::PHYS-OBJ F::ABSTR-OBJ)))
	      (:OPTIONAL ONT::agent (F::phys-obj (F::intentional +)) (:implements cause))
	      )
 )

(define-type ONT::dig-scoop
 :wordnet-sense-keys ("dig%2:35:01" "dig_out%2:35:00" "scoop%2:35:01"
				    "ladle%2:35:00" "ladle%2:35:01" "spoon%2:35:00" "hoe%2:36:00")
 :comment "To move something incrementally, typically using a tool"
 ;:parent ONT::cause-to-move
 :parent ONT::cause-move
 )

(define-type ONT::propel
 :wordnet-sense-keys ("throw%1:04:00" "propel%2:35:00" "throw%2:35:02")
 :comment "causing to move by a push and release activity"
 ;:parent ONT::cause-to-move
 :parent ONT::cause-move
 )

(define-type ONT::SOW-SEED
 :wordnet-sense-keys ("seed%2:35:01" "sow%2:35:02" "plant%2:35:00")
 :parent ONT::PROPEL
 )

(define-type ONT::Cause-Action
    :parent ONT::Acting
    
    :sem (F::Situation (F::Cause F::Agentive))
    :arguments ((:REQUIRED ONT::Effect (F::Situation (F::Cause F::Agentive) (F::Aspect F::Dynamic)))
						)
				    )


(define-type ONT::ensure
 :wordnet-sense-keys ("guarantee%2:32:03" "ensure%2:32:00" "insure%2:32:04" "assure%2:32:03" "secure%2:32:00")
 :parent ONT::cause-effect
 :arguments ((:optional ONT::Affected ((? o1 F::Situation F::Phys-obj f::abstr-obj)))
             )
 )

#|
(define-type ONT::cause-make
 :wordnet-sense-keys ("induce%2:32:00" "stimulate%2:32:01" "cause%2:32:00" "have%2:32:00" "get%2:32:00" "make%2:32:00")
 :parent ONT::CAUSE-effect
 :arguments ((:ESSENTIAL ONT::Effect (f::situation))
	     (:ESSENTIAL ONT::Result)
;             (:OPTIONAL ONT::Property ((? prop F::abstr-obj)))
             )
 )
|#

(define-type ONT::Command
 :wordnet-sense-keys ("command%2:32:00" "require%2:32:00" "arraign%2:41:00")
 :parent ONT::request
 )

(define-type ont::appeal-apply-demand 
     :wordnet-sense-keys ("call%2:38:00" "turn_to%2:30:00" "woo%2:41:01")
     :parent ont::request
    )

(define-type ont::ask
    :wordnet-sense-keys ("ask%2:32:01" "ask%2:32:05" "ask%2:32:09")
    :parent ont::request
    )

(define-type ont::remind 
    :wordnet-sense-keys ("remind%2:31:00")
    :parent ont::request
    )

(define-type ONT::encourage
 :wordnet-sense-keys ("egg_on%2:35:00")
 :parent ONT::cause-effect
 :arguments ((:optional ONT::Affected ((? o1 F::Situation F::Phys-obj f::abstr-obj)))
             )
 )

;;; I dared to go, I dared John to go.
(define-type ONT::provoke
 :wordnet-sense-keys ("force%2:36:00" "coerce%2:41:00" "subject%2:39:03" "oblige%2:41:00" "arouse%2:37:00" "provoke%2:32:00")
 :parent ONT::cause-effect
 :arguments ((:ESSENTIAL ONT::affected ((? exp F::phys-obj f::abstr-obj) (f::intentional +))))
 )

;(define-type ONT::cause-stimulate
; :parent ONT::cause-effect
; :arguments ((:REQUIRED ONT::Affected)
;             )
; )

(define-type ONT::cause-stimulate
 :wordnet-sense-keys ("fuel%2:37:00")
 :parent ONT::cause-effect
 :arguments ((:ESSENTIAL ONT::affected ((? exp F::phys-obj f::abstr-obj f::situation) (f::intentional -)))
	     ))

(define-type ONT::CATALYZE
 :wordnet-sense-keys ("catalyze%2:30:00" "catalyse%2:30:00" "catalysis%1:22:00")
 :parent ONT::cause-stimulate
)

(define-type ONT::HELP
    :wordnet-sense-keys ("help%2:41:00" "assist%2:41:02" "aid%2:41:00" "help%1:04:00")
 :parent ONT::CAUSE-EFFECT
 :arguments ((:optional ONT::Affected ((? o1 F::Situation F::Phys-obj f::abstr-obj))))
 )

(define-type ONT::BACKUP-SUPPORT
 :wordnet-sense-keys ("back_up%2:41:00" "support%2:41:01")
 :parent ONT::HELP
 :arguments ((:required ONT::Affected (F::Phys-obj (F::intentional +))))
 )

;; rescue the dog
(define-type ONT::rescue
 :wordnet-sense-keys ("rescue%2:41:00" "bring_through%2:41:00" "deliver%2:41:03")
 :parent ONT::HELP
 :sem (F::Situation (F::cause F::agentive) (F::aspect F::dynamic))
 :arguments ((:REQUIRED ONT::affected ((? ftt f::situation f::abstr-obj f::phys-obj)))
              )
 )

;; this needs to be able to have stative ont::effect, as in 'let him know'
;; also need to have phys & abstr objects as in "are pets allowed"
(define-type ONT::Allow
 :wordnet-sense-keys ("allow%2:41:00" )
  :parent ONT::CAUSE-EFFECT
 ;; approval for the purchase (sit); budget (abstr); that machine (phys-obj)
  :arguments ((:Required ONT::affected ((? aff F::phys-obj f::abstr-obj f::situation)))
             )
 )

(define-type ONT::Accommodate
 :wordnet-sense-keys ("adapt%2:30:01" "accommodate%2:30:00")
  :parent ont::event-of-causation
  :arguments ((:ESSENTIAL ONT::formal ((? ro F::Phys-obj F::Situation F::abstr-obj)))
	      (:required ont::affected ((? th22 f::phys-obj f::abstr-obj)))
	      (:optional ONT::AGENT ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             )
 )


;; 20120524 GUM change new type
(define-type ont::accommodate-allow
    :wordnet-sense-keys ("afford%2:42:00" "admit%2:42:06")
    :parent ont::position
    )


;; 20120524 GUM change new type
(define-type ont::adapt
    :wordnet-sense-keys ("adaptation%1:22:00")
    :parent ont::accommodate
    )



(define-type ONT::Cancel
 :parent ONT::CAUSE-ACTION
 :arguments ((:OPTIONAL ONT::Formal ((? obj F::PHYS-OBJ F::ABSTR-OBJ) (f::intentional -)))
	     (:OPTIONAL ONT::NEUTRAL ((? obj F::PHYS-OBJ F::ABSTR-OBJ F::situation) (f::intentional -))))
 :wordnet-sense-keys ("call_off%2:41:00" "cancel%2:41:00" "cancel%2:41:03" "void%2:30:00" "void%2:41:00")
 )

(define-type ONT::renege
 :parent ONT::CANCEL
 :wordnet-sense-keys ("renege%2:32:00" "retreat%2:32:00")
 )

(define-type ont::enable
  :parent ont::cause-effect
  :wordnet-sense-keys ("enable%2:30:00")
  :arguments ((:optional ont::affected ((? tp f::phys-obj f::abstr-obj f::situation))) ; f::situation: e.g. condition
	      )
  )

;; 20121027 GUM change new type
(define-type ONT::prepare
  :wordnet-sense-keys ("arm%2:33:00" "sensitize%2:30:01")
  :parent ONT::enable
  )



(define-type ont::facilitate
 :parent ont::enable
 :wordnet-sense-keys ("ease%2:30:00" "smooth%2:40:00")
 )

(define-type ont::maintain-keep
    :parent ont::cause-effect
    :definitions ((ONT::CAUSE-EFFECT :agent ?agent
				     :formal (ONT::ACTIVITY-ONGOING :formal ?formal)))
    :comment "causing some activity to continue"
    :wordnet-sense-keys ("maintain%2:42:00" )
    )

(define-type ont::disable
  :wordnet-sense-keys ("demilitarise%2:33:02")
  :parent ont::inhibit-effect
  :arguments ((:optional ont::affected ((? tp f::phys-obj f::abstr-obj)))
	      )
  )

(define-type ONT::USE
 :wordnet-sense-keys ("use%1:04:01" "habit%1:04:02" "use_of_goods_and_services%1:22:00" "use%1:22:00" "usance%1:22:00" "economic_consumption%1:22:00" "consumption%1:22:00" "use%1:07:02" "use%1:04:00" "practical_application%1:04:00" "application%1:04:02" "use%2:41:04" "practice%2:41:01" "expend%2:34:00" "use%2:34:00" "habituate%2:34:00" "use%2:34:02" "use%2:34:01" "utilize%2:34:00" "utilise%2:34:00" "apply%2:34:00" "employ%2:34:00")
 ;:parent ONT::CAUSE-effect
 :parent ONT::ACTING
 :sem (F::SITUATION (F::Cause F::agentive))
 ;;; an object used in action
 :arguments (;(:REQUIRED ONT::formal ((? oc F::Phys-obj F::Abstr-obj F::Situation)))
             ;;; use a book as a hammer; use force as a catalyst
             (:OPTIONAL ONT::Formal1 ((? oc1 F::Phys-obj F::Abstr-obj F::Situation)))  ; change this too?
             ;;; use a book to do something
;             (:OPTIONAL ONT::Purpose (F::Situation))
             (:OPTIONAL ONT::REASON (F::Situation))
	     ;; _the car_ uses petrol to run; _the battery_ uses a chemical reaction to maintain voltage
	     (:optional ONT::Affected ((? obj f::abstr-obj f::phys-obj)))
	     (:optional ONT::Affected1 ((? obj2 f::abstr-obj f::phys-obj)))
	     (:optional ont::result ((? res1 F::SITUATION F::ABSTR-OBJ))) ; copied from CAUSE-EFFECT
	     (:optional ont::formal ((? res2 F::SITUATION F::ABSTR-OBJ)
				     (F::type (? ftype ONT::SITUATION-ROOT ONT::PROPERTY-VAL));; ONT::POSITION-RELN)) ;; here for now while we decide the FORMAL/RESULT issue
				     ))   ; copied from CAUSE-EFFECT
             )
 )

(define-type ONT::MAKE-IT-SO
 :wordnet-sense-keys ("have%2:30:00" "have%2:32:00" "have%2:40:02")
 :parent ONT::CAUSE-EFFECT
 :sem (F::situation (F::Aspect F::Dynamic))
 :definitions ((CAUSE-EFFECT :agent ?agent :formal ?formal))
 :arguments ((:REQUIRED ONT::AGENT ((? ag F::PHYS-OBJ F::ABSTR-OBJ) (f::intentional +) )) ; exclude "the structure has blocks painted red"
	     (:REQUIRED ONT::AFFECTED ((? AFF F::PHYS-OBJ F::ABSTR-OBJ)))
	     (:REQUIRED ONT::formal (f::situation (f::type ont::event-of-action)))
             ;(:ESSENTIAL ONT::Stative ((? stts F::situation)))
             )
 )

(define-type ONT::UNDO
 :wordnet-sense-keys ("undo%2:35:00")
 :parent ONT::CAUSE-ACTION
 )

(define-type ONT::EXECUTE
  :wordnet-sense-keys ("fulfil%2:36:00" "fulfill%2:36:00" "action%2:36:00" "carry_out%2:36:00" "execute%2:36:00" "accomplish%2:36:00" "carry_through%2:36:00" "perform%2:36:00" "execute%2:36:01" "do%2:36:01" "do%2:41:01" "conduct%2:41:00" "commit%2:41:00" "commit%2:41:01")
 ;:parent ONT::cause-effect
  :parent ONT::ACTING
  :sem (F::Situation (F::Aspect F::Dynamic))
 :arguments ( ;; run the script/program
	     (:essential ont::agent (F::PHYS-OBJ (f::intentional +) (F::origin F::human)))
	     (:optional ont::neutral ((? thm f::abstr-obj f::situation) (f::type (? tt ONT::PROCEDURE)))) ;; ONT::EVENT-OF-ACTION ))))
	     (:optional ont::result ((? res1 F::SITUATION F::ABSTR-OBJ))) ; copied from CAUSE-EFFECT
	     (:optional ont::formal ((? res2 F::SITUATION F::ABSTR-OBJ)
				     (F::type (? ftype ONT::SITUATION-ROOT ONT::PROPERTY-VAL));; ONT::POSITION-RELN)) ;; here for now while we decide the FORMAL/RESULT issue
				     ))   ; copied from CAUSE-EFFECT
	     
	     )
 )

;; play (for asma)
(define-type ont::play
    :wordnet-sense-keys ("play%2:33:00" "play%2:41:03" "play%2:41:00")
    ;:parent ont::execute
    :parent ont::intentionally-act
    )

;; take a shower (for asma)
(define-type ont::take-execute
    :wordnet-sense-keys ("take%2:41:04")
    :parent ont::execute
    :arguments ((:ESSENTIAL ONT::Formal ((? t F::situation)))
		))

;; work (on) -- do work (see also related concept ont::function)
(define-type ONT::WORKING
 :wordnet-sense-keys ("work%2:41:05" "work%2:41:02" "toil%2:41:00" "practice%1:04:03")
  :parent ONT::intentionally-act
  :sem (F::Situation (F::Aspect F::unbounded) (F::time-span F::extended) )
  :arguments ((:ESSENTIAL ONT::Formal ((? t F::phys-obj F::abstr-obj F::situation)))
             (:ESSENTIAL ONT::Agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
	      (:ESSENTIAL ONT::NEUTRAL ((? t F::phys-obj F::abstr-obj F::situation)))
             )
 )

(define-type ont::practicing
  :wordnet-sense-keys ("do%2:41:02")
  :parent ont::working
  :arguments ((:optional ONT::source ((? sc F::phys-obj F::abstr-obj)))
             )
  )

(define-type ONT::afford
 :wordnet-sense-keys ("afford%2:34:00")
 :parent ONT::expensiveness
  :arguments ((:optional ONT::neutral1 ((? sc F::phys-obj F::abstr-obj)))
	      )
  )

(define-type ONT::COSTS
 :wordnet-sense-keys ("cost%2:42:00" "be%2:42:09")
 :parent ONT::EXPENSIVENESS
 :sem (F::SITUATION (F::Aspect F::Indiv-level))
 :arguments (
;	     (:REQUIRED ONT::Cost (F::Abstr-obj))
	     (:REQUIRED ONT::EXTENT (F::Abstr-obj))
	     (:OPTIONAL ONT::beneficiary (f::phys-obj))
		)
 )

(define-type ONT::save-COST
    :wordnet-sense-keys ("save%2:40:02")
 :parent ONT::EXPENSIVENESS
 :sem (F::SITUATION (F::Aspect F::Indiv-level))
 :arguments (
;	     (:REQUIRED ONT::Cost (F::Abstr-obj))
	     (:REQUIRED ONT::EXTENT (F::Abstr-obj))
	     (:OPTIONAL ONT::beneficiary (f::phys-obj))
		)
 )

(define-type ONT::Fill-container
 :wordnet-sense-keys ("fill%2:30:01" "fill_up%2:30:00" "make_full%2:30:00" "charge%2:35:00")
 :parent ONT::event-of-causation
 :arguments ((:ESSENTIAL ONT::affected-result (F::phys-obj (F::Container +)))
             )
 ) 

;;; The actions of someone else picking up or gathering objects
;; collect, gather up
(define-type ONT::collect
    :wordnet-sense-keys ("gather%2:35:00" "garner%2:35:00" "collect%2:35:00" "pull_together%2:35:00" "assemble%2:41:03"
					  "gather%2:35:04")
; :parent ont::event-of-causation
 :parent ont::acquire
 :arguments ((:ESSENTIAL ONT::agent)
	     ;;(:essential ont::formal)
             )
 )

;; pick up
;(define-type ONT::pickup
; :parent ont::motion
; :arguments ((:ESSENTIAL ONT::agent)
;	     (:essential ont::affected)
;             )
; )

;; herd
(define-type ONT::herd
 :wordnet-sense-keys ("herd%2:38:00" "herd%2:38:01" "herd%2:42:00")
 ;:parent ont::cause-to-move
 :parent ONT::cause-move
 :arguments ((:ESSENTIAL ONT::agent)
	     (:essential ont::affected  (F::phys-obj (f::mobility f::movable) (f::intentional +)))
             )
 )

(define-type ONT::sampling
    :parent ont::choosing
    )


;; abandon, desert, leave behnid
(define-type ONT::leave-behind
 :wordnet-sense-keys ("leave%2:31:05" "leave%2:30:03" "leave_behind%2:38:00"  "abandon%2:40:00")
 :parent ONT::intentionally-act
 :arguments ((:REQUIRED ONT::AGENT ((? ag f::abstr-obj F::Phys-obj) (F::intentional +)))
	     (:REQUIRED ONT::affected (F::phys-obj (F::mobility f::movable)))
             )
 )

;; There are a couple important distinctions used to organize the ONT::come-from
;; subtree, which are encoded in the type names:
;; - A "cause-" prefix indicates that an agent is required.
;; - An "-off" suffix indicates that the formal is coming from the surface of
;; the source, while an "-out-of" suffix indicates that it's coming from the
;; interior (these can be abstract). "-from" can be either.

(define-type ONT::come-from
 :wordnet-sense-keys ("issue%2:30:00" "emerge%2:30:02" "come_out%2:30:04" "come_forth%2:30:00" "go_forth%2:30:00" "egress%2:30:00")
 :parent ONT::event-of-undergoing-action
 :sem (F::Situation (F::cause F::force) (F::trajectory +) (F::aspect F::bounded))
 :arguments ((:OPTIONAL ONT::affected)
 	     (:OPTIONAL ONT::source)
             )
 )

(define-type ONT::cause-come-from
 :wordnet-sense-keys ("remove%2:30:00" "take%2:30:00" "take_away%2:30:01" "withdraw%2:30:01" "remove%2:30:02" "remove%2:41:00" "suction%2:38:00" "percolate%2:38:00" "removal%1:04:00")
 :parent ONT::event-of-causation
 :arguments ((:REQUIRED ONT::Agent)
	     (:required ont::source)
	     (:optional ont::affected-result ((? thm F::phys-obj F::abstr-obj)))
	     (:OPTIONAL ONT::affected (?aff (F::mobility F::movable)))
             )
 )

(define-type ONT::cause-in
 :wordnet-sense-keys ("inject%2:29:00" "inject%2:35:00" "inject%2:34:01" "insert%2:35:00" "insert%2:30:00" "insert%2:35:01")
 :parent ONT::event-of-causation
 :arguments ((:REQUIRED ONT::Agent)
	     (:required ont::source)
	     (:optional ont::affected-result ((? thm F::phys-obj F::abstr-obj)))
             )
 )


#|
(define-type ONT::deSelect
 :parent ONT::cause-come-from
 :arguments ((:REQUIRED ONT::AGENT ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
	     (:ESSENTIAL ONT::FORMAL ((? tt F::phys-obj F::abstr-obj f::situation f::time))))
 )
|#

(define-type ONT::cause-out-of
 :wordnet-sense-keys ("extract%2:35:04" "pull_out%2:35:00" "pull%2:35:10" "pull_up%2:35:00" "take_out%2:35:09" "draw_out%2:35:05"  "purge%2:29:00")
 :parent ONT::cause-come-from
 )

(define-type ONT::cause-off
 :wordnet-sense-keys ("take_off%2:30:00" "get_off%2:32:01")
 :parent ONT::cause-come-from
 :arguments ((:REQUIRED ONT::formal)
             )
 )

(define-type ont::shed
 :wordnet-sense-keys ("shed%2:29:00")
 ;:parent ont::cause-come-from
 :parent ont::cause-off
 )

(define-type ONT::undress
 :wordnet-sense-keys ("undress%2:29:00" "discase%2:29:00" "uncase%2:29:00" "unclothe%2:29:00" "strip%2:29:01" "strip_down%2:29:00" "disrobe%2:29:01" "peel%2:29:02")
 ;:parent ONT::cause-come-from
 :parent ont::cause-off
 )

(define-type ONT::rise
 :wordnet-sense-keys ("rise%2:38:00")
 :parent ONT::event-of-undergoing-action
 :arguments ((:OPTIONAL ONT::Agent)
             )
 )

(define-type ONT::come-out-of
 :wordnet-sense-keys ("egress%1:04:01" "egression%1:04:00::" "emergence%1:04:00" "leak%2:30:04")
 :parent ONT::come-from
 :arguments ((:OPTIONAL ONT::Agent)
             )
 )

(define-type ONT::push-out-of
 :parent ONT::cause-out-of
 )

(define-type ONT::pull-out-of
; :parent ONT::come-out-of
 :parent ONT::cause-out-of
 )

#|
(define-type ONT::pull-off
 :wordnet-sense-keys ("draw_off%2:35:00" "draw_away%2:35:01" "pull_off%2:35:01")
; :parent ONT::come-from
 :parent ONT::cause-out-of
 :arguments ((:OPTIONAL ONT::Agent)
             )
 )
|#

(define-type ONT::socially-remove
    :wordnet-sense-keys ("banishment%1:04:00" "expel%2:41:01" "expel%2:41:00" "ouster%1:04:00" "repatriate%2:41:01" "debarment%1:04:00")
 :parent ONT::cause-come-from
 :arguments (;(:REQUIRED ONT::Formal ((? thm F::phys-obj F::abstr-obj) (F::intentional +)))
	     (:REQUIRED ONT::affected ((? thm F::phys-obj F::abstr-obj) (F::intentional +)))
             )
 )

(define-type ONT::cause-clear
 :wordnet-sense-keys ("evacuate%2:38:01" "evacuate%2:30:00" "evacuate%2:38:00")
 :parent ONT::cause-come-from
 :arguments ((:OPTIONAL ONT::Agent)
             (:OPTIONAL ONT::affected-result ((? thm F::phys-obj F::abstr-obj))) ; clear the physical table/abstract chart
	     ;(:OPTIONAL ONT::affected (?aff (F::mobility F::movable)))
	     )
 )

(define-type ONT::empty
 :wordnet-sense-keys ("empty%2:30:01" "empty%2:30:00")
 :parent ONT::cause-come-from
 :arguments ((:OPTIONAL ONT::Agent)
             (:OPTIONAL ONT::affected-result ((? thm F::phys-obj F::abstr-obj) (F::Container +))) ; _lg 20190206 added abstr-obj (for things like models, plans, etc.) and put back in the container feature
	     (:OPTIONAL ONT::affected)
	     )
 )

(define-type ont::unload
 :wordnet-sense-keys ("offload%2:35:00" "unlade%2:35:00" "unload%2:35:00")
 :parent ONT::EMPTY
 :sem (F::Situation (F::Aspect F::Dynamic) (F::Cause F::Agentive) (F::Trajectory -))
 :arguments (
;	     (:ESSENTIAL ONT::From-Loc (F::Phys-obj (F::Container +)))
             )
 )


(define-type ONT::remove-from
 :wordnet-sense-keys ("disembarrass%2:40:00")
 :parent ONT::event-of-causation
 :arguments ((:REQUIRED ONT::Agent)
             (:REQUIRED ONT::Source)
	     (:OPTIONAL ONT::affected)
	     (:OPTIONAL ONT::affected-result)
	     )
 )

(define-type ont::disarm
 :wordnet-sense-keys ("disarm%2:33:01")
 :parent ont::remove-from
)

; note that REMOVE-FROM is used for extracting INHIBIT events and REMOVE-PARTS is used for extracting BINDEXPT events
(define-type ONT::remove-parts
  :wordnet-sense-keys ("purify%2:30:00" "filter%2:35:00" "distill%2:30:01")
  :parent ONT::event-of-causation   
  :comment "the part remaining is the good part"
  :arguments ((:OPTIONAL ONT::Agent)
	      (:OPTIONAL ONT::AFFECTED1)
	      (:optional ont::source)
	      )
 )

(define-type ONT::parts-removed
  :wordnet-sense-keys ("precipitate%2:30:00")
  :parent ONT::cause-out-of
  :comment "the part removed is the good part"
  :arguments ((:OPTIONAL ONT::Agent)
	      (:OPTIONAL ONT::AFFECTED1)
	      )
 )

(define-type ONT::take-in
    :wordnet-sense-keys ("absorb%2:35:00" "absorb%2:43:00" "intake%1:04:00" "bilge%2:30:01" "bilge%2:30:00" "suck%2:38:00" "suck%2:35:00" "take_up%2:34:00")
    :parent ONT::event-of-causation
    :arguments ((:REQUIRED ONT::Agent)
		(:REQUIRED ONT::affected)
	     )
 )

;; 20120524 GUM change new type
(define-type ont::act-behave
    :wordnet-sense-keys ("act%2:29:00" "act%2:36:04" "behave%2:41:01" "behavior%1:26:00" "perform%2:36:01" "performance%1:04:00" "play%2:36:02" "posturing%1:07:00")
    :parent ont::acting
    :arguments ((:REQUIRED ONT::formal (F::phys-obj)))   ;; the role -- acted as a judges, acts as a catalyst
    )

(define-type ONT::Take-time
 :wordnet-sense-keys ("take%2:40:06" "occupy%2:40:08" "use_up%2:40:02")
 :parent ONT::event-of-state
 :sem (F::Situation (f::cause -) (f::trajectory -))
 :arguments ((:REQUIRED ONT::formal ((? ttp F::Situation F::phys-obj) (F::Aspect (? asp f::dynamic f::stage-level)))) 
;             (:REQUIRED ONT::Duration  (F::abstr-obj (F::scale F::duration-scale)))
             (:REQUIRED ONT::EXTENT  (F::abstr-obj (F::scale ont::duration-scale)))
             ;;; it will take the truck 5 minutes [to arrive]
             (:OPTIONAL ONT::neutral (f::phys-obj))
             )
 )

(define-type ONT::LEave-time
 :wordnet-sense-keys ("provide%2:42:00" "allow%2:42:00" "allow_for%2:42:00" "leave%2:42:01" "leave%2:42:03" "save%2:30:00" "make_unnecessary%2:30:00")
 :sem (F::Situation (F::Aspect F::Stage-Level))
 :parent ONT::take-time
 :arguments ((:OPTIONAL ONT::affected (f::phys-obj)) ;; it leaves JOHN 5 hours
	     )
 )

;; similar to ont::take-time, but allows phys-obj subject:
;; the problem takes 5 hours to solve; he spent 5 hours solving the problem
(define-type ONT::spend-time
 :wordnet-sense-keys ("spend%2:42:00" "pass%2:42:00")
 :parent ONT::take-time
 :sem (F::Situation (F::Cause -) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Formal)
;             (:REQUIRED ONT::duration (F::abstr-obj (F::scale F::duration-scale)))
             (:REQUIRED ONT::EXTENT (F::abstr-obj (F::scale ont::duration-scale)))
	     (:optional ont::agent ((? atp f::abstr-obj f::phys-obj) (f::intentional +)) (:implements ONT::affected))
             )
 )

; merged into ACTIVITY-ONGOING
#|
(define-type ONT::MAINTAIN-ACTIVITY
 :wordnet-sense-keys ("keep%2:30:10" "preserve%2:30:00" "maintain%2:40:10" "keep%2:40:10" "save%2:40:03" "keep%2:40:09" "hold_open%2:40:00" "keep_open%2:40:00" "maintain%2:34:00" "keep%2:34:00" "sustain%2:34:00" "keep_on%2:41:00" "keep%2:41:02" "continue%2:41:00" "retain%2:41:01" "maintain%2:31:00" "keep%2:31:00" "observe%2:31:00" "hold%2:42:00" "maintain%2:42:00" "keep%2:42:00" "continue%2:42:01" "go_on%2:42:00" "proceed%2:42:00" "go_along%2:42:00" "keep%2:42:07" "persist%2:42:01" "welter%2:31:00" "sustain%2:42:01" "keep_up%2:33:00")
    :parent ONT::cause-effect
    :arguments (
		(:essential ont::affected ((? aff f::phys-obj f::abstr-obj f::situation))) ;; this is the person or object affected -- the bulbs will keep lighting up
		(:essential ont::effect ((? ef f::abstr-obj f::situation f::phys-obj)))
		)
    )
|#

; renamed -- maintain-activity
;(define-type ONT::MAINTAIN-STATE
; :wordnet-sense-keys ("keep%2:30:10" "preserve%2:30:00" "maintain%2:40:10" "keep%2:40:10" "save%2:40:03" "keep%2:40:09" "hold_open%2:40:00" "keep_open%2:40:00" "maintain%2:34:00" "keep%2:34:00" "sustain%2:34:00" "keep_on%2:41:00" "keep%2:41:02" "continue%2:41:00" "retain%2:41:01" "maintain%2:31:00" "keep%2:31:00" "observe%2:31:00" "hold%2:42:00" "maintain%2:42:00" "keep%2:42:00" "continue%2:42:01" "go_on%2:42:00" "proceed%2:42:00" "go_along%2:42:00" "keep%2:42:07")
;    :parent ONT::activity-ongoing
;    :arguments (
;                (:essential ont::affected ((? aff f::phys-obj f::abstr-obj))) ;; this is the person or object affected -- the bulbs will keep lighting up
;                (:essential ont::effect ((? ef f::abstr-obj f::situation)))
;                )
;    )

;; create, make
;; how is this related to/different from ont::cause-make?
(define-type ONT::CREATE
 :wordnet-sense-keys ("create%2:36:00" "create%2:36:03" "creation%1:04:00" "make%2:36:00")
 :parent ONT::event-of-creation
 :sem (F::SITUATION (:required (F::Cause F::agentive) (F::Trajectory -))(:default (F::Aspect F::bounded)))
 :arguments (;;(:REQUIRED ONT::FORMAL ((? th F::Phys-obj F::Abstr-obj F::situation)))
	     ;;(:ESSENTIAL ONT::Agent (F::Phys-obj (F::intentional +)))
	     ;; for "An open switch creates a gap" / FN: "it created fanatics during the Afgan war"
	     ;; the process creates compression
	     (:OPTIONAL ONT::agent ((? cs F::Phys-obj f::abstr-obj) ))
	     (:essential ont::affected-result ((? aff  F::Phys-obj f::abstr-obj) 
					       (f::type (? x ONT::PHYS-OBJECT ont::mental-construction ont::information-function-object))))
	     (:essential ont::affected ((? aff  F::Phys-obj f::abstr-obj) 
					       (f::type (? x ONT::PHYS-OBJECT ont::mental-construction ont::information-function-object))))
	     (:OPTIONAL ONT::result ((? res F::Phys-obj f::abstr-obj) (F::intentional -))) ;; he made a box from paper
             )
 )

;; cf related concept ont::create, with agent and formal roles
(define-type ONT::Invention
 :wordnet-sense-keys ("invention%1:04:00" "invention%1:06:00" "invention%1:09:00")
 :parent ONT::CREATE ;event-of-creation
 :arguments ((:ESSENTIAL ONT::agent (F::phys-obj (F::intentional +)) )
             ;;; Invention
             ;; ONT::result is our name for VN product
             (:optional ONT::affected-Result)
;             (:OPTIONAL ONT::Purpose)
             (:OPTIONAL ONT::REASON)
             )
 )

(define-type ONT::imitate-simulate
 :wordnet-sense-keys ("simulate%2:36:04" "simulate%2:36:02" "imitate%2:36:03")
  :parent ONT::CREATE
  :arguments ((:ESSENTIAL ONT::neutral)
	      )
  )

(define-type ONT::cause-make-things
 :wordnet-sense-keys ("create_from_raw_material%2:36:00" "create_from_raw_stuff%2:36:00")
  :parent ONT::CREATE
  :arguments ((:ESSENTIAL ONT::Result ((? o1 F::Phys-obj f::abstr-obj)))
	      (:ESSENTIAL ONT::AFFECTED-result ((? o2 F::Phys-obj f::abstr-obj))))
  )

(define-type ont::bear
 :wordnet-sense-keys ("fruit%2:36:00" "flower%2:30:00")
 :parent ont::cause-make-things
)

;; procreate
(define-type ont::procreate
 :wordnet-sense-keys ("propagate%2:29:00" "propagate%2:29:01" "reproduce%2:29:00")
 :parent ont::bear
)

(define-type ONT::GENE-EXPRESSION
 :wordnet-sense-keys ("gene_expression%1:19:00" "expression%1:22:00" "express%2:39:09")
 :parent ONT::cause-make-things
 :arguments ((:optional ont::affected-result (F::PHYS-OBJ (F::type ont::molecular-part)))
	     (:optional ont::affected (F::PHYS-OBJ (F::type ont::molecular-part)))
	     )
 )

(define-type ONT::GENE-TRANSCRIPTION
 :wordnet-sense-keys ("transcription%1:22:00" "transcribe%2:30:00")
 :parent ONT::cause-make-things
 :arguments ((:optional ont::affected-result (F::PHYS-OBJ (F::type ont::molecular-part)))
	     (:optional ont::affected (F::PHYS-OBJ (F::type ont::molecular-part)))
	     )
 )

(define-type ONT::GENE-TRANSLATION
 :wordnet-sense-keys ("translation%1:22:00" "translate%2:32:05")
 :parent ONT::cause-make-things
 :arguments ((:optional ont::affected-result (F::PHYS-OBJ (F::type ont::molecular-part)))
	     (:optional ont::affected (F::PHYS-OBJ (F::type ont::molecular-part)))
	     )
 )

; emit
; 20121022 GUM change : merging with ont::emit-givoff-discharge.
;(define-type ont::emit
; :wordnet-sense-keys ("emit%2:32:00" "let_out%2:32:02" "let_loose%2:32:00" "emission%1:04:00" "emanation%1:04:00")
;  :parent ont::cause-effect
;  )

;; 20120524 GUM change new type
;; 20121022 GUM change : merging with ont::emit; moving WN mappings here.
(define-type ont::emit-giveoff-discharge
    :wordnet-sense-keys ("bubble%2:30:01" "discharge%2:29:00" "emanation%1:04:00" "emission%1:04:00" "emit%2:43:00" "leak%2:30:00")
;    :parent ont::releasing
    :parent ONT::CAUSE-MAKE-THINGS
    )

;; shine, glow, glisten, gleam, sparkle
(define-type ont::location-of-light
    :wordnet-sense-keys ("shine%2:43:00" "beam%2:43:03" "flash%2:39:00" "shine%2:43:03" "twinkle%1:11:00" "shimmer%1:11:00"
					 "glitter%2:39:00")
  :parent ont::emit-giveoff-discharge
  :sem (F::situation (:default (F::trajectory +)))
  ;;:arguments ((:essential ont::formal (f::phys-obj (F::intentional -))) ;; the thing that shines
  )


;; sound
;; 20121022 GUM change parent; this change requires adding an ont::effect role
(define-type ont::make-sound
   :wordnet-sense-keys ("clink%2:39:01" "clink%2:39:00" "tinkle%2:39:00" "sound%2:39:00" "ring%2:39:00" "play%2:36:00" "play%2:36:11" "play%2:36:05" "sound%2:39:01" "ring%2:39:01")
  ;; :parent ont::emit
   :parent ont::emit-giveoff-discharge ;; 20121022 GUM change parent; this change requires adding an ont::effect role
   :arguments ((:OPTIONAL ONT::effect (F::situation))
	       )
   )

(define-type ont::emit-vapor
    :wordnet-sense-keys ("smoke%2:43:00" "steam%2:43:00")
    :parent ont::emit-giveoff-discharge
    :arguments ((:REQUIRED ONT::agent (F::Phys-obj (f::intentional -))))
    )


;; write a book (about trucks), write your name
(define-type ONT::write
 :wordnet-sense-keys ("create_verbally%2:36:00")
 :parent ONT::CREATE
 :arguments ((:optional ont::affected-result ((? tt F::phys-obj F::abstr-obj) (F::information (? inf f::data F::information-content))))

	     ))


;; 20120523 GUM change new type
(define-type ont::author-write-burn-print_reprint_type_retype_mistype
     :wordnet-sense-keys ("type%2:32:00" "write%2:36:01")
    :parent ont::write
    )

(define-type ont::enter-on-form
    :wordnet-sense-keys ("complete%2:32:00")
    :parent ont::write
    
    )

#|
;; type the letter
(define-type ONT::type
 :wordnet-sense-keys ("type%2:32:00" "typewrite%2:32:00")
 :parent ONT::print
 :arguments ((:ESSENTIAL ONT::FORMAL ((? tt F::phys-obj F::abstr-obj) (F::information
                                                                 (? inf f::data F::information-content))))
             )
 )
|#


;; establish, found, base, ground
(define-type ONT::establish
 :wordnet-sense-keys ("constitute%2:36:00" "create%2:36:02" "establish%2:35:00" "establish%2:36:00" "establish%2:41:00" "found%2:36:00" "found%2:41:00" "institute%2:36:01" "launch%2:41:01" "plant%2:36:00" "set_up%2:41:02" "start%2:36:00")
 :parent ONT::create
 :sem (F::SITUATION (:required (F::Cause F::agentive) (F::Trajectory -))(:default (F::Aspect F::bounded)))
 :arguments ((:essential ONT::Agent)
             (:required ONT::Affected)
	     (:required ONT::Neutral)
	     ;(:OPTIONAL ONT::manner)
             )
 )

(define-type ONT::TRANSFORMATION
 :parent ONT::change
 :wordnet-sense-keys ("transform%2:30:00" "transform%2:30:03" "metabolize%2:34:00")
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments (;;(:REQUIRED ONT::affected ((? rcp F::Phys-obj f::abstr-obj f::situation)))
	     (:optional  ONT::affected1 ((? transform-aff1 F::Phys-obj f::abstr-obj)))
             (:OPTIONAL ONT::Agent)
             (:OPTIONAL ONT::RESULT)
             )
 )

(define-type ONT::continuous-change
 :parent ONT::transformation
 )


#|
(define-type ONT::develop
    :parent ont::transformation ;; GUM change new parent 20121030
  )
|#

;; CHANGE IN SCALE
(define-type ont::change-in-scale
 :parent ont::transformation
 :arguments  ((:essential ont::scale (F::abstr-obj  (F::scale ont::domain))))
)

;; CHANGE IN MEASURE SCALE
(define-type ont::change-in-measure-scale
 :parent ont::change-in-scale
 :arguments  ((:essential ont::scale (F::abstr-obj  (F::scale ont::measure-scale))))
)

; time measure scale
(define-type ont::change-in-time-measure
 :parent ont::change-in-measure-scale
 :sem (F::SITUATION  (F::scale ont::time-measure-scale)) 
 :arguments  ((:essential ont::scale (F::abstr-obj  (F::scale ont::time-measure-scale))))
)

(define-type ont::age
 :wordnet-sense-keys ("age%2:30:02" "age%2:30:00" "age%2:30:01")
 :parent ont::change-in-time-measure
 :arguments ((:essential ONT::scale (f::abstr-obj (F::scale ont::age-scale) (F::orientation f::pos))))
)

(define-type ont::extend-time
 :wordnet-sense-keys ("prolong%2:30:00")
 :parent ont::change-in-time-measure
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::duration-scale) (F::orientation f::pos))))
)

(define-type ont::shorten-time
 :wordnet-sense-keys ("shorten%2:30:01" "shorten%2:30:00")
 :parent ont::change-in-time-measure
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::duration-scale) (F::orientation f::neg))))
)

; dimensional-scale
(define-type ont::change-in-dimension
 :wordnet-sense-keys ("grow%2:30:00")
 :parent ont::change-in-measure-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::dimensional-scale))))
)

; intensity-scale
(define-type ont::intensify
 :wordnet-sense-keys ("augment%2:30:00" "intensify%2:30:01" "intensify%2:30:00" "sharpen%2:30:01" "sharpen%2:30:00")
 :parent ont::change-in-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::intensity-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)

(define-type ont::lessen-intensity
 :wordnet-sense-keys ("weaken%2:30:03" "slack%2:30:04")
 :parent ont::change-in-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::intensity-scale) (F::orientation f::neg))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)

; lightened:  "I felt my burden lighten as I told the story"
(define-type ont::lighten-weight
 :wordnet-sense-keys ("lighten%2:35:00")
 :parent ont::change-in-dimension
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::weight-scale) (F::orientation f::neg))))
)

; size-scale
(define-type ont::change-in-size
 :parent ont::change-in-dimension
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::size-scale))))
)

; size-scale
(define-type ont::enlarge
 :wordnet-sense-keys ("enlarge%2:30:00" "enlarge%2:30:03" "hypertrophy%2:29:00")
 :parent ont::change-in-size
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::size-scale) (F::orientation f::pos))))
)

(define-type ONT::swell
 :wordnet-sense-keys ("bloat%2:30:01" "bulk%2:30:00" "intumesce%2:30:00" "protrude%2:30:00" "protuberate%2:42:00" "protuberate%2:42:01" "raise%2:38:01" "rise%2:38:02" "swell%2:30:00" "swell%2:30:01" "swell_up%2:30:00" "tumefy%2:30:00" "tumesce%2:30:00")
 :parent ONT::change-in-size
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::size-scale) (F::orientation f::pos))))
 )

; size-scale
(define-type ONT::shrink
 :wordnet-sense-keys ("compress%2:35:01" "shrink%2:30:01" "shrink%2:30:00")
 :parent ONT::change-in-size
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::size-scale) (F::orientation f::neg))))
 )


; linear extent scale
(define-type ont::change-in-linear-extent
 :parent ont::change-in-size
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::linear-extent-scale))))
)

(define-type ont::extend
 :wordnet-sense-keys ("stretch%2:30:04" "stretch%2:30:00" "extend%2:30:01" "broaden%2:30:00")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::area-scale) (F::orientation f::pos))))
)

(define-type ont::widen
 :wordnet-sense-keys ("widen%2:30:00" "widen%2:30:03")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::width-scale) (F::orientation f::pos))))
)

(define-type ont::narrow
 :wordnet-sense-keys ("narrow%2:30:00")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::width-scale) (F::orientation f::neg))))
)

(define-type ont::deepen
 :wordnet-sense-keys ("deepen%2:30:03")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::depth-scale) (F::orientation f::pos))))
)

(define-type ont::shorten
 :wordnet-sense-keys ("shorten%2:30:09")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::length-scale) (F::orientation f::neg))))
)

(define-type ont::lengthen
 :wordnet-sense-keys ("lengthen%2:30:00" "lengthen%2:30:01")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::length-scale) (F::orientation f::pos))))
)

(define-type ont::flatten
 :wordnet-sense-keys ("even_out%2:30:00" "flatten%2:30:00" "even_out%2:30:01")
 :parent ont::change-in-linear-extent
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::thinness-scale) (F::orientation f::pos))))
)

;; strengthen 
(define-type ont::strengthen
 :wordnet-sense-keys ("strengthen%2:30:01" "strengthen%2:30:00")
 :parent ont::change-in-dimension
 ;; argument add
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::strength-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)

;; weaken
(define-type ont::weaken
 :wordnet-sense-keys ("languish%2:29:00" "languish%2:30:00" "weaken%2:30:00" "weaken%2:30:01" "waste%2:30:01")
 :parent ont::change-in-dimension
 ;; argument add
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::strength-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)

; temperature-scale
(define-type ont::change-in-temperature
 :parent ont::change-in-measure-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::temperature-scale))))
)

(define-type ONT::cool
 :wordnet-sense-keys ("chill%2:30:00" "cool%2:30:00" "cool%2:30:01" "cool_down%2:30:01")
 :parent ONT::change-in-temperature
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::cold-scale) (F::orientation f::pos))))
 )

(define-type ONT::heat
 :wordnet-sense-keys ("heat%2:30:00" "heat%2:30:01" "overheat%2:30:01" "overheat%2:30:00")
 :parent ONT::change-in-temperature
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::heat-scale) (F::orientation f::pos))))
 )

; ratio scale
(define-type ont::change-in-ratio
 :parent ont::change-in-measure-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::ratio-scale))))
)

;; rush, hasten, speed up
(define-type ONT::increase-speed
 :wordnet-sense-keys ("hasten%2:41:00" "acceleration%1:07:00")
 :parent ONT::change-in-ratio
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::speed-scale) (F::orientation f::pos))))
 )

(define-type ONT::decrease-speed
 :wordnet-sense-keys ("slow%2:30:00" "slow%2:30:01" "deceleration%1:07:00")
 :parent ONT::change-in-ratio
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::speed-scale) (F::orientation f::neg))))
 )


;; CHANGE IN PHYSICAL PROPERTY SCALE
(define-type ont::change-in-physical-property-scale
 :parent ont::change-in-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::physical-property-scale)))
	    (:optional ONT::RESULT (f::abstr-obj (f::type (? xxx ont::path ont::resulting-object ont::resulting-state))))
	    )
 )

; configuration
(define-type ont::change-in-configuration
 :parent ont::change-in-physical-property-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::configuration-property-scale))))
)

; constriction
(define-type ont::change-in-constriction
 :parent ont::change-in-configuration
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::constriction-scale))))
)

; tighten
(define-type ont::tighten
 :wordnet-sense-keys ("tighten%2:30:00" "tighten%2:30:01")
 :parent ont::change-in-constriction
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::tightness-scale) (F::orientation f::pos))))
)

; loosen
(define-type ont::loosen
 :wordnet-sense-keys ("loosen%2:30:00" "loosen%2:30:01" "slacken%2:30:00" "slacken%2:30:01")
 :parent ont::change-in-constriction
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::looseness-scale) (F::orientation f::pos))))
)


; appearance-scale
(define-type ont::change-in-appearance
 :parent ont::change-in-physical-property-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::appearance-scale))))
)

(define-type ont::change-in-tactile-scale
 :parent ont::change-in-appearance
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::tactile-scale))))
)

; thicken the soup
(define-type ont::thicken
 :wordnet-sense-keys ("thicken%2:30:01" "thicken%2:30:00" "thicken%2:30:02")
 :parent ont::change-in-tactile-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::texture-thickness-scale) (F::orientation f::pos))))
)

; thin the soup
(define-type ont::thin
 :wordnet-sense-keys ("thin%2:30:01" "thin%2:30:00")
 :parent ont::change-in-tactile-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::texture-thinness-scale) (F::orientation f::pos))))
)

; harden the clay
(define-type ont::harden
 :wordnet-sense-keys ("harden%2:30:01" "harden%2:30:00" "stiffen%2:30:01" "stiffen%2:30:00")
 :parent ont::change-in-tactile-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::tactile-hardness-scale) (F::orientation f::pos))))
)

; soften the clay
(define-type ont::soften
 :wordnet-sense-keys ("soften%2:30:00" "soften%2:30:01")
 :parent ont::change-in-tactile-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::tactile-softness-scale) (F::orientation f::pos))))
)

; sharpen (the rocks sharpened over time as tides crashed against them)
(define-type ont::sharpen
 :wordnet-sense-keys ("sharpen%2:35:00" "sharpen%2:30:08")
 :parent ont::change-in-tactile-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::sharp-texture-scale) (F::orientation f::pos))))
)

; smooth
(define-type ont::smoothen
 :wordnet-sense-keys ("smoothen%2:30:00" "smooth%2:35:00")
 :parent ont::change-in-tactile-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::smoothness-scale) (F::orientation f::pos))))
)

; visual scale
(define-type ont::change-in-visual-scale
 :parent ont::change-in-appearance
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::visual-scale))))
)

; lighten
(define-type ont::lighten
 :wordnet-sense-keys ("lighten%2:30:02")
 :parent ont::change-in-visual-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::lightness-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)

; darken
(define-type ont::darken
 :wordnet-sense-keys ("darken%2:30:01" "darken%2:30:00")
 :parent ont::change-in-visual-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::darkness-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)

; brighten
(define-type ont::brighten
 :wordnet-sense-keys ("brighten%2:30:01")
 :parent ont::change-in-visual-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::luminosity-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::extended))
)


; sound scale
(define-type ont::change-in-sound-scale
 :parent ont::change-in-appearance
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::sound-scale))))
)

(define-type ont::quieten
 :parent ont::change-in-sound-scale
 :wordnet-sense-keys ("deafen%2:30:01" "quieten%2:39:00" "hush%2:30:00" "hush%2:30:01")
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::loudness-scale) (F::orientation f::neg))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::atomic))
)

(define-type ont::louden
 :parent ont::change-in-sound-scale
 :wordnet-sense-keys ("louden%2:39:00" "louden%2:30:00")
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::loudness-scale) (F::orientation f::pos))))
 :sem (F::SITUATION  (F::Aspect F::bounded) (F::Time-span F::atomic))
)

; dampness
(define-type ont::change-in-moisture-content
 :parent ont::change-in-physical-property-scale
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::moisture-content-scale))))
)

; dry
(define-type ont::dry
 :wordnet-sense-keys ("dry%2:30:00" "dry%2:30:01")
 :parent ont::change-in-moisture-content
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::dry-scale) (F::orientation f::pos))))
 :comment "simply dry, neither suggests the object undergoing the drying process is intrinsically moistured or contains moisture internally (consider 'the apples dried', 'the car dried')"
)

(define-type ont::dehydrate
 :wordnet-sense-keys ("wither%2:30:00" "dehydrate%2:30:01" "dehydrate%2:30:00")
 :comment "dehydrating process causes something that intrinsically contains moisture to be mosture-lacking (consider 'dehydrate the apples' is possible but 'dehydrate the car' is weird)"
 :parent ont::dry
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::dehydrated-scale) (F::orientation f::pos))))
)


(define-type ont::dampen
 :wordnet-sense-keys ("wet%2:30:00")
 :parent ont::change-in-moisture-content
 :arguments((:essential ONT::scale (f::abstr-obj (F::scale ont::wet-scale) (F::orientation f::pos))))
)


(define-type ont::adjust-surface
 :parent ont::transformation
 :wordnet-sense-keys ("insulate%2:30:01" "waterproof%2:35:00")
 :comment "adjust surface of something to make it impervious to e.g., sound, water"
)

(define-type ONT::coloring
 :wordnet-sense-keys ("colour_in%2:30:00" "color_in%2:30:00" "colour%2:30:09" "colourize%2:30:03" "colourise%2:30:03" "colorise%2:30:03" "colorize%2:30:03" "color%2:30:00" "seal%2:35:04" "varnish%2:35:00" "discolor%2:30:00" "discolour%2:30:00" "colour%2:30:00" "color%2:30:01" "discolor%2:30:02")
 :parent ONT::transformation
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments (
             (:OPTIONAL ONT::Agent)
             (:OPTIONAL ONT::RESULT (f::abstr-obj (f::scale ont::color-scale)))
             )
 )

;; revise, edit, rewrite
;; why isn't this related to ont::write?
(define-type ONT::REVISE
  :wordnet-sense-keys ("revise%2:32:00" "edit%2:30:00" "redact%2:30:00")
 :parent ont::write
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ont::agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
	     (:optional ONT::result ((? res F::phys-obj F::abstr-obj) (f::intentional -)))
             )
 )

#|
;; debug a computer (program)
(define-type ONT::debug
 :parent ONT::revise
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Agent (F::Phys-obj (F::origin F::human)))
                   )
 )
|#

(define-type ONT::adjust
 :parent ONT::TRANSFORMATION
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments (;;(:REQUIRED ONT::Agent ((? ag F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:REQUIRED ONT::affected ((? th24 f::situation f::phys-obj F::abstr-obj f::time)))
	     (:OPTIONAL ONT::Result ((? res f::abstr-obj f::phys-obj f::situation f::time)))
	     (:optional ont::agent ((? cs f::phys-obj f::abstr-obj f::situation)))
	     ;; from FN in the Change_position_on_a_scale frame
	     ;; a directional path along which the change of the formal varies
	     ;; e.g. the research fluctuates with the budget; the interest increases with time
	     )
 :wordnet-sense-keys ("adjust%2:30:00")

 )

;; the battery is on a path that excludes the bulb; the offer excludes gift vouchers
(define-type ONT::EXCLUDE
 :wordnet-sense-keys ("take_out%2:31:00" "omit%2:31:01" "leave_off%2:31:00" "leave_out%2:31:01" "except%2:31:00" "exclude%2:31:01" "shut%2:41:00" "shut_out%2:41:00" "keep_out%2:41:00" "exclude%2:41:00" "exclude%2:42:00" "bar%2:32:00" "debar%2:32:00" "exclude%2:32:01")
    :parent ONT::ADJUST
    )


; takes non-tangible AFFECTED (e.g., amount)
(define-type ONT::change-magnitude
 :wordnet-sense-keys ("change_magnitude%2:30:00" "change_intensity%2:39:00")
 :arguments (	     ;(:essential ont::affected (F::abstr-obj (f::scale ont::domain))) ; e.g., rainfall is physobj; flood is situation 
	     (:essential ont::affected)
	     ;(:essential ont::affected (F::abstr-obj (f::type (? t2 ont::domain ont::quantity-abstr ont::level)))) ; height, amount, level, degree
	     (:essential ONT::scale (f::abstr-obj (F::scale ont::domain)))
	     (:optional  ONT::result ((? cau2 F::situation F::Abstr-obj f::phys-obj) (F::type (? t ont::goal-reln ont::source-reln))))) 
; :parent ONT::adjust
 ;:parent ont::change-in-scale
 :parent ont::event-of-change
 )

(define-type ONT::increase
 :wordnet-sense-keys ("increase%1:11:00" "increase%2:30:00" "rise%2:37:00" "increase%1:07:00" "rise%1:11:00")
 :parent ONT::change-magnitude
 )

(define-type ONT::increase-number
 :wordnet-sense-keys ("multiply%2:30:00")
 :parent ONT::increase
 )

(define-type ONT::double
 :wordnet-sense-keys ("double%2:30:00")
 :parent ONT::increase-number
 )

(define-type ONT::triple
 :wordnet-sense-keys ("triple%2:30:00")
 :parent ONT::increase-number
 )



;(define-type ONT::increase-time
; :wordnet-sense-keys ("prolong%2:30:00")
; :parent ONT::increase
; )

(define-type ONT::decrease
    :wordnet-sense-keys ("decrease%2:30:00" "decrease%2:30:01" "diminish%2:30:00" "lessen%2:30:00" "fall%2:30:06" "mitigate%2:32:00" "reduction%1:04:00" "decrement%1:07:00"
					    "decrease%1:11:00" "relieve%2:29:00")
 :parent ONT::change-magnitude
 )

(define-type ONT::decrease-completely
 :wordnet-sense-keys ("deplete%2:34:00" "exhaust%2:30:00")
 :parent ONT::decrease
 )

(define-type ONT::adjust-to-extreme
 ;:parent ONT::adjust
 :parent ONT::change-magnitude
 )

(define-type ONT::minimize
 :wordnet-sense-keys ("minimise%2:30:00")
 :parent ONT::adjust-to-extreme
 )

(define-type ONT::maximize
 :wordnet-sense-keys ("maximise%2:30:00")
 :parent ONT::adjust-to-extreme
 )


(define-type ONT::fluctuate
 :wordnet-sense-keys ("fluctuate%2:30:00" "fluctuation%1:11:01" "fluctuation%1:11:00")
 :parent ONT::change
 )

(define-type ONT::translate
 :parent ONT::adjust
 :arguments ((:optional ont::affected ((? ff F::PHYS-OBJ F::Abstr-obj F::Situation)  (F::INFORMATION F::INFORMATION-CONTENT) ))
	     )
 :wordnet-sense-keys ("translate%2:32:00" "translate%2:30:01" "translate%2:32:06")
 )

; merged with ONT::CHANGE
#|
(define-type ONT::modify
 :wordnet-sense-keys ("change%1:19:00" "change%2:30:02" "change%2:30:08" "change%2:30:01" "desegregate%2:41:00")
 :parent ONT::adjust
 )
|#

(define-type ONT::HYDROLYSIS
    :wordnet-sense-keys ("hydrolysis%1:22:00" "hydrolyze%2:30:00" "hydrolyse%2:30:00" "hydrolize%2:30:01")
    :parent ONT::chemical-change
)

(define-type ont::post-translational-modification
    :parent ont::chemical-change
    :arguments ((:essential ont::agent ((? cs f::phys-obj f::abstr-obj f::situation) (F::type (? !t ont::cell-line)))) ; where there is both a gene-protein and a cell with the same name
		(:essential ont::affected (F::PHYS-OBJ (F::type ont::molecular-part)))
		(:optional  ont::location )
    ))

(define-type ont::phosphorylation
    :parent ont::post-translational-modification
)

(define-type ont::ubiquitination
    :parent ont::post-translational-modification
)

(define-type ont::acetylation
    :parent ont::post-translational-modification
)

(define-type ont::farnesylation
    :parent ont::post-translational-modification
)

(define-type ont::glycosylation
    :parent ont::post-translational-modification
)

(define-type ont::hydroxylation
    :parent ont::post-translational-modification
)

(define-type ont::methylation
    :parent ont::post-translational-modification
)

(define-type ont::ribosylation
    :parent ont::post-translational-modification
)

(define-type ont::sumoylation
    :parent ont::post-translational-modification
)

(define-type ONT::visual-adjust
 :wordnet-sense-keys ("blur%2:30:01" "blur%2:39:00" "blur%2:39:01" "focus%2:30:00" "sharpen%2:30:03" "sharpen%2:39:00" "soften%2:39:00")
 :parent ONT::adjust
 )

(define-type ONT::visual-display
 :wordnet-sense-keys ("bring_on%2:36:01" "confront%2:32:03" "expose%2:39:00" "flash%2:30:03" "project%2:39:01")
 :parent ONT::show
 )

;;; This is a mental action - highlighting important points
;; no, this is for highlighting things on a display/map
(define-type ONT::HIGHLIGHT
 :wordnet-sense-keys ("foreground%2:30:00" "highlight%2:30:00" "play_up%2:30:00" "spotlight%2:30:01")
 :parent ONT::visual-display
 :sem (F::Situation (F::Cause F::Agentive))
 )

(define-type ONT::listing
; :parent ONT::visual-display
 :parent ONT::representative
 :sem (F::Situation (F::Cause F::Agentive))
 :arguments ((:OPTIONAL ONT::Agent)
             )
 )

(define-type ONT::language-adjust
 :wordnet-sense-keys ("abbreviate%2:30:01" "abridge%2:30:00" "contract%2:30:05" "cut%2:30:08" "foreshorten%2:30:00" "reduce%2:30:08" "shorten%2:30:02" "simplify%2:30:00")
 :parent ONT::adjust
 )

(define-type ONT::device-adjust
 :wordnet-sense-keys ("customise%2:30:00" "customize%2:30:00" "specialize%2:30:01" "specialise%2:30:01")
 :parent ONT::adjust
 )

;; delete, omit, drop, leave out
(define-type ONT::omit
 :wordnet-sense-keys ("delete%2:35:00" "drop%2:31:00")
 :parent ONT::adjust
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ont::agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
	     (:REQUIRED ONT::Formal ((? thm F::phys-obj F::abstr-obj) (f::intentional -)))
	     (:optional ONT::result ((? res F::phys-obj F::abstr-obj) (f::intentional -)))
             (:optional ONT::source ((? src F::abstr-obj)))
             )
 )

(define-type ONT::cooking
 :parent ONT::transformation
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Agent (F::Phys-obj (F::origin F::human)))
             ;;(:REQUIRED ONT::Formal (f::phys-obj (f::origin (? fo F::Natural-non-human f::non-living))))
	     (:essential ont::affected (f::phys-obj (f::type ont::food)
						    (F::Object-Function F::comestible)))
	     ;; (:OPTIONAL ONT::affected-result  (f::phys-obj))
	     (:OPTIONAL ONT::result)
             )
 )


(define-type ont::create-by-cooking
 :wordnet-sense-keys ("brew%2:36:00" "prepare%2:36:01")
 :parent ont::cooking
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Agent (F::Phys-obj (F::origin F::human)))
             ;;(:REQUIRED ONT::Formal (f::phys-obj (f::origin (? fo F::Natural-non-human f::non-living))))
	     (:essential ont::affected-result (f::phys-obj (f::type ont::food)
						    (F::Object-Function F::comestible)))
	     ;;(:essential ont::affected (f::phys-obj (f::type ont::food)
						    ;; (F::Object-Function F::comestible)))
	     ;; (:OPTIONAL ONT::affected-result  (f::phys-obj))
	     ;; (:OPTIONAL ONT::result (f::phys-obj))
             )
)



(define-type ont::coat-food
 :wordnet-sense-keys ("bread%2:35:00" "crumb%2:35:00" "dredge%2:35:03" "egg%2:35:00" "ice%2:35:00")
 :parent ont::cooking
)

(define-type ont::remove-from-food
 :wordnet-sense-keys ("bone%2:30:00" "pit%2:30:00" "seed%2:30:01" "shell%2:30:00" "shuck%2:30:03")
 :parent ont::cooking
 :comment "the thing removed is encoded in the verb"
)

;; flavor, sweeten, salt, season
(define-type ont::flavor
 :wordnet-sense-keys ("change_taste%2:39:00" "flavor%2:39:00")
 :parent ont::cooking
 :comment "to alter flavor by seasoning or adding ingredients"
)

;; draw out flavor through infusion
(define-type ont::steep
 :wordnet-sense-keys ("percolate%2:35:02" "steep%2:30:00")
 :parent ont::flavor
 :comment "draw out flavor through infusion"
)

;; cook or alter the chemical property of food (typically via heat)
(define-type ont::cook
 :wordnet-sense-keys ("cook%2:30:00")
 :parent ont::cooking
 :comment "to cook i.e., alter chemical property of food (typically via heat)"
)

;; dry heat cooking
(define-type ont::cook-in-dry-heat
 :parent ont::cook
)

;; dry heat cooking: cook without direct exposure to heat (typically in an oven)
(define-type ont::bake
 :wordnet-sense-keys ("bake%2:30:00" "scallop%2:36:01")
 :parent ont::cook-in-dry-heat
 :comment "cook without direct exposure to heat (typically in an oven)"
)

;; dry heat cooking: cook (especially meat) by prolonged exposure to heat
(define-type ont::roast
 :wordnet-sense-keys ("grill%2:30:00" "roast%2:30:00")
 :parent ont::cook-in-dry-heat
 :comment "cook (especially meat) by prolonged exposure to heat (typically over open flames or in oven)"
)

;; cooking in liquid
(define-type ont::cook-in-liquid
 :parent ont::cook
 :wordnet-sense-keys ("fricassee%2:30:00" "souse%2:30:00")
)

;; specific types for caet
;; cook by fully immersing in liquid
(define-type ont::cook-boil
 :wordnet-sense-keys ("blanch%2:30:00" "boil%2:30:02" "boil%2:30:00" "coddle%2:30:00" "poach%2:30:00")
 :parent ont::cook-in-liquid
 :comment "cook by fully immersing in boiling (or close to boiling) liquid"
)

;; stew
(define-type ont::stew
 :wordnet-sense-keys ("braise%2:30:00" "stew%2:30:00")
 :parent ont::cook-in-liquid
 :comment "cook slowly in small amounts of liquid (in order to soften ingredients and meld flavor)"
)

;; the resulting look of the cooked item is encoded in the verb
(define-type ont::cook-result
 :wordnet-sense-keys ("brown%2:30:00" "crisp%2:30:00")
 :parent ont::cook
 :comment "the verb encodes the resulting look of the cooked item"
)

;; microwave
(define-type ont::cook-in-microwave
 :wordnet-sense-keys ("microwave%2:30:00")
 :parent ont::cook
)

;; cook in fat (fry)
(define-type ont::cook-in-fat
 :wordnet-sense-keys ("fry%2:30:00")
 :parent ont::cook
 :comment "cook/fry in fat or oils"
)

;; cook in steam
(define-type ont::cook-in-steam
 :wordnet-sense-keys ("steam%2:30:00")
 :parent ont::cook
)


(define-type ont::transform-to-preserve
 :wordnet-sense-keys ("pasteurize%2:30:00" "preserve%2:30:00")
 :parent ont::cooking
)

;; grow, thrive, flourish
(define-type ONT::grow
 :wordnet-sense-keys ("cultivate%2:36:00" "develop%2:30:00" "develop%2:30:01" "grow%2:30:01" "grow%2:30:02")
 :parent ONT::continuous-change
 :sem (F::SITUATION (F::Trajectory -))
 :arguments ((:optional ONT::Agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:REQUIRED ONT::Formal ((? formal f::phys-obj f::abstr-obj F::situation)))
	     (:OPTIONAL ONT::Result ((? rst f::phys-obj f::abstr-obj F::situation)))
             )
 )

;; crush, smash, mash
(define-type ONT::damage
    :parent ONT::transformation
    :wordnet-sense-keys ("damage%1:04:00" "damage%2:30:00" "damage%2:30:01")
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Agent ((? agt F::Phys-obj F::abstr-obj) (f::intentional +)))
             (:REQUIRED ONT::affected)
	     (:OPTIONAL ONT::Result (f::abstr-obj)) ;; why is the abstr-obj?
;	     (:OPTIONAL ONT::instrument (F::phys-obj (F::intentional -) (F::form F::solid-object)))
             )
 )

(define-type ont::mangle
 :parent ont::damage
 :wordnet-sense-keys("mangle%2:30:01" "mar%2:30:00")
)

(define-type ont::spoil
 :parent ont::damage
 :wordnet-sense-keys("adulteration%1:04:00" "spoil%2:30:01")
 )

(define-type ONT::dent
 :wordnet-sense-keys ("bruise%2:30:00" "dent%2:35:00" "indent%2:35:00")
 :parent ONT::damage
 )

;(define-type ONT::coalesce
; :parent ONT::object-change
; :sem (F::SITUATION (F::Cause F::agentive) (f::trajectory +))
; :arguments ((:OPTIONAL ONT::affected1 ((? thm f::situation f::phys-obj F::abstr-obj))))
; :wordnet-sense-keys ("cohere%2:42:01")
; )

(define-type ont::changing-rules
  :parent ont::event-of-causation
  :arguments ((:REQUIRED ONT::affected (F::abstr-obj (F::TYPE ONT::SOCIAL-CONTRACT))))
)

(define-type ont::rescinding-rules
  :parent ont::changing-rules
  :wordnet-sense-keys ("deregulate%2:41:00")
)

(define-type ont::rescind
  :parent ont::rescinding-rules
  :wordnet-sense-keys ("repeal%2:32:00")
)
  
(define-type ont::enacting-rules
  :parent ont::changing-rules
  :wordnet-sense-keys ("enact%2:41:00" "imposition%1:04:02" "segregate%2:41:00")
  ;currently enact%2:41:00 goes to ONT::TELL in WN mappings
)

(define-type ONT::putting-together
 :parent ONT::event-of-causation
 )

(define-type ONT::combine-objects
    :comment "symmetric combination of objects, abstract or physical: e.g., X combines with y = y combines with x = x and y combine;  the result is a new combination where the original objects cannot be separated"
 :wordnet-sense-keys ("amalgamate%2:35:00" "blend%2:30:00" "coalesce%2:30:00" "cohere%2:42:01" "combine%2:30:00" "commingle%2:30:00" "commix%2:35:00" "conflate%2:30:00" "flux%2:30:00" "fuse%2:30:00" "immix%2:30:00" "meld%2:30:00" "merge%2:30:01" "mingle%2:35:00" "mix%2:30:00" "mix%2:30:01" "mix%2:35:00" "mix_in%2:30:01" "unify%2:35:00")
 :parent ONT::putting-together
 :arguments ((:OPTIONAL ONT::affected1 ((? thm f::situation f::phys-obj F::abstr-obj))))
 :sem (F::SITUATION (F::Cause F::agentive) (f::trajectory +))
 )

(define-type ONT::add-include
 :wordnet-sense-keys ("add%2:30:00" "include%2:30:00" "inclusion%1:04:00" "introduce%2:38:00")
 :comment "asymettric composition: one object becomes part of another"
 :parent ONT::putting-together ;adjust
 :sem (F::SITUATION)
 :arguments ((:OPTIONAL ont::result ((? cthm f::situation f::phys-obj F::abstr-obj))))
 )

(define-type ONT::improve
 :wordnet-sense-keys ("enhancement%1:04:00" "sweetening%1:04:02" "meliorate%2:30:01" "improvement%1:04:00" "advance%1:11:01")
 :parent ONT::adjust
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Formal ((? thm F::abstr-obj f::situation f::phys-obj)))
             )
 )

(define-type ONT::transgress
 :wordnet-sense-keys ("transgress%2:41:00" "transgress%2:41:02" "transgress%2:38:00" "infringe%2:41:00" "infringe%2:38:00" "intrude%2:41:00" "violate%2:42:00" "violate%2:41:00" "violate%2:41:02" "violate%2:35:00" "conflict%1:26:00")
 :parent ONT::event-of-causation
 )

(define-type ONT::ATTACK
 :wordnet-sense-keys ("attack%2:33:00" "attack%2:32:00" "attack%2:33:02" "attack%2:29:00" "attack%1:04:00")
; :parent ONT::event-of-causation
 :parent ONT::transgress
 )

; revolt, rebel, war, riot
(define-type ONT::GROUP-CONFLICT
 :wordnet-sense-keys ("riot%2:41:00" "military_action%1:04:00" "revolution%1:04:00" "conflict%1:04:00" "rebel%2:41:00")
 :parent ONT::transgress
 :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -) (F::Aspect F::Dynamic))
 :arguments ((:REQUIRED ONT::AGENT  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             )
 )


;; manage
(define-type ONT::managing
    :parent ONT::control-manage
    :wordnet-sense-keys ("management%1:04:00" "hold%2:36:00")
    ;:arguments ((:ESSENTIAL ONT::Agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))) ; intentional -: the arrows/stars guide..., the proteins regulate... ; f::situation: the activation of the drug subdued...
 :comment "take responsibility over the production of a project, a program, or a production" 
 )

(define-type ont::tame
 :wordnet-sense-keys ("curb%2:30:01" "keep_down%2:41:00" "break_in%2:30:00" "tame%2:30:00" "break%2:30:12")
 :parent ont::managing
)


(define-type ont::nurturing
 :parent ont::control-manage
 :comment "to nurture, raise, or rear humans or other animate beings; take responsibility for the growth of animate beings (compare to ont::grow)"
 :wordnet-sense-keys ("rear%2:41:00")
)

;; guide, lead, direct, conduct
(define-type ont::guiding
 :wordnet-sense-keys ("lead%2:38:01" "manage%2:41:01" "direct%2:41:00" "work%2:41:01")
 :comment "take general control over the management and direction of a program, a project, or a production"
 :parent ONT::managing ;ONT::CONTROL-MANAGE ;ONT::intentionally-act
 :sem (F::situation (:required (F::trajectory +))(:default (F::aspect F::dynamic)(F::time-span F::extended)))
 :arguments ((:required ont::agent  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
	     (:optional ont::neutral ((? th31 f::phys-obj f::abstr-obj f::situation))) ;; a person, a discussion, an event
	     )
 )

;; organizing
(define-type ont::organizing
 :wordnet-sense-keys ("organize%2:41:00" "organize%2:36:00" "organize%2:31:00" "stage%2:36:00" "produce%2:39:00")
 :parent ont::managing
 :comment "coordinate, manage and execute a program, a project or a production"
)

;; cognizer formulates a plan
;; schedule, plan, arrange
(define-type ONT::planning
 :wordnet-sense-keys ("plan%2:36:00" "plan%2:31:00" "plan%2:31:01" "time%2:31:00" "plan%1:09:00" "arrange%2:36:03")
 :parent ont::managing ;ONT::intentionally-act
 :arguments ((:REQUIRED ONT::Formal ((? obj F::ABSTR-OBJ f::situation f::time)))
	     (:OPTIONAL ONT::neutral)
	     (:OPTIONAL ONT::effect (F::situation))
	     
	     )
 :comment "make necessary preparations for a program, a project or a production"
 )

;; host, sponsor
(define-type ONT::managing-resources
 :wordnet-sense-keys ("sponsor%2:40:00" "patronize%2:40:00" "patronise%2:40:00" "host%2:34:00")
 :parent ont::managing ;ONT::CONTROL-MANAGE ;ONT::intentionally-act
 :sem (F::SITUATION (:required (F::Cause F::agentive) (F::Trajectory -))(:default (F::Aspect F::bounded)))
 :arguments ((:REQUIRED ONT::FORMAL ((? th23 F::Phys-obj F::situation)))
	     (:ESSENTIAL ONT::Agent (F::Phys-obj (F::intentional +)))
             )
 :comment "manage resources for the execution of a program, a project or a production"
 )

;; 20120521 GUM change new type
(define-type ont::taking-care-of
 :wordnet-sense-keys ("handle%2:41:00" "process%2:41:01" "take_care%2:41:11")
 :parent ont::managing
 :comment "take care of a problem or an issue"
)

(define-type ont::governing
    :parent ont::managing
    ;:parent ont::control-manage
    ;:arguments ((:REQUIRED ONT::Agent ((? aff F::situation F::phys-obj)))
		;(:required ont::affected ((? aff F::situation F::phys-obj) ; also abstr-obj: signaling pathway
		;			  (F::type (? typ ont::device ont::located-event ont::molecular-part)))))
    ;:comment "control, influence, or regulate a process"
    )

;; for configure, arrange X (into Y) e.g. he arranged them into groups of three
(define-type ONT::arranging
 :wordnet-sense-keys ("arrange%2:35:00" "reorient%2:30:00" "put%2:35:05" "put_aside%2:35:00" "address%2:32:02" "alternate%2:30:01")
 :parent ONT::control-manage
 :sem (F::SITUATION (F::Cause F::agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Agent  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:REQUIRED ONT::Formal ((? thm F::phys-obj f::abstr-obj f::situation)))
	     (:OPTIONAL ONT::Result ((? res F::phys-obj f::abstr-obj)))
	     (:OPTIONAL ONT::AFFECTED-RESULT ((? res F::phys-obj f::abstr-obj)))
	     (:OPTIONAL ONT::AFFECTED1 ((? res F::phys-obj f::abstr-obj f::situation)))
;	     (:OPTIONAL ONT::Content ((? ct F::phys-obj f::abstr-obj f::situation f::time))) ;; sort by time, price, size, color, etc.
             )
 :comment "place objects in a particular physical configuration"
 )


(define-type ONT::reverse  ; need to distinguish this from "invert"; they share a synset
 :parent ONT::arranging
 )

(define-type ONT::decorate
    :wordnet-sense-keys ("decorate%2:36:00")
    :parent ONT::arranging
    )

(define-type ONT::exchange
 :parent ONT::arranging
 :wordnet-sense-keys ("exchange%2:40:00" "exchange%2:30:00" "transpose%2:30:00" "transpose%2:30:02" "transpose%2:36:00" "transpose%2:30:01" "transpose%2:30:03")
 :comment "swap or trade; two parties -- each give and receive from the other"
 )

(define-type ONT::set-up-device
 :parent ONT::arranging
 )

;; 20120720 jr: caet renaming type for tea expression in y2: "put the tea bag in"
(define-type ONT::install
 :parent ONT::set-up-device
 )

(define-type ONT::arrange-text
 :parent ONT::arranging
 )

(define-type ONT::sort
 :parent ONT::arranging
 )

(define-type ONT::collate
 :parent ONT::arranging
 )

;; synchronize, coordinate with X
(define-type ONT::coordinating
 :parent ONT::arranging
 :arguments ((:REQUIRED ONT::formal1 ((? cthm F::phys-obj f::abstr-obj f::situation)))
             )
 )

(define-type ONT::separation
 :wordnet-sense-keys ("separate%2:35:01" "disunite%2:35:00" "divide%2:35:01" "part%2:35:01" "break%2:41:13" "divide%2:38:00" "disjoint%2:35:00" "separate%2:35:00" "separate%2:35:02" "separation%1:11:00")
    :parent ONT::event-of-causation
    :comment "abstract, social or physical dissociation"
    :sem (F::SITUATION (:default (F::Cause F::agentive)) (:required (F::trajectory -)))
    :arguments ((:OPTIONAL ONT::Agent)
		(:OPTIONAL ONT::Agent1)
	     ;;; Whole, Part-1
		(:REQUIRED ONT::affected((? thm F::phys-obj F::abstr-obj)))
	                  ;;; Part-2
		(:OPTIONAL ONT::affected1 (F::Phys-obj))
		(:OPTIONAL ONT::source (F::Phys-obj))
             ;;; Part-2
;		(:OPTIONAL ONT::Co-result (F::Phys-obj))
		;;(:OPTIONAL ONT::Criterion)
;		(:OPTIONAL ONT::Instrument) ;; separate A from B with a knife
		)
    )

(define-type ONT::UNATTACH
 :wordnet-sense-keys ("disconnect%2:35:00" "disengage%2:35:01" "unfasten%2:35:01" "unfasten%2:35:00")
 :parent ONT::SEPARATION
 :sem (F::Situation (F::Aspect F::Dynamic) (F::Cause F::Agentive))
 )

;; cut, slice, chop
(define-type ONT::cut
 :parent ONT::break-object
 :sem (F::Situation (F::aspect F::dynamic) (F::cause F::agentive))
 :arguments ((:REQUIRED ONT::formal)
             (:ESSENTIAL ONT::agent)
;             (:OPTIONAL ONT::instrument (F::phys-obj (F::intentional -) (F::form F::solid-object)))
             )
 )

;; 20120524 GUM change new type
(define-type ont::carve-cut
    :wordnet-sense-keys ("cut%2:35:10::")
    :parent ont::cut
    )

;; this isn't a child of ont::combine-objects because of incompatibility of f::trajectory feature
(define-type ONT::Joining
 :wordnet-sense-keys ("conjoin%2:35:00" "join%2:35:00")
 :comment "abstract, social, or physical connection of objects such that the objects retain their original make-up/identity (whereas COMBINE-OBJECTS are not un-combinable anymore)"
; :parent ONT::cause-contact
 :parent ONT::putting-together
 :sem (F::Situation (F::Trajectory -))
 :arguments ((:OPTIONAL ONT::AGENT (F::Phys-obj))
	     (:OPTIONAL ONT::AGENT1 (F::Phys-obj))
             ;;; Part-1 or Parts
             (:OPTIONAL ONT::affected (F::Phys-obj )) ;;(f::intentional -)))
             ;;; Part-2 or Parts
             (:OPTIONAL ONT::affected1 (F::Phys-obj (f::intentional -)))
             ;;; Whole
             (:ESSENTIAL ONT::Result (F::Abstr-obj (f::type (? pred ONT::PREDICATE ONT::POSITION-RELN))))
             ;;; My definition - anything that joins
;             (:OPTIONAL ONT::Instrument (F::phys-obj (F::intentional -)))
             ;;; if there is a spatial component, the location of a join
             (:OPTIONAL ONT::location (F::phys-obj (F::intentional -)))
             )
 )

(define-type ont::fit
 :wordnet-sense-keys ("dovetail%2:42:00" "go%2:42:05" "fit%2:30:01")
 :parent ont::joining
 :comment "join by fitting them together in a tight configuration"
)

(define-type ONT::ASSOCIATE
 :wordnet-sense-keys ("join%2:41:01" "pair%2:35:01" "pair%2:41:00" "team%2:33:00")
 :parent ONT::JOINING
 :sem (F::Situation (F::Aspect F::Dynamic) (F::Cause F::Agentive))
 )

(define-type ONT::MARRY
 :wordnet-sense-keys ("marry%2:41:00" "marry%2:41:01")
 :parent ONT::ASSOCIATE
 )

(define-type ONT::ATTACH
 :wordnet-sense-keys ("attach%2:35:01" "attach%2:35:02" "catch%2:35:08" "connect%2:35:00")
 :comment "Typically Asymmetric joining: e.g. Attach the paper to the wall =/= attach the wall to the paper!"
 :arguments ((:required ont::agent (F::phys-obj (F::origin F::natural))))
 :parent ONT::JOINING
 :sem (F::Situation (F::Aspect F::Dynamic) (F::Cause F::Agentive))
 )

; specifically for the binding sense of the word "interact"
; X interacts with Y
; X and Y interact
(define-type ONT::BIND-INTERACT
 :parent ONT::ATTACH
 :sem (F::Situation (F::Aspect F::Dynamic) (F::Cause F::Agentive))
 :arguments ((:required ont::agent (F::PHYS-OBJ (F::type ont::molecular-part)))
	     (:optional ont::agent1 (F::PHYS-OBJ (F::type ont::molecular-part)))
	     (:optional ont::affected (F::PHYS-OBJ (F::type ont::molecular-part)))
	     )
 )

;; register for a conference, check in/out at a hotel, enroll in a program
(define-type ONT::enroll
 :wordnet-sense-keys ("enrol%2:41:00" "enroll%2:41:00" "enter%2:33:00" "enter%2:41:06" "fall_in%2:41:00" "inscribe%2:41:00" "recruit%2:41:01")
 :parent ONT::joining
 :sem (F::situation)
 :arguments ((:REQUIRED ONT::Formal (f::phys-obj (f::intentional +))) ;; check in a person
	     (:optional ont::neutral ((? oc f::phys-obj f::situation f::abstr-obj))) ;; at a hotel, in a program
	   
             )
 )

;; stretch  20120524 GUM change new type
(define-type ONT::admit
  :wordnet-sense-keys ("accept%2:40:03" "admit%2:41:00" "admit%2:41:01")
  :parent ont::enroll
 )

;; cover
;; neutral covers formal, or agent causes affected to cover formal
;; (like a cloth)
(define-type ONT::cover
 :wordnet-sense-keys ("arch_over%2:38:00" "cover%2:35:13" "cover%2:29:02")
 :parent ONT::position
 :sem (F::Situation (F::Aspect F::stage-level) (f::time-span f::extended)) ;; allow ing forms
 )

;; circumscribe
(define-type ONT::circumscribe
 :wordnet-sense-keys ("limit%2:30:00" "circumscribe%2:30:00" "confine%2:30:01")
 :parent ONT::position
 :sem (F::Situation (F::Aspect F::Indiv-level))
 )

;; surround, border
;; (like a fence)
(define-type ONT::surround
 :wordnet-sense-keys ("surround%2:35:00" "environ%2:35:00" "ring%2:35:03" "skirt%2:35:00" "border%2:35:01")
 :parent ONT::position
 :sem (F::Situation (F::Aspect F::stage-level) (F::time-span f::extended))
 )

(define-type ONT::spatial-divide
 :wordnet-sense-keys ("divide%2:42:00")
 :parent ONT::position
 :sem (F::Situation (F::Aspect F::stage-level) (F::time-span f::extended))
 )

;;; This corresponds to all cases where things intersect
(define-type ONT::INTERSECT
 :wordnet-sense-keys ("cross%2:38:03" "intersect%2:38:00" "coexist%2:42:00")
 :parent ONT::position
 :comment "two objects share a common subpart"
 :sem (F::Situation (F::Aspect F::Indiv-level) (F::Cause -))
 :arguments ((:REQUIRED ONT::neutral (F::Phys-obj
				      (F::mobility f::fixed)
				      (F::Spatial-abstraction (? sa F::Line F::Strip F::Spatial-region))))
             (:REQUIRED ONT::neutral1 (F::Phys-obj
				       (F::mobility f::fixed)
				       (F::Spatial-abstraction (? sa1 F::Line F::Strip F::Spatial-region))
				       ))
             (:ESSENTIAL ONT::location (F::phys-obj))
             )
 )

;;(define-type ONT::CHANGE-OF-RELATION
;; :parent ONT::change-state
;; :sem (F::SITUATION)
;; :arguments ((:REQUIRED ONT::Formal ((? oc F::Phys-obj f::abstr-obj f::situation)) (:implements entity))
;;	     (:OPTIONAL ONT::Reason (f::situation))
;;             )
;; )

(define-type ONT::EXISTS
  :wordnet-sense-keys ("abound%2:42:00" "be%2:42:00" "be%2:42:01" "be%2:42:04" "consist%2:42:00" "dwell%2:42:01" "exist%2:42:00" "lie%2:42:01" "lie_in%2:42:00" "live%2:42:00" "play%2:36:04")
 :parent ONT::EVENT-OF-STATE
 :sem (F::Situation (F::aspect F::stage-level) (F::time-span F::extended)(F::cause -) (F::locative F::located) (F::trajectory -))
 :arguments ((:REQUIRED ONT::neutral)
             )
 )

;(define-type ONT::POSSIBLY-EXISTS
;; :wordnet-sense-keys ("look%2:39:01" "appear%2:39:00" "seem%2:39:00") ;this synset should go under ont::appears-to-have-property
; :parent ONT::EXISTS
; :sem (F::Situation (F::aspect F::stage-level) (F::time-span F::extended)(F::cause -) (F::locative F::located) (F::trajectory -))
; :arguments ((:REQUIRED ONT::neutral (F::situation))
;             )
; )

(define-type ONT::CONNECTED
 :wordnet-sense-keys ("adjoin%2:35:03" "admit%2:42:00" "afford%2:40:01" "connect%2:42:02" "converge%2:42:00" "join%2:42:01" "link%2:42:01" "link_up%2:42:00" "open%2:42:00" "unite%2:42:02")
 :parent ONT::POSITION
 :comment "two objects are touching in some way"
 :sem (F::Situation (F::Aspect F::Indiv-level) (F::Cause -))
 :arguments ((:optional  ONT::neutral2))
 )

(define-type ONT::support
    :parent ONT::POSITION
     :wordnet-sense-keys ("support%2:35:00")
    :sem (F::Situation (F::Aspect F::Indiv-level) (F::Cause -))
    )


;; aim, face, orient, point
;; the statue is facing me/east/towards the street
(define-type ONT::POINTING-TO
 :wordnet-sense-keys ( "point%2:42:00" "orient%2:42:01")
  :parent ONT::position
  :sem (F::Situation (F::Aspect F::Stage-level))
  :arguments ((:REQUIRED ONT::neutral ((? them F::Phys-obj F::abstr-obj F::situation))) ;; the figure
	      (:optional ont::neutral1)
	      (:optional ont::orientation (f::abstr-obj (f::type (? xx ont::direction ont::goal-reln))))
	      ;(:OPTIONAL ont::result (F::phys-obj))  ;; for the causal form: face the statue wowards the water
	      )
 )

(define-type ONT::be-at
  :parent ONT::position
  ;; f::located to allow spatial locations (on, in) but trajectory - to prohibit from-loc, to-loc
  :sem (F::SITUATION (F::aspect F::static) (F::time-span F::extended) (F::container -) (F::Locative F::located) (F::trajectory -))
  :arguments ((:required ONT::neutral);; is unrestricted -- can be author, title, etc.
	      (:REQUIRED ONT::location))
  )


(define-type ONT::start-at-loc
    :wordnet-sense-keys ("begin%2:42:00" "begin%2:42:02")
  :parent ONT::be-at
   )

(define-type ONT::end-at-loc
    :wordnet-sense-keys ("end%2:42:00")
  :parent ONT::be-at
   )

;; this extends (to) here
(define-type ONT::SPAN
 :wordnet-sense-keys ("extend%2:42:03" "extend%2:42:01" "jut%2:42:00" "range%2:42:03" "roll%2:42:00")
 :parent ONT::be-at
 :sem (F::Situation (F::aspect F::stage-level))
 )

;; this goes/belongs here
(define-type ONT::SHOULD-BE-AT
 :wordnet-sense-keys ("belong%2:42:03" "go%2:42:04" "belong%2:42:06")
 :parent ONT::be-at
 :sem (F::Situation (F::aspect F::stage-level))
 :arguments ((:ESSENTIAL ONT::neutral (F::Phys-obj (F::intentional -)))
	     (:essential ont::location (F::Abstr-obj (f::type (? type ont::loc-where-rel ont::oriented-loc-reln ont::pos-distance ont::pos-wrt-speaker-reln)))
             ))
 )

;; this fits here
(define-type ONT::could-be-at
 :parent ONT::be-at
 :sem (F::Situation (F::Aspect F::Indiv-level))
 )

;; for positionals: lie, stand
(define-type ONT::BE-AT-LOC
 :comment "relations that indicate an postural attitude as well as a location"
 :wordnet-sense-keys ("sit%2:35:00" "sit_down%2:35:03" "settle%2:30:00" "hang%2:35:03" "hang%2:35:05" "hang%2:35:06" "hang%2:42:01" "lie%2:35:00" "trail%2:35:05" "lie%2:42:00")
 :parent ONT::BE-AT
 :sem (F::Situation (F::aspect F::stage-level))
 :arguments ((:ESSENTIAL ONT::neutral (F::Phys-obj)) ;; formal is restricted to phys-obj; otherwise same as be-at
             )
 )


;; float
(define-type ONT::float
 :wordnet-sense-keys ("hover%2:38:01" "float%2:38:01")
 :parent ONT::be-at-loc
 )

(define-type ONT::location-as-motion
 :comment "relations that locate in terms of some motion"
 :wordnet-sense-keys ("range%2:42:00" "flow%2:35:04")
 :parent ONT::BE-AT
 :sem (F::Situation (F::aspect F::stage-level))
 :arguments ((:ESSENTIAL ONT::neutral (F::Phys-obj))              )
 )

(define-type ONT::location-as-orientation
 :comment "relations that locate in terms of orientation"
 :wordnet-sense-keys ("slope%2:38:00" "ascend%2:38:10")
 :parent ONT::BE-AT
 :sem (F::Situation (F::aspect F::stage-level))
 :arguments ((:ESSENTIAL ONT::neutral (F::Phys-obj))
	     (:optional ont::orientation (f::abstr-obj (f::type (? xx ont::direction ont::goal-reln)))))
 )

;; tilt,lean
(define-type ONT::leaning
    :comment "The state of being in a position of leaning (against something)"
 :parent ONT::be-at-loc
 )

;; manipulate, influence
(define-type ONT::manipulate
 :wordnet-sense-keys ("operate%2:35:00" "control%2:35:00" "manipulate%2:35:00")
 :parent ONT::control-manage
 :arguments (
;	     (:OPTIONAL ONT::Instrument (F::Phys-obj (F::intentional -)))
	     (:REQUIRED ONT::Formal ((? obj f::situation F::PHYS-OBJ F::ABSTR-OBJ)))
	     (:OPTIONAL ONT::agent ((? cs f::abstr-obj f::phys-obj)))
             ;;(:REQUIRED ONT::agent ((? agt f::abstr-obj F::phys-obj) (F::intentional +)) (:implements cause))
             )
 )

;; outsmart, overcome, beat, vanquish
(define-type ont::overcome
 :wordnet-sense-keys ("get_the_better_of%2:33:00" "overcome%2:33:03" "defeat%2:33:00")
;  :parent ont::manipulate
  :parent ont::control-manage
  )

(define-type ont::cope-deal
    :wordnet-sense-keys ("dispense_with%2:41:00" "cope%2:41:00")
    :parent ont::complete
    )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; New Entries
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-type ONT::CONTAINMENT
 :wordnet-sense-keys ("keep%2:40:13" "hold%2:42:14" "take%2:42:15" "contain%2:42:14" "accommodate%2:42:03" "hold%2:42:05" "admit%2:42:04")
 :parent ONT::event-of-state
 :arguments ((:REQUIRED ONT::neutral ((? x F::Phys-obj F::abstr-obj) (F::container +)))
             (:ESSENTIAL ONT::neutral1 ((? th25 F::Phys-obj f::abstr-obj)))
             )
 )


;; miss, skip a dose, an appointment
(define-type ONT::skip-action
 :parent ONT::omit
 :sem (F::situation (F::Aspect F::bounded) (F::Time-span F::atomic))
 :arguments ((:ESSENTIAL ONT::Formal ((? ttype f::abstr-obj F::Phys-obj F::Situation)))
             )
 )

#|
(define-type ONT::RIOT
 :wordnet-sense-keys ("riot%2:41:00")
 :parent ONT::located-event
 :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -) (F::Aspect F::Dynamic))
 :arguments ((:REQUIRED ONT::AGENT  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             )
 )
|#

; accident, emergency, crisis, disaster
(define-type ONT::EMERGENCY
 :wordnet-sense-keys ("disaster%1:26:00" "disaster%1:11:00" "disaster%1:04:00" "crisis%1:26:00" "crisis%1:11:00" "accident%1:11:01")
 :parent ONT::located-event
 :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -) (F::Aspect F::Dynamic))
 :arguments ((:REQUIRED ONT::AGENT  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             )
 )

;;; swift 11/26/01 -- added this for inchoative verbs, e.g. get as in 'get nauseous'
(define-type ONT::BECOME
 :wordnet-sense-keys ("take%2:30:09" "come%2:30:03" "become%2:42:00" "become%2:30:00" "go%2:30:04" "get%2:30:00" "open_up%2:30:01" "turn%2:30:04" "become%2:42:01")
 :parent ONT::event-of-undergoing-action
 :sem (F::Situation (F::Aspect F::Dynamic) (F::Trajectory -))
 :arguments ((:ESSENTIAL ONT::affected)
	     (:essential ont::formal (F::abstr-obj (F::TYPE ont::property-val) )
			 )
	     ))

(define-type ONT::SPACE
    :wordnet-sense-keys ("space%2:38:00")
    :parent ONT::ARRANGING ;ONT::event-of-causation
    :sem (F::SITUATION (F::Cause F::Agentive) (F::Trajectory -))
    :arguments ((:REQUIRED ONT::affected (F::Phys-obj))
		(:REQUIRED ONT::AGENT  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
		)
 )

;;; Myrosia 06/09/02 adding an event for a meal
(define-type ONT::meal-event
    :parent ONT::EVENT-defined-by-activity
    :wordnet-sense-keys ("meal%1:28:00" "dinner%1:13:00" "lunch%1:13:00")
    :sem (F::situation (F::cause F::agentive) (F::time-span F::extended) (F::aspect F::dynamic) (F::trajectory -))
    )

; sunrise, sunset, dawn, dusk, twilight
(define-type ont::nychthemeron-event
;  :parent ont::event-defined-by-activity
  :parent ont::natural-event
  )

(define-type ONT::nonverbal-expression
 :wordnet-sense-keys ("express_emotion%2:37:00" "express_feelings%2:37:00")
 :parent ONT::event-of-action
 :sem (F::situation (F::Cause F::Agentive) (F::Time-span F::Extended))
 :arguments ((:ESSENTIAL ONT::agent (F::Phys-obj  (:required (f::origin (? org f::human f::non-human-animal)))))
	     (:optional ONT::NEUTRAL (F::abstr-obj (f::type ont::information-function-object)))
             )
 )

(define-type ont::sound-expression
 :wordnet-sense-keys ("laugh%2:29:00" "cry%2:29:00" "utter%2:32:02")
 :parent ont::nonverbal-expression
)

(define-type ont::facial-expression
 :wordnet-sense-keys ("grimace%2:29:00" "gape%2:39:00")
 :parent ont::nonverbal-expression
)

(define-type ONT::ordering
    :comment "Identify an ordering or ranking of objects along some dimention" 
    :wordnet-sense-keys ("rate%2:31:00" "rank%2:31:00" "range%2:31:00" "order%2:31:00" "grade%2:31:03" "place%2:31:01")
    :parent ONT::categorization
    )

(define-type ONT::attribute-impute
    :comment "identify a cause of an event"
    :wordnet-sense-keys ("attribute%2:31:01" "base%2:31:00" "impute%2:31:00")
    :arguments ((:essential ONT::NEUTRAL ) ;((? n F::abstr-obj F::situation))) ; phys-obj: database
		(:essential ONT::NEUTRAL1 )) ;((? n1 F::abstr-obj F::situation)))) ; phys-obj: database
    :parent ONT::categorization
    )

(define-type ONT::classify
    :wordnet-sense-keys ("classify%2:31:01" "relegate%2:31:02" "classify%2:41:00" "separate%2:31:00" "sort_out%2:31:00" "assort%2:31:00" "sort%2:31:00" "class%2:31:00" "classify%2:31:00" "categorise%2:31:00" "categorize%2:31:00" "take%2:31:07" "read%2:31:09" "discern%2:39:00" "discover%2:39:00")
    :parent ONT::categorization
    )

(define-type ONT::identify
    :wordnet-sense-keys ("identify%2:31:01")
    :parent ONT::categorization
    )

(define-type ONT::rely
 :wordnet-sense-keys ("rely%2:31:11" "depend_on%2:42:00" "depend_on%2:42:01" "depend_on%2:42:02" "fall%2:40:03" "count%2:31:02" "bet%2:31:00" "depend%2:31:00" "look%2:31:02" "calculate%2:31:05" "reckon%2:31:05")
 :parent ONT::believe-source
 :comment "EXPERIENCER relies on a certain proposition or source of information - generally allows 'on' PP"
 :sem (F::situation (F::trajectory -))
 :arguments ((:ESSENTIAL ONT::agent ((? cthm F::Phys-obj F::Abstr-obj) (f::intentional +)))
	     (:ESSENTIAL ONT::NEUTRAL ((? neu F::Phys-obj F::Abstr-obj)))
             (:ESSENTIAL ONT::FORMAL ((? thm F::Situation)))
             )
 )

(define-type ONT::bet
 :wordnet-sense-keys ()
 :parent ONT::event-of-causation
 :sem (F::situation (F::trajectory -))
 :arguments (
;	     (:essential ont::cost (F::Phys-obj (F::origin F::human)))
	     (:essential ont::EXTENT (F::Phys-obj (F::origin F::human)))
	     (:optional ont::formal)
             )
 )

 ;; 20120523 GUM change new type
(define-type ont::rely-depend
  :parent ont::EVENT-OF-STATE
  :arguments (
	      (:optional ONT::NEUTRAL1)
	      (:optional ONT::NEUTRAL)
	      )
  )

(define-type ONT::confuse
 :wordnet-sense-keys ("confound%2:31:01" "confuse%2:31:02" "mix_up%2:36:00" "confuse%2:36:00" "jumble%2:36:00" "confuse%2:31:01" "blur%2:31:00" "obscure%2:31:00" "obnubilate%2:31:00" "disorganise%2:41:00")
 :parent ONT::event-of-awareness
 :sem (F::situation (F::aspect F::unbounded) (F::time-span F::atomic))
 :arguments ((:REQUIRED ONT::agent ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
	     (:optional ont::formal)
	     (:optional ont::formal1)
	     (:optional ont::neutral)
	     (:optional ont::neutral1)
             )
 )

(define-type ONT::hang-out
    :wordnet-sense-keys ("idle%2:41:00")
    ; :comment "events involving waiting about, loitering, idle without purpose, waste time etc"
    :comment "to linger in a place or location"
    :parent ONT::PERSISTENT-STATE ;LOCATED-MOVE-STATE
    :sem (F::SITUATION (F::Aspect F::Unbounded) (F::Cause F::Force) (F::Time-span F::Extended))
    :arguments ((:OPTIONAL ONT::Agent (F::Phys-obj (F::Mobility F::Movable)))
					;             (:OPTIONAL ONT::time-duration-rel (F::time (F::time-function f::time-unit)))
					;	     (:OPTIONAL ONT::time-duration-rel (F::abstr-obj (F::scale f::duration-scale)))
		(:OPTIONAL ONT::EXTENT (F::abstr-obj (F::scale ont::duration-scale)))
             ;;; wait for john
		(:OPTIONAL ONT::Formal (F::phys-obj))
		(:OPTIONAL ONT::effect (F::situation))
		)
    )

(define-type ONT::Record
 :wordnet-sense-keys ("maintain%2:32:04" "keep%2:32:00" "take%1:04:00")
 :parent ONT::event-of-action
 :sem (F::situation)
 :arguments (;;(:optional ONT::Formal ((? oc F::Phys-obj F::Abstr-obj F::Situation)))
             (:REQUIRED ONT::Agent)
	     (:optional ont::neutral (F::situation (f::type ont::event-of-change)))
             )
 )

(define-type ont::archive
;  :parent ont::retain
  :parent ont::record
  :arguments ((:essential ont::affected (?ttype (f::information f::information-content)))
	     (:essential ont::source (?ttype1 (f::object-function f::instrument)))
             )
  )

;; back up/copy the data/files (formal)
;; back up the computer (source)
(define-type ONT::duplicate
 :parent ONT::record
 :sem (F::situation)
 :arguments ((:essential ont::neutral (?ttype (f::information f::information-content)))
	     (:essential ont::source (?ttype1 (f::object-function f::instrument)))
             )
 )

;; he smeared the paint on the wall
(define-type ONT::APPLY-ON-SURFACE
 :wordnet-sense-keys ("drizzle%2:35:00" "plaster%2:35:00" "smear%2:35:03" "smudge%2:35:00" "spread%2:35:13" "scent%2:39:02")
  :parent ONT::PUT
  :SEM (F::SITUATION (f::Aspect F::Dynamic))
  :arguments
  ((:required ONT::AGENT (f::Phys-obj (f::intentional +)))
   (:required ONT::affected (f::Phys-obj))
   )
  )

(define-type ONT::immerse
    :wordnet-sense-keys ("immerse%2:35:00" "plunge%2:35:01" "immerse%2:31:01" "drown%2:35:00")
  :parent ONT::put
  :arguments
  ((:required ONT::AGENT  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
   (:required ONT::affected (f::Phys-obj))
   )
  )

(define-type ONT::water-irrigate
 :wordnet-sense-keys ("water%2:30:00" "irrigation%1:04:00")
  :parent ONT::put
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; boudreaux-types.lisp
;; swift 20030918
;; LFs to support boudreaux vocabulary

;; stow the equipment
(define-type ONT::PUT-AWAY
  :parent ONT::put
  :SEM (F::SITUATION (f::Cause F::Agentive) (f::Aspect F::Dynamic))
  :arguments
  ((:required ONT::AGENT  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
   (:required ONT::affected (f::Phys-obj))
   )
  )

;; don the suit
(define-type ONT::PUT-ON
 :wordnet-sense-keys ("apparel%2:29:00" "fit_out%2:29:00" "habilitate%2:29:00" "garment%2:29:00" "tog%2:29:00" "raiment%2:29:00" "garb%2:29:00" "enclothe%2:29:00" "clothe%2:29:00" "dress%2:29:01" "dress%2:29:00" "get_dressed%2:29:00")
  :parent ONT::control-manage
  :SEM (F::SITUATION)
  :arguments
  ((:required ONT::AGENT (f::Phys-obj (f::intentional +)))
   (:required ONT::affected (f::Phys-obj (f::Origin F::Artifact) (f::type ONT::ATTIRE)))
   )
  )

;; delegate/assign the task (to someone)
(define-type ONT::ASSIGN
 :wordnet-sense-keys ("charge%2:41:00" "appoint%2:41:00" "distribute%2:40:00" "administer%2:40:00" "mete_out%2:40:00" "deal%2:40:01" "parcel_out%2:40:00" "lot%2:40:00" "dispense%2:40:00" "shell_out%2:40:00" "deal_out%2:40:00" "dish_out%2:40:00" "allot%2:40:02" "dole_out%2:40:00")
 :parent ONT::giving
 :sem (F::Situation (F::Cause F::agentive) (F::Aspect F::bounded) (F::Time-span F::atomic))
 :arguments ((:ESSENTIAL ONT::Agent  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:ESSENTIAL ONT::affected1 ((? agt1 F::Phys-obj f::abstr-obj) (F::intentional +)))
             (:ESSENTIAL ONT::affected ((? th26 F::Abstr-obj F::Situation F::phys-obj)))
             )
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Defined by Myrosia for beetle
;; 2004/04/01

;; This is the name of the frame from the Framenet, which refers to both open and close verbs
;; Corresponding verbnet is other_cos-45.4
;; Instrument is not mentioned because it is typical for all variations
;; Cause is mentioned but not yet implemented in the lexicon

;; A basic subtype when an object is changing the state due to some (maybe intentional) cause
; "the cylinders ignite the fuel" -- cause can be phys-obj
(define-type ONT::Change-state-action
    :parent ONT::Change-state
    :arguments (
		;;(:optional ONT::Agent ((? ag F::Phys-obj f::abstr-obj) (F::intentional +)))
		(:optional ONT::agent ((? cs f::situation f::phys-obj ))) ; (F::situation (F::cause f::force)))
;		(:optional ONT::Instrument (F::Phys-obj (F::intentional -)))
		)
    )

(define-type ONT::Cure
  :wordnet-sense-keys ("bring_around%2:29:01" "care_for%2:29:00" "cure%2:29:00" "heal%2:29:01" "revitalize%2:29:00")
  :parent ONT::CHANGE-STATE-ACTION ;LIFE-PROCESS
  ;;; Healer
  :arguments ((:OPTIONAL ONT::Agent)
               (:OPTIONAL ONT::affected () (:implements experiencer))
              ;;; Affliction
              (:OPTIONAL ONT::Formal)
              ;;; Treatment
 ;             (:OPTIONAL ONT::INSTRUMENT (F::phys-obj (F::intentional -)))
              )
)

;; break a browser, a promise
(define-type ont::render-ineffective
    :wordnet-sense-keys ("break%2:30:05")
    :parent ont::change-state-action
    :arguments (
		(:required ONT::affected ((? th27 f::situation F::Abstr-obj)))
;		(:optional ONT::cause)
		)
    )

;; repair, fix (up)
(define-type ONT::REPAIR
 :wordnet-sense-keys ("repair%2:30:00" "mend%2:30:00" "fix%2:30:01" "bushel%2:30:00" "doctor%2:30:01" "furbish_up%2:30:00" "restore%2:30:01" "touch_on%2:30:00")
 :parent ONT::Change-state-action
 :sem (F::Situation (F::Cause F::Agentive) (F::Trajectory -))
 :arguments ((:REQUIRED ONT::Agent  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
;             (:OPTIONAL ONT::Instrument (F::Phys-obj (F::intentional -)))
             )
 )

;; clean (up), tidy (up)
(define-type ONT::clean
 :wordnet-sense-keys ("clean%2:35:00" "make_clean%2:35:00" "wash%1:04:01" "dental_care%1:04:00")
 :parent ONT::change-state-action
 :sem (F::Situation (F::Cause F::Agentive) (F::Trajectory -))
 :arguments ((:optional ONT::result ((? res F::situation F::Abstr-obj f::phys-obj) (F::type (? !t ont::position-reln ont::path))))) 
 )

(define-type ont::shower
    :wordnet-sense-keys ("shower%1:04:00"  )
    :parent ont::clean
)

(define-type ont::bath
    :parent ont::clean
)

(define-type ONT::Submit
 :wordnet-sense-keys ("submit%2:32:01" "subject%2:32:04")
 :parent ONT::giving
 :sem (F::situation)
 :arguments ((:REQUIRED ONT::affected ((? oc F::Phys-obj F::Abstr-obj F::situation) (f::type (? typ ont::info-holder ;;document
												ont::loaded-claim  ;;  lawsuit
												ont::mental-construction))))
	     (:REQUIRED ONT::Agent)
             )
 )

;; replace, switch (out), substitute
(define-type ONT::Replacement
 :wordnet-sense-keys ("change%1:06:00" "change%2:30:06" "change%2:30:03" "change%2:30:05" "shift%2:30:02" "switch%2:30:02" "substitute%2:40:00" "replace%2:40:00" "interchange%2:40:01" "exchange%2:40:02" "substitution%1:11:00")
 :parent ONT::change-state-action
 ;;; Agent, agents, Agent-1
 :arguments ((:ESSENTIAL ONT::Agent)
             ;;; Agent-2
;             (:OPTIONAL ONT::Co-Agent)
             ;;; Formal, Formal-old, Formals, Place in switching places
             (:ESSENTIAL ONT::affected ((? ftt f::situation f::abstr-obj f::phys-obj)))
             ;;; Formal-new
             (:ESSENTIAL ONT::affected1 ((? ft f::situation f::abstr-obj f::phys-obj)))
             ;;; Place
;             (:OPTIONAL ONT::Place)
             ;;; Place-1
;             (:OPTIONAL ONT::From-loc)
             ;;; Place-2
;             (:OPTIONAL ONT::To-loc)
             )
 :comment "agent changes an affected with another affected; switch item to a different item"
 )

#|
;; evacuate an area
(define-type ONT::evacuate
 :wordnet-sense-keys ("evacuate%2:38:00")
 :parent ONT::rescue
 :sem (F::Situation (F::cause F::agentive) (F::aspect F::dynamic))
 :arguments ((:REQUIRED ONT::affected (F::Phys-obj (F::form F::geographical-object)))
              )
 )
|#

(define-type ONT::Closure
    :parent ONT::Change-state-action
    :arguments (
		(:required ONT::affected (F::Phys-obj (f::form f::object)))
		)
    )

(define-type ONT::open
 :wordnet-sense-keys ("open%2:41:00" "premier%2:36:01" "open_up%2:35:00" "open%2:35:06" "open%2:35:00")
 :parent ONT::closure
 )

(define-type ONT::close
 :wordnet-sense-keys ("close%2:41:00" "close%2:35:00" "close%2:35:06")
 :parent ONT::closure
 )

(define-type ONT::clog
 :wordnet-sense-keys ("obstruct%2:35:00" "clog%2:35:00" "choke_off%2:35:00" "clog_up%2:35:00" "back_up%2:35:00" "congest%2:35:00" "choke%2:35:01" "foul%2:35:00")
 :parent ONT::closure
 )


;; This is turn-on, turn-off, energize, de-energize
;; Eventually ONT::enable and ONT::disable should be moved here
;; Also change/set the dial to ont::result
;; Might need a further split in the future
(define-type ont::change-device-state
    :parent ont::change-state-action
    :arguments (
		(:required ONT::affected (F::Phys-obj (f::form f::object) (f::origin f::artifact)))
		(:optional ONT::Result)
		)
    )




;; GUM change new type 20121030
(define-type ont::burn-out-light-up-change
  :parent ont::change-device-state
  )


;; go out
(define-type ONT::extinguish
 :parent ONT::Change-device-state
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments (;;(:REQUIRED ONT::Formal)
	     (:REQUIRED ONT::Affected (f::phys-obj )) ;;(f::form f::substance))) ;; turn off the water -- you're really runing off the tap which produces water
             )
 )

;; turn/switch off
(define-type ONT::turn-off
 :parent ONT::extinguish
 :sem (F::SITUATION (F::Aspect F::Dynamic))
 :arguments ((:REQUIRED ONT::agent)
             )
 )

; merged back into ONT::register
;;; Measure in VerbNet, dimension in FrameNet
;;; I think the VerbNet has a better idea, because it joins measure, weigh, etc.
;;; what is the role for the object that is measured?? That should be the formal!!
;; swift -- I'm using this for weigh so the ont::formal role represents the object undergoing the measure
(define-type ont::register
 :wordnet-sense-keys ("take%2:30:08" "clock%2:30:00" "time%2:30:00")
    :parent ont::event-of-awareness
    :sem (f::situation (f::cause f::agentive) (f::trajectory -))
    :arguments (
		(:essential ont::agent (f::phys-obj (f::intentional +)))
;		(:optional ont::instrument (f::phys-obj (f::intentional -) (f::Origin f::artifact) (f::form f::Object)))
		(:required ont::neutral (f::phys-obj)) ;; the item measured
;		(:required ont::property (f::abstr-obj (f::measure-function f::term))) ;; width, height, etc.
		(:essential ont::extent (f::abstr-obj (f::scale ?!sc))) ;; the value of the measure, e.g. 5 lbs
		))

(Define-type ont::weigh
 :wordnet-sense-keys ("weigh%2:42:00" "librate%2:42:00")
    :parent ont::register
    :sem (f::situation (f::cause f::agentive) (f::trajectory -))
    )

;;; Temporary information-evidence node for "mean", while I am doing something to sort out the rest of the evidence node
;(define-type ont::information-evidence
;    :parent ont::evidence
;    :arguments
;    ((:required ont::formal (?ttype (f::information f::information-content)))
;     (:required ont::formal1 (?cttype (f::information f::information-content)))
;     ))

;; cognizer learns (from) some activity
(define-type ont::learn
 :wordnet-sense-keys ("learn%2:31:00" "larn%2:31:00" "acquire%2:31:00" "study%2:31:03" "learning%1:09:00")
    :parent ont::cogitation
    :arguments
    ((:optional ont::agent (f::phys-obj (f::intentional +))) ;; this would be a teacher
     (:optional ont::affected (f::phys-obj (f::intentional +))) ;; this would be a student
     (:required ont::formal ((? ftt f::situation f::abstr-obj))) ;; this would be study subject
;     (:optional ont::associated-information) ;; today we learned about birds
     (:optional ont::source ((? fts f::phys-obj f::situation))) ;; I learned this from a book/from hard experience
     ))

;; cognizer creates long-term memory
;; memorize
(define-type ONT::memorize
 :wordnet-sense-keys ("memorize%2:31:00" "memorise%2:31:00" "con%2:31:00" "learn%2:31:03")
 :parent ONT::learn
 )

;; FN
(define-type ont::fluidic-motion
 :wordnet-sense-keys ("course%2:38:00" "feed%2:38:04" "flow%2:38:00" "run%2:38:01" "flow%2:38:01" "flux%2:38:00" "flow%2:38:02" "pour%2:38:03" "flow%1:11:00" "flow%2:42:00" "flow%2:30:00" "flow%1:04:00")
    :parent ont::motion
    :sem (f::situation (f::trajectory +))
    :arguments ((:required ont::formal (f::phys-obj (f::form (? ff f::liquid f::gas f::wave))))
		))



;; FN
(define-type ont::hindering
 :wordnet-sense-keys ("hold_back%2:41:00" "keep_back%2:41:00" "restrain%2:41:01" "throttle%2:30:01" "confine%2:30:00" "bound%2:30:00" "limit%2:30:01" "trammel%2:30:00" "restrain%2:30:00" "restrict%2:30:00" "handicap%2:33:00" "hinder%2:33:00" "hamper%2:33:00"  "barricade%1:06:00" "obstruction%1:06:00" "crush%2:41:00" "disrupt%2:30:01"  "compromise%2:32:03" "hinder%2:41:01")
    :parent ont::inhibit-effect
 :comment "make it difficult for an effect or event to complete; obstruct an ongoing event"
    )

(define-type ONT::prevent
  :wordnet-sense-keys ("prevent%2:41:00" "prevent%2:41:01" "prevention%1:04:00" "keep%2:40:01")
 :parent ONT::inhibit-effect
 :comment "prevent an effect or event from taking place"
 )

(define-type ONT::withhold
  :wordnet-sense-keys ("withhold%2:40:00")
 :parent ONT::inhibit-effect
 )

(define-type ONT::downregulate
 :parent ONT::hindering
 )

(define-type ONT::deprive
 :wordnet-sense-keys ("deprive%2:40:01" "strip%2:40:03" "divest%2:40:01")
 :parent ONT::hindering
 )

(define-type ONT::delay
 :wordnet-sense-keys ("hold_off%2:42:00")
 :parent ONT::hindering
 )

(define-type ONT::Prohibit
    :wordnet-sense-keys ("abolish%2:41:00" "forbid%2:32:00")
    :parent ONT::inhibit-effect
 )

#|
;; deny, hold out, withhold
(define-type ONT::refuse
 :wordnet-sense-keys ("deny%2:40:00" "refuse%2:40:01" "deny%2:32:05" "reject%2:31:00" "refuse%2:40:00" "refuse%2:32:00" "refuse%2:42:04")
  :parent ont::inhibit-effect
 ;; refuse the purchase (sit); proposal (abstr); that package (phys-obj)
  :arguments ((:Required ONT::Effect ((? ro F::Phys-obj F::Situation F::abstr-obj)))
             )
 )
|#

(define-type ont::share-property
    :parent ont::event-of-state
     :wordnet-sense-keys ("share%2:40:02")
    :sem (f::situation (f::aspect f::static) (f::cause -))
    :arguments ((:required ont::neutral1) ;; this is an object or a group of object sharing the property
		))

(define-type ont::share
    :parent ont::agent-interaction
    :comment "two or more agents sharing something"
     :wordnet-sense-keys ("share%2:40:01" "share%2:40:00")
     :arguments ((:required ont::affected )
		))


;;
(define-type ont::undergo-action
    :wordnet-sense-keys ("go_down%2:42:00" "go_into%2:42:00" "photograph%2:42:00")
    :parent ont::event-of-undergoing-action
    :arguments ((:optional ont::neutral (f::situation))  ;; the action that is affecting the object
		)
    )

;; Added by myrosia for "differentiate", "factorise" etc.
(define-type ONT::function-calculation
 :parent ONT::calculation
 :arguments ((:REQUIRED ONT::formal (f::abstr-obj (f::measure-function f::term)))
             )
 )

;; Added for myrosia for "stick with the notation", which I judged similar to "adhere" in FrameNet
;; Should be used for other words like "adhere" etc.
;; FN compliance,
(define-type ONT::Compliance
 :wordnet-sense-keys ("celebrate%2:41:01" "conform%2:30:01" "keep%2:41:03" "keep%2:41:05" "obey%2:41:00" "observe%2:41:02" "observe%2:41:04")
    :parent ONT::event-of-action
    :sem (f::situation (f::cause f::agentive) (f::aspect f::dynamic))
    :arguments ((:optional ONT::Agent  ((? agt F::Phys-obj f::abstr-obj) (F::intentional +)))
		(:required ONT::Formal (F::abstr-obj)) ;; correspnords to norm/act (non-disambiguatable) no restrictions so far: stick with rules/notation/behavior
		
		))

(define-type ont::employment
 :parent ont::agent-interaction
 :arguments ((:REQUIRED ont::effect (F::Situation)) ;; job, service
             (:REQUIRED ONT::agent ((? ag F::phys-obj f::abstr-obj) (F::intentional +))) ;; employer
	     (:REQUIRED ONT::affected ((? th28 F::phys-obj f::abstr-obj) (F::intentional +))) ;; employee
             )
 )

;; employ, hire
(define-type ONT::employ
 :wordnet-sense-keys ("hire%2:41:00" "engage%2:41:01" "employ%2:41:00")
 :parent ONT::employment
 )

(define-type ont::retire
 :wordnet-sense-keys ("pension_off%2:41:00" "retire%2:41:01" "retire%2:41:03")
 :parent ont::employment
)

;(define-type ONT::fire-dismiss
;;; :wordnet-sense-keys (" ")
; :parent ONT::employment
; )

;; stretch  20120524 GUM change new type
;; this is the stative "I work for John"
(define-type ONT::work
 :wordnet-sense-keys ("do_work%2:41:00")
 :parent ont::event-of-action
 :arguments ((:optional ont::neutral))
 )

;; fire, lay off
(define-type ont::terminate
 :wordnet-sense-keys ("displace%2:41:04" "fire%2:41:00" "give_notice%2:41:00" "can%2:41:00" "dismiss%2:41:00" "give_the_axe%2:41:00" "send_away%2:41:00" "sack%2:41:00" "force_out%2:41:00" "give_the_sack%2:41:00" "terminate%2:41:01")
; :parent ont::event-of-causation ;; 20120529 GUM change new parent + args
 :parent ont::employment
 :arguments ((:REQUIRED ont::effect (F::Situation)) ;; job, service
             (:REQUIRED ONT::agent ((? ag F::phys-obj f::abstr-obj) (F::intentional +))) ;; employer
	     (:REQUIRED ONT::affected ((? th29 F::phys-obj f::abstr-obj) (F::intentional +))) ;; employee
             )
 )

(define-type ont::participate-attend
    :wordnet-sense-keys ("appear%2:41:03" "attend%2:42:00" "participate%2:41:00" "involvement%1:04:00" "stag%2:41:00")
    :parent ont::event-of-causation ;; 20120529 GUM change new parent + args
    :arguments ((:REQUIRED ONT::agent (F::phys-obj (F::intentional +)))
		(:REQUIRED ONT::neutral (F::situation (F::type ONT::gathering-event)))
	       )
 )



;; twitch, jerk, tremble
(define-type ONT::uncontrolled-body-motion
 :wordnet-sense-keys ("tremble%2:38:00" "move_involuntarily%2:29:00" "move_reflexively%2:29:00")
 :parent ont::body-movement
 :sem (F::Situation (F::Cause F::Force))
 )


;; stretch  20120523 GUM change new type
(define-type ONT::body-movement-place
 :wordnet-sense-keys ("poise%2:35:01")
    :comment "Verbs of posture that are with respect to some place"
  :parent ont::body-movement
 )

;; stretch  20120523 GUM change new type
(define-type ONT::straddle
 :parent ont::body-movement
 )


;; stretch  20120523 GUM change new type
(define-type ONT::stretch
 :parent ont::body-movement
 )


;; stretch  20120523 GUM change new type
(define-type ONT::body-movement-self
    :comment "Verbs of posture that can be independent of any location: e.g., bow is not with respect to a location, but to sit it must be somewhere"
 :parent ont::body-movement
 )


;(define-type ONT::Stative
; :parent ONT::EVENT-TYPE
; :sem (F::Situation (F::aspect F::Static))
;  :arguments ((:OPTIONAL ONT::OF)
;              (:OPTIONAL ONT::VAL)
;             )
; )

#|
;; so that
(define-type ONT::so-that
 :parent ONT::predicate
 :arguments ((:OPTIONAL ONT::OF)
	     (:OPTIONAL ONT::VAL)
             )
 )
|#

;; whereby
;; 20120502 :origin jr :comment gloss-variant
(define-type ONT::whereby
 :parent ONT::predicate
 :arguments ((:OPTIONAL ONT::FIGURE)
	     (:OPTIONAL ONT::GROUND)
             )
 )

;; infancy, childhood, adulthood
(define-type ONT::lifecycle-stage
 :parent ONT::event-type
 :arguments ((:OPTIONAL ONT::FIGURE (F::phys-obj (F::origin F::living)))
             )
 :wordnet-sense-keys ("time_of_life%1:28:00")
 )

(define-type ont::status
  :parent ont::situation-root
  :wordnet-sense-keys ("condition%1:26:00" "status%1:26:01" "state%1:26:02" "state_of_matter%1:26:00" "state%1:03:00"  "case%1:09:00")
 :arguments ((:OPTIONAL ONT::FIGURE)
             )
 )

#|
(define-type ont::financial-condition
  :parent ont::status
  :wordnet-sense-keys ("financial_condition%1:26:00")
 :arguments ((:OPTIONAL ONT::FIGURE)
             )
 )
|#
#|
(define-type ont::poverty
  :parent ont::financial-condition
  :wordnet-sense-keys ("poverty%1:26:00")
 :arguments ((:OPTIONAL ONT::FIGURE)
             )
  )
|#

;;; nauseous/sick/sore, chills, nausea, sickness
;;; e.g. He feels sick, Her feet are sore
;;;   other types have nouns, this type has adjectives. For now, keep them separate. 
;;;  Actually added chills, nausea & sickness too even though they are nouns but because one can feel them, 
;;;   WN has different sense keys for such uses and the illness type noun type use which still is under medical-disorders-and-conditions!
(define-type ONT::PHYSICAL-SENSATION
 :wordnet-sense-keys ("nauseous%3:00:00:ill:01" "nauseated%3:00:00:ill:01" "queasy%3:00:00:ill:01" "sickish%3:00:00:ill:01" "itch%2:39:00" "ache%2:39:01") 
 :parent ONT::PERCEPTION
 )

(define-type ONT::chill
 :parent ONT::physical-sensation
 :wordnet-sense-keys ("chill%1:26:01")
 )

#|
;;; general class for ingesting, eat, drink, take (drugs), ...              
;;; NB: figure out about feed.
(define-type ONT::consume
 :wordnet-sense-keys ("consume%2:34:00" "ingest%2:34:00" "take_in%2:34:00" "take%2:34:00" "have%2:34:00")
 :parent ONT::take-in
 :sem (F::Situation (:required (F::trajectory -))(:default (F::Cause F::agentive) (F::aspect F::dynamic) (F::time-span F::extended)))
 :arguments ((:REQUIRED ONT::Agent (F::Phys-obj (f::origin f::living)))
             ;;; Formal changed to comestible, although probably too strong
             ;;; form substance is also too strong.                                                                    
             (:REQUIRED ONT::Affected (F::Phys-obj (F::mobility F::movable) (F::form F::substance) (f::object-function f::comestible)))
             ;; This is eat with a spoon/fork etc.  
;             (:OPTIONAL ONT::Instrument (F::Phys-obj (F::mobility F::movable) (F::intentional -) (f::form f::solid-object) (f::information -)))
             ;;; Myrosia added accompaniment to account for frequent usages of "take/eat it with food/milk etc 
             ;;(:OPTIONAL ONT::Assoc-with (F::Phys-obj (F::Form F::substance) (F::mobility F::movable)))
             )
 )
|#

;; smoke (as in cigarettes, pipes)
(define-type ONT::smoking
    :wordnet-sense-keys ("smoke%2:34:00" "smoking%1:04:00")
     :arguments ((:REQUIRED ONT::Agent (F::Phys-obj (f::origin f::living) (f::intentional +))))
 :parent ONT::consume
 )

;; diet
(define-type ONT::dieting
 :wordnet-sense-keys ("abstain%2:34:00" "refrain%2:34:00" "desist%2:34:00")
 :parent ONT::activity
 :arguments ((:REQUIRED ONT::Agent (F::Phys-obj (f::origin f::living)))
 	     )
 )

;; implies motion, allows path phrases (trajectory +)
;; e.g. troll/drag the river, patrol the area, comb the beach, scan the area
(define-type ONT::Physical-scrutiny
 :wordnet-sense-keys ("inspect%2:38:00" "visit%2:38:01" "see%2:39:13" "examine%2:39:00" "check_into%2:31:00" "go_over%2:31:01" "check_over%2:31:00" "suss_out%2:31:00" "check_out%2:31:00" "look_into%2:31:00" "check_up_on%2:31:00" "check%2:31:00" "search%2:35:00" "seek%2:35:00" "look_for%2:35:00" "search%1:04:00")
 :parent ont::scrutiny
 :arguments ((:REQUIRED ONT::Formal ((? th30 f::phys-obj f::abstr-obj f::situation)))
             (:ESSENTIAL ONT::Agent (f::phys-obj  (f::origin (? org f::human f::non-human-animal)) (F::intentional +)))
	     (:ESSENTIAL ONT::LOCATION)
             )
 )

(define-type ont::kissing
 :wordnet-sense-keys ("snog%2:35:00" "kiss%2:35:00" "buss%2:35:00" "osculate%2:35:00")
  :parent ont::intentionally-act
  :sem (F::situation (:required (F::trajectory +))(:default (F::aspect F::dynamic)(F::time-span F::extended)))
  :arguments ((:required ont::agent (f::phys-obj (F::intentional +)))
	      (:essential ont::affected ((? th32 f::phys-obj)))
	      )
  )



#|
 (define-type ont::convey 
     :wordnet-sense-keys ("bring_on%2:39:00")
     :parent ont::communication
     )
|#

;; beat
(define-type ont::rhythmic-motion
  :wordnet-sense-keys ("beat%2:38:03")
  :parent ont::motion
  )


;; used to
;; the meetings used to drive them crazy
;; They used to dance every night
;; the ideas used to flow freely
(define-type ONT::habitual
 :parent ONT::aux
 :sem (F::Situation (F::Trajectory -))
 :arguments (;(:ESSENTIAL ONT::Effect (F::situation))
             (:REQUIRED ONT::agent ((? ag F::phys-obj F::abstr-obj))) ; (F::intentional +)))
	     (:ESSENTIAL ONT::formal (F::situation)) ;((? th33 F::phys-obj F::abstr-obj f::situation)))
             )
 :wordnet-sense-keys ("use%2:41:03")
 )

(define-type ONT::ARRIVE
 :wordnet-sense-keys ("come%2:38:04" "get%2:38:00" "arrive%2:38:00" "arrive_at%2:38:00")
 :parent ONT::MOTION-WRT-ANOTHER-OBJECT
 :comment "motion that ends in being located with another object"
 :sem (F::SITUATION (:required (F::Aspect F::Bounded)))
 :arguments ((:required ONT::agent (F::Phys-obj (F::type (? obf2 ont::information-function-object ont::phys-object))))
	     (:ESSENTIAL ONT::location (F::Phys-obj (F::Object-Function (? obf2 F::Place f::representation))))
             )
 )


; vacation
(define-type ont::vacation
  :parent ONT::event-defined-by-activity
  :wordnet-sense-keys ("vacation%2:42:00" "vacation%1:28:00")
  )

#| ;moved to ont::recurring-event
;; 20121019 changing type jr
(define-type ONT::holiday
    ;;:parent ONT::day-name
    :parent ont::vacation
  )
|#

(define-type ont::MEASURE
  :wordnet-sense-keys ("weigh%2:42:01")
  :parent ONT::event-of-state
  :arguments ((:essential ont::extent (f::abstr-obj (f::scale ?!sc)))
             )
  )




(define-type ONT::medical-disorders-and-conditions
 :wordnet-sense-keys ("disorder%1:26:03")
 :parent ONT::event-type
 :sem (F::situation ) ;;(F::container +))
 :arguments ((:OPTIONAL ONT::FIGURE (F::phys-obj (F::origin (? og2 f::human f::non-human-animal))))
             )
 )

;; symptom                                                                                                          
(define-type ONT::medical-symptom
 :wordnet-sense-keys ("symptom%1:26:00" "sign%1:26:00" "syndrome%1:26:00")
 :parent ONT::medical-disorders-and-conditions
 )

; muscle contraction
(define-type ont::muscle-contraction
 :parent ont::medical-symptom
 :wordnet-sense-keys ("contraction%1:04:01")
)

; sniffle
(define-type ont::sniffle
 :parent ont::medical-symptom
 :wordnet-sense-keys ("sniffle%1:04:00")
)

; tightness/constriction of a body part
(define-type ont::body-tightness
 :parent ont::medical-symptom
 :wordnet-sense-keys("tightness%1:09:00")
)

; for constipation                                                                                                  
(define-type ONT::constipation
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("constipation%1:26:00")
 )

; for cough                                                                                                         
(define-type ONT::cough
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("cough%1:26:00")
 )

; for diarrhea
(define-type ONT::diarrhea
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("diarrhea%1:26:00")
 )

; for dyspepsia                                                                                                     
(define-type ONT::dyspepsia
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("dyspepsia%1:26:00" "indigestion%1:26:00")
 )

(define-type ont::dyspnea
 :wordnet-sense-keys ("dyspnea%1:26:00" "dyspnoea%1:26:00" "shortness_of_breath%1:26:00" "sob%1:26:00")
 :parent ont::medical-symptom
 )

; for edema                                                                                                         
(define-type ONT::edema
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("edema%1:26:00")
 )

; for fever                                                                                                         
(define-type ONT::fever
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("fever%1:26:00" "febrility%1:26:00" "febricity%1:26:00" "pyrexia%1:26:00" "feverishness%1:26:00")
 )

; for heartburn                                                                                                     
(define-type ONT::heartburn
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("heartburn%1:26:00")
 )

; for hives                                                                                                         
(define-type ONT::hives
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("hives%1:26:00")
 )

; for hyperkalemia                                                                                                  
(define-type ONT::hyperkalemia
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("hyperkalemia%1:26:00")
 )

; for hyperventilation                                                                                              
(define-type ONT::hyperventilation
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("hyperventilation%1:04:00")
 )

; for hypoglycemia                                                                                                  
(define-type ONT::hypoglycemia
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("hypoglycemia%1:26:00")
 )

; for inflammation, redness, phlebitis                                                                              
(define-type ONT::inflammation
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("inflammation%1:26:00" "phlebitis%1:26:00" "redness%1:26:00")
 )

; for jaundice                                                                                                      
(define-type ONT::jaundice
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("jaundice%1:26:00")
 )

; for lightheadedness                                                                                               
(define-type ONT::lightheadedness
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("lightheadedness%1:26:00" "dizziness%1:26:00")
 )

; for nausea                                                                                                        
(define-type ONT::nausea
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("nausea%1:26:00")
 )

; for chill
;(define-type ONT::chill
; :parent ONT::medical-symptom
; :wordnet-sense-keys ("chill%1:26:01")
; )

; for nosebleed                                                                                                     
(define-type ONT::nosebleed
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("nosebleed%1:26:00")
 )

; for numbness                                                                                                      
(define-type ONT::numbness
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("numbness%1:26:00")
 )

; for pain                                                                                                          
(define-type ONT::pain
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("pain%1:26:00" "hurting%1:26:00" "pain_sensation%1:09:00" "painful_sensation%1:09:00" "soreness%1:26:00")
 )

; for backache                                                                                                      
(define-type ONT::backache
 :parent ONT::pain
 :wordnet-sense-keys ("backache%1:26:00")
 )

; for headache                                                                                                      
(define-type ONT::headache
 :parent ONT::pain
 :wordnet-sense-keys ("headache%1:26:00")
 )

; for stomachache                                                                                                   
(define-type ONT::stomachache
 :parent ONT::pain
 :wordnet-sense-keys ("stomachache%1:26:00")
 )

; for palpitation                                                                                                   
(define-type ONT::palpitation
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("palpitation%1:26:00")
 )

;; seizure                                                                                                          
(define-type ont::seizure
 :wordnet-sense-keys ("seizure%1:26:00")
 :parent ont::medical-symptom
 )

; for sneeze                                                                                                        
(define-type ONT::sneeze
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("sneeze%1:26:00")
 )

; for cramp, spasm                                                                                                  
(define-type ONT::spasm
 :parent ONT::medical-symptom
 :wordnet-sense-keys ("cramp%1:26:00" "spasm%1:26:00")
 )

;; condition                                                                                                        
(define-type ONT::medical-condition
 :wordnet-sense-keys ("condition%1:26:05" "malformation%1:26:00" "pathology%1:26:00")
 :parent ONT::medical-disorders-and-conditions
 )

;; coma
(define-type ont::coma
 :wordnet-sense-keys("coma%1:09:00")
 :parent ont::medical-condition
)

;; anesthesia                                                                                                       
(define-type ont::anesthesia
 :wordnet-sense-keys ("anesthesia%1:26:00")
 :parent ont::medical-condition
 )

;; angina                                                                                                           
(define-type ont::angina
 :wordnet-sense-keys ("angina%1:26:01")
 :parent ont::medical-condition
 )

;; pregnancy
(define-type ont::pregnancy
 :wordnet-sense-keys ("pregnancy%1:26:00")
 :parent ont::medical-condition
 )

;; disability
(define-type ont::disability
 :parent ont::medical-condition
 :wordnet-sense-keys ("disability%1:26:00")
)

;; stroke                                                                                                           
(define-type ont::stroke
 :wordnet-sense-keys ("stroke%1:26:00")
 :parent ont::medical-condition
 )

;; thrombosis                                                                                                       
(define-type ont::thrombosis
 :wordnet-sense-keys ("thrombosis%1:26:00")
 :parent ont::medical-condition
 )

;; bruise, contusion, bump                                                                                          
(define-type ont::injury
 :wordnet-sense-keys ("concussion%1:11:00" "injury%1:26:00" "hurt%1:26:00" "harm%1:26:00" "trauma%1:26:02" "bruise%1:26:00" "contusion%1:26:00" "bump%1:26:00")
  :parent ont::medical-disorders-and-conditions
 )

;; wound, lesion                                                                                                    
; bruise can come under physical-symptom too but WN defines it as an injury.                                        
(define-type ONT::wound
  :wordnet-sense-keys ("wound%1:26:00" "lesion%1:26:02" "sore%1:26:00")
  :parent ONT::injury
 )

;; sickness                                                                                                         
(define-type ONT::disease
 :wordnet-sense-keys ("disease%1:26:00" "ailment%1:26:00" "abnormality%1:26:00")
 :sem (F::situation (F::mobility f::movable)) ; movable: the disease has spread
 :parent ONT::medical-disorders-and-conditions
 )

; for AIDS                                                                                                          
(define-type ONT::acquired-immune-deficiency-syndrome
 :parent ONT::disease
 :wordnet-sense-keys ("aids%1:26:00" "acquired_immune_deficiency_syndrome%1:26:00")
 )

; for allergy                                                                                                       
(define-type ONT::allergy
 :parent ONT::disease
 :wordnet-sense-keys ("allergy%1:26:00")
 )

; for anemia                                                                                                        
(define-type ONT::anemia
 :parent ONT::disease
 :wordnet-sense-keys ("anemia%1:26:00")
 )

;; angina                                                                                                           
(define-type ont::angina-disease
 :wordnet-sense-keys ("angina%1:26:00")
 :parent ont::medical-symptom
 )

;; arteriosclerosis                                                                                                 
(define-type ont::arteriosclerosis
 :wordnet-sense-keys ("arteriosclerosis%1:26:00")
 :parent ont::disease
 )

(define-type ONT::arthritis
 :parent ONT::disease
 :wordnet-sense-keys ("arthritis%1:26:00")
 )

; for gout                                                                                                          
(define-type ONT::gout
 :parent ONT::arthritis
 :wordnet-sense-keys ("gout%1:26:00")
 )

; for osteoarthritis                                                                                                
(define-type ONT::osteoarthritis
 :parent ONT::arthritis
 :wordnet-sense-keys ("osteoarthritis%1:26:00")
 )

; for asthma                                                                                                        
(define-type ONT::breathing-disorder
 :parent ONT::disease
 :wordnet-sense-keys ("asthma%1:26:00" "respiratory_disorder%1:26:00")
 )

; for brain-disease                                                                                                 
(define-type ONT::brain-disease
 :parent ONT::disease
 :wordnet-sense-keys ("brain_disease%1:26:00")
 )

(define-type ONT::cancer
 :parent ONT::disease
 :wordnet-sense-keys ("cancer%1:26:00" "malignancy%1:26:00" "malignance%1:26:00" "carcinoma%1:26:00" "melanoma%1:26:00" "malignant_melanoma%1:26:00" "lymphoma%1:26:00" "leukemia%1:26:00" "leukaemia%1:26:00" "leucaemia%1:26:00" "cancer_of_the_blood%1:26:00" "sarcoma%1:26:00" "angiosarcoma%1:26:00" "myeloma%1:26:00")
 )

; for cardiovascular diseases etc                                                                                   
(define-type ONT::cardiovascular-disease
 :parent ONT::disease
 :wordnet-sense-keys ("cardiovascular_disease%1:26:00")
 )

; for aneurysm                                                                                                      
(define-type ONT::aneurysm
 :parent ONT::cardiovascular-disease
 :wordnet-sense-keys ("aneurysm%1:26:00")
 )

; for arrhythmia                                                                                                    
(define-type ONT::arrhythmia
 :parent ONT::cardiovascular-disease
 :wordnet-sense-keys ("arrhythmia%1:26:00" "tachycardia%1:26:00")
 )

; for heart attack                                                                                                  
(define-type ONT::heart-attack
 :parent ONT::cardiovascular-disease
 :wordnet-sense-keys ("heart_attack%1:26:00")
 )

; for high BP, hypertension                                                                                         
(define-type ONT::hypertension
 :parent ONT::cardiovascular-disease
 :wordnet-sense-keys ("hypertension%1:26:00")
 )

(define-type ONT::diabetes
 :parent ONT::disease
 :wordnet-sense-keys ("diabetes%1:26:00")
 )

;; ebola                                                                                                            
(define-type ONT::ebola
 :parent ONT::disease
 :wordnet-sense-keys ("ebola%1:26:00")
 )

;; epilepsy                                                                                                         
(define-type ONT::epilepsy
 :parent ONT::disease
 :wordnet-sense-keys ("epilepsy%1:26:00")
 )

;; flu                                                                                                              
(define-type ONT::flu
 :parent ONT::breathing-disorder
 :wordnet-sense-keys ("flu%1:26:00" "influenza%1:26:00" "grippe%1:26:00")
 )

;; infection                                                                                                        
(define-type ONT::infection
 :parent ONT::disease
 :wordnet-sense-keys ("infection%1:26:00")
 )

;; hepatitis, cirrhosis                                                                                             
;; but if we have this category, then liver-cancer can come under this category as well as under cancer.            
(define-type ONT::liver-disease
 :parent ONT::disease
 :wordnet-sense-keys ("liver_disease%1:26:00")
 )

; for osteoporosis                                                                                                  
(define-type ONT::osteoporosis
 :parent ONT::disease
 :wordnet-sense-keys ("osteoporosis%1:26:00")
 )

; for pancreatitis                                                                                                  
(define-type ONT::pancreatitis
 :parent ONT::disease
 :wordnet-sense-keys ("pancreatitis%1:26:00")
 )

; for pneuomnia                                                                                                     
(define-type ONT::pneumonia
 :parent ONT::breathing-disorder
 :wordnet-sense-keys ("pneumonia%1:26:00")
 )

; for STDs                                                                                                          
(define-type ONT::std
 :parent ONT::disease
 :wordnet-sense-keys ("sexually_transmitted_disease%1:26:00")
 )

;; stones, cholelithiasis (gall stones), kidney stones                                                              
(define-type ont::stones-disease
 :wordnet-sense-keys ("cholelithiasis%1:26:00" "gallstone%1:17:00" "kidney_stone%1:17:00")
 :parent ont::disease
 )

#|                                                                                                                  
;; cholelithiasis (gall stones)                                                                                     
(define-type ont::cholelithiasis
 :wordnet-sense-keys ("cholelithiasis%1:26:00" "gallstone%1:17:00")
 :parent ont::stones-disease
 )                                                                                                                  

;; kidney stones                                                                                                    
(define-type ont::kidney-stone
 :wordnet-sense-keys ("kidney_stone%1:17:00")
 :parent ont::stones-disease
 )
|#

; for tuberculosis
(define-type ONT::tuberculosis
 :parent ONT::disease
 :wordnet-sense-keys ("tb%1:26:00")
 )




;; mental illness, mental disorder, psychological disorder                                                          
(define-type ONT::mental-psychological-illness-or-disorder
 :wordnet-sense-keys ("mental_illness%1:26:00" "mental_disorder%1:26:00")
 :parent ONT::event-type
 )

;; addiction                                                                                                        
(define-type ont::addiction
 :wordnet-sense-keys ("addiction%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )

; for amnesia                                                                                                       
(define-type ONT::amnesia
 :parent ONT::mental-psychological-illness-or-disorder
 :wordnet-sense-keys ("amnesia%1:09:00")
 )

;; anorexia                                                                                                         
(define-type ont::eating-disorder
 :wordnet-sense-keys ("anorexia%1:26:00" "eating_disorder%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )

;; anxiety                                                                                                          
(define-type ont::anxiety
 :wordnet-sense-keys ("anxiety%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )

;; ataxia                                                                                                           
(define-type ont::nervous-disorder
 :wordnet-sense-keys ("ataxia%1:26:00" "nervous_disorder%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )


;; depression                                                                                                       
(define-type ont::depression
 :wordnet-sense-keys ("depression%1:26:03")
 :parent ont::mental-psychological-illness-or-disorder
 )

;; insanity                                                                                                         
(define-type ont::insanity
 :wordnet-sense-keys ("insanity%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )

;; mania                                                                                                            
(define-type ont::mania
 :wordnet-sense-keys ("mania%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )

;; phobia                                                                                                           
(define-type ont::phobia
 :wordnet-sense-keys ("phobia%1:26:00")
 :parent ont::mental-psychological-illness-or-disorder
 )



