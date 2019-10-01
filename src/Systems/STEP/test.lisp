;;;;
;;;; File: Systems/plot/test.lisp
;;;; Creator: George Ferguson
;;;; Created: Mon Mar 10 14:07:07 2008
;;;; Time-stamp: <Thu Oct 29 13:28:57 EDT 2015 jallen>
;;;;

(unless (find-package :trips)
  (load (make-pathname :directory '(:relative :up :up "config" "lisp")
		       :name "trips")))

;;;
;;; Load our TRIPS system
;;;
(load #!TRIPS"src;Systems;STEP;system")

;;;
;;; Load core testing code
;;;
(load #!TRIPS"src;Systems;core;test")

;;;
;;; In USER for convenience of testing
;;;
(in-package :common-lisp-user)

;;;
;;; Sample dialogues
;;;
(setf *sample-dialogues*
  '(
    ;; V 0.1  tests basic functionality
    ;; Send an email message (basically a macro, can be done just
    ;; monitoring and sending keystrokes)
    (story1 .
     ("There was a boy who had a crush on a girl. She had a secret though that she had never shared with the boy. She had a crush on him too but her secret needed to be told. She wasn't allowed to have a boyfriend so they had to remain friends."
      ))
    (story2 . 
     ("The new school year had started. She wanted to choose something uinque and mentally challenging. She ended up joining the fencing team."
      ))
    (story3 .
     ("To solve this problem she decided to change her name."
      ))
    (story4 .
     ("Jim rented a car to drive around in Paris. While sitting in his car, he saw how bicycles could solve his problem. He returned his car to the rental company, and rented a bike. He got exercise, and enjoyed his trip without stress."
      ))
    (wind-energy .
     ("Modern development of wind-energy technology and applications was well underway by the 1930s, when an estimated 600,000 windmills supplied rural areas with electricity and water-pumping services. Once broad-scale electricity distribution spread to farms and country towns, use of wind energy in the United States started to subside, but it picked up again after the U.S. oil shortage in the early 1970s. Over the past 30 years, research and development has fluctuated with federal government interest and tax incentives. In the mid-'80s, wind turbines had a typical maximum power rating of 150 kW. In 2006,  commercial, utility-scale turbines are commonly rated at over 1 MW and are available in up to 4 MW capacity."))

    ;; From a random Wikipedia article:
    ;; http://en.wikipedia.org/wiki/The_Haunted_Tank
    (the-haunted-tank .
     ("The ghost of General Stuart does not initially care for his assignment, but is impressed with the fighting spirit of Jeb and his crew. The ghost is further honored when Jeb flies a Confederate rather than a Union flag on his \"haunted\" tank. Jeb, however, is the only one who can see or hear the General. His crew thinks he is crazy, but continue to follow his leadership as he has solid tactical expertise (brought about through his consultations with the General, who usually gives him cryptic hints of future events) and rarely fails in his missions or loses crewmembers in the line of duty."))

    (text restaurant :text "Eating at a restaurant often requires phoning ahead to get reservations, because many of the better establishments are very busy.
Upon arriving at the restaurant, you need to inform the staff of your reservation and wait to be seated.
Once seated by your host, you will be provided menus to allow you to select appetizers, drinks and entrees.
Often bread, water or other light fare will be brought to your table before you order.
After you provide your waiter with the order, it may take a few minutes before the food starts coming out of the kitchen.
Usually, an appetizer, which could include soup or salad, is served first, along with the drinks.
After the first course is cleared away by the waiter, the entree arrives.
Your server will periodically check in to see if you like your food or need any drink refills.
Upon concluding the entree portion of the meal, the waiter will clear your table and bring out a desert menu.
Deserts include an array of sweet offerings, pastries, ice creams, etc. and an assortment of hot and cold beverages.
In some cases, diners will skip desert if they are too full. The final step of the dining experience is paying the bill.
It is customary to tip your servers, particularly if the service was good. A tip of 20% of the total bill is considered generous."
     :terms ((paragraph :terms ((sentence :text ((SPEECHACT V100376 SA_TELL :CONTENT V78767)))
				(sentence :text  ((SPEECHACT V100376 SA_TELL :CONTENT V78767)))))))

    ;; From a news story on PVC shower curtains found with Google News:
    ;; http://www.efluxmedia.com/news_PVC_Shower_Curtains_Hazardous_to_Your_Health_19026.html
    (pvc-shower-curtains .
     ("However, some scientists do not agree with this report, saying that while the curtain may indeed release toxic fumes for the first week or so after being unpacked, the very limited exposure that characterizes normal usage of the product cannot really harm anyone. People could avoid exposure to these fumes by airing the curtains for about a week bringing, this way, fume levels to acceptable levels even for long-term exposure."
      :gold-lf (
       ;; sentence 1
       (SPEECHACT V23482 SA_TELL :CONTENT V21466 :MODS (V21239))
       (F V21466 (:* RESPONSE AGREE) :AGENT V21778 :ASSOCIATED-INFORMATION
        V21607 :MODS (V25664)
	:TENSE pRES :NEGATION + :MODALITY (:* ONT::DO W::DO))
       (A V21778 (SET-OF V21260) :SIZE V21248)
       (A V21248 NUMBER :VALUE SOME)
       (KIND V21260 (:* PROFESSIONAL SCIENTIST))
       (THE V21607 (:* CHRONICLE REPORT) :CONTEXT-REL THIS)
       (F V21239 (:* CONJUNCT HOWEVER) :OF V23482)
       (F V25664 (:* REPORT-SPEECH SAYING) :OF V21466 :AGENT V21778 :THEME
        V42560)
       (F V25800 (:* QUALIFICATION WHILE) :VAL V26028 :OF V42560)
       (THE V25956 (:* COVERING CURTAIN))
       (F V26028 (:* RELEASING RELEASE) :THEME V26060 :AGENT V25956 :MODS
	(V26011 V26073 V26535)
	:TENSE PRES :MODALITY (:* ONT::POSSIBILITY W::MAY))
       (F V26011 (:* DEGREE-OF-BELIEF INDEED) :OF V26028)
       (BARE V26060 (:* SUBSTANCE FUMES) :MODS (V26058))
       (F V26058 (:* DOMAIN TOXIC) :OF V26060)
       (F V26073 (:* TIME-DURATION-REL FOR) :OF V26028 :VAL V26393)
       (THE V26393 (:* ONT::QUANTITY F::DURATION) :UNIT (:* TIME-UNIT WEEK) :SEQUENCE (NTH 1) :MODS (W6))
       (F W6 (:* QUALIFICATION APPROXIMATE) :OF V26393)
       (F V26535 (:* EVENT-TIME-REL AFTER) :OF V26028 :SIT-VAL W7)
       (KIND W7 (:* HAVE-PROPERTY BEING) :PROPERTY V26605)
       (F V26605 (:* REMOVE UNPACKED) :THEME V25956)
       (F V42560 (:* AFFECT HARM) :MODS (V25800 V42536) :THEME V42583 :CAUSE
        V42262
	:TENSE pRES :MODALITY (:* ONT::ABILITY W::CANNOT))
       (THE V42262 (:* EVENT EXPOSURE) :MODS (V42232 V42320))
       (F V42232 (:* SIZE-VAL LIMITED) :OF V42262 :MODS (V42224))
       (F V42224 (:* DEGREE-MODIFIER VERY) :OF V42232)
       (F V42320 (:* SITUATION-ROOT CHARACTERIZES) :THEME V42339 :AGENT V42262
        :TENSE PRES)
       (A V42339 (:* ACTION USAGE) :MODS (V42329) :OF V42494)
       (F V42329 (:* TYPICALITY-VAL NORMAL) :OF V42339)
       (THE V42494 (:* PRODUCT PRODUCT))
       (F V42536 (:* DEGREE-OF-BELIEF REALLY) :OF V42560)
       (PRO V42583 (:* PERSON ANYONE) :CONTEXT-REL ANYONE)
       ;; sentence 2
       (SPEECHACT V75400 SA_TELL :CONTENT V72070)
       (F V72070 (:* AVOIDING AVOID) :AGENT V73227 :THEME V72112 :MODS
	(V72193 V73036)
	:TENSE PRES :MODALITY (:* ONT::CONDITIONAL W::COULD))
       (A V73227 (SET-OF V71997))
       (KIND V71997 (:* PERSON PERSON))
       (BARE V72112 (:* ACTION EXPOSURE) :THEME V73493)
       (THE V73493 (SET-OF V72186))
       (KIND V72186 (:* SUBSTANCE FUMES))
       (F V72193 (:* MANNER BY) :OF V72070 :VAL V72302)
       (BARE V72302 (:* ACTION AIRING) :THEME V73491 :MODS (V72466))
       (THE V73491 (SET-OF V72445))
       (KIND V72445 (:* COVERING CURTAIN))
       (F V72466 (:* TIME-DURATION-REL FOR) :OF V72302 :VAL V73019)
       (A V73019 (:* TIME-UNIT WEEK) :MODS (V72626))
       (F V72626 (:* DOMAIN ABOUT) :OF V73019)
       (A V73036 (:* ACTION BRINGING) :OF V72070 :THEME V83075 :MODS
	(V82523 V82628 V82785))
       (BARE V82571 (:* SUBSTANCE FUME))
       (KIND V82592 (:* LEVEL LEVEL) :ASSOC-WITH V82571)
       (THE V82523 (:* RECIPE WAY) :OF V73036 :CONTEXT-REL THIS)
       (A V83075 (SET-OF V82592))
       (F V82628 (:* TO-LOC TO) :OF V73036 :VAL V83376)
       (A V83376 (SET-OF V82690))
       (KIND V82690 (:* LEVEL LEVEL) :MODS (V82681))
       (F V82681 (:* ACCEPTABILITY-VAL ACCEPTABLE) :INTENSITY MED :ORIENTATION
        POS :OF V82690)
       (F V82785 (:* PURPOSE FOR) :OF V73036 :MODS (V82727) :VAL V83007)
       (F V82727 (:* MODIFIER EVEN) :OF V82785)
       (BARE V83007 (:* ACTION EXPOSURE) :ASSOC-WITH W1)
       (KIND W1 (:* TIME-INTERVAL TERM) :MODS (V82942))
       (F V82942 (:* LINEAR-VAL LONG) :OF W1)
       )
      ))
    (yo .
     ("There is evidence of cultured milk products being produced as food for at least 4500 years. The earliest yoghurts were probably spontaneously fermented by wild bacteria living on the goat skin bags carried by the Bulgars (or Hunno-Bulgars), a nomadic people who began migrating into Europe in the second century AD and eventually settled in the Balkans at the end of the seventh century. Today, many different countries claim yoghurt as their own,[citation needed] yet there is no clear evidence as to where it was first discovered."
      :gold-lf (
      ;; sentence 1
       (BARE N17 (:* INFORMATION EVIDENCE) :OF N133)
       (A N115 (SET-OF N120))
       (KIND N120 (:* PRODUCT PRODUCT) :ASSOC-WITH N123)
       (BARE N123 (:* MILK MILK) :MODS (N126))
       (F N126 (:* DOMAIN CULTURED) :OF N123)
       (SPEECHACT N13 SA_TELL :CONTENT N14)
       (F N133 (:* CREATE PRODUCE) :MODS (N138 N139) :THEME N115)
       (F N138 (:* PREDICATE AS) :OF N133 :VAL N162)
       (F N139 (:* TIME-DURATION-REL FOR) :OF N133 :VAL N144)
       (F N14 (:* EXISTS BE) :TENSE PRES :THEME N17)
       (A N144 (:* ONT::QUANTITY F::DURATION) :UNIT (:* TIME-UNIT YEAR) :AMOUNT N147)
       (A N147 NUMBER :VALUE 4500 :MODS (N153))
       (F N153 (:* QMODIFIER MIN) :OF N147)
       (KIND N162 (:* FOOD FOOD))
      ;; sentence 2
       (F N210 (:* STATUS-VAL SPONTANEOUS) :OF N24)
       (THE N2100 (:* NATIONALITY HUNNO-BULGAR))
       (CONJUNCT N2101 OR :VAL N2100)
       (THE N291 (:* NATIONALITY BULGAR) :PARENTHETICAL N2101)
       (F N24 (:* TRANSFORMATION FERMENT) :MODS (N210 N213) :AGENT N246
	  :THEME N27)
       (F N213 (:* QUALIFICATION PROBABLY) :OF N24)
       (KIND N216 (:* FOOD YOGHURTS) :MODS (N219))
       (THE N27 (SET-OF N216))
       (F N219 (:* MAX-VAL EARLY) :GROUND N222 :FIGURE N216 :FUNCTN
	(:* SCHEDULED-TIME-MODIFIER EARLY))
       (IMPRO N222 REFERENTIAL-SEM)
       (SPEECHACT N23 SA_TELL :CONTENT N24)
       (BARE N241 (:* GROUP LIVING) :THEME N246 :MODS (N264))
       (KIND N246 (:* ORGANISM BACTERIA) :MODS (N241 N249))
       (F N249 (:* EMOTIONAL-PROPERTY-VAL WILD) :OF N246)
       (KIND N255 (:* BODY-PART SKIN) :OF N275)
       (THE N258 (SET-OF N278))
       (F N264 (:* SPATIAL-LOC ON) :VAL N258 :OF N241)
       (KIND N275 (:* ANIMAL GOAT))
       (KIND N278 (:* SMALL-CONTAINER BAG) :ASSOC-WITH N255 :MODS (N281))
       (F N281 (:* TRANSPORT CARRY) :THEME N278 :AGENT N291)
      ;; sentence 3
       (F N323 (:* START BEGIN) :EFFECT N38 :TENSE PAST :MODS (N3127)
	  :AGENT N311)
       (A N311 (SET-OF N317) :MODS (N354))
       (F N354 (:* CONJUNCT AND) :ARG N323 :ARG N361)
       (F N361 (:* DOMAIN SETTLED) :MODS (N358 N368 N3138) :AGENT N311
	  :TENSE PAST)
       (F N38 (:* MOVE MIGRATE) :AGENT N311 :MODS (N314))
       (THE N3127 (:* TIME-SPAN-REL IN) :OF N323 :VAL N3132)
       (THE N3132 TIME-LOC :ERA AD :CENTURY 2)
       (THE N3138 (:* TIME-CLOCK-REL AT) :OF N361 :VAL N383)
       (F N314 (:* TO-LOC INTO) :OF N38 :VAL N335)
       (THE N383 (:* TIME-POINT END) :INTERVAL N3150)
       (THE N3150 TIME-LOC :CENTURY 7)
       (KIND N317 (:* PERSON PERSON) :MODS (N320))
       (F N320 (:* DOMAIN NOMADIC) :OF N317)
       (THE N335 (:* GEOGRAPHICAL-REGION EUROPE) :NAME-OF (EUROPE))
       (F N358 (:* QUALIFICATION EVENTUALLY) :OF N361)
       (F N368 (:* SPATIAL-LOC IN) :OF N361 :VAL N377)
       (THE N377 (:* GEOGRAPHICAL-REGION BALKANS) :NAME-OF (BALKANS))
      ;; sentence 4
       (A N410 (SET-OF N425) :SIZE N422)
       (F N44 (:* APPROPRIATE CLAIM) :AGENT N410 :MODS (N413 N416)
	  :TENSE PRES :THEME N47)
       (F N413 (:* PREDICATE AS) :OF N44 :VAL N443)
       (F N416 (:* EVENT-TIME-REL TODAY) :OF N44 :VAL N454)
       (A N422 NUMBER :VALUE MANY)
       (KIND N425 (:* COUNTRY COUNTRY) :MODS (N431))
       (SPEECHACT N43 SA_TELL :CONTENT N44)
       (F N431 (:* SIMILARITY-VAL DIFFERENT) :THEME N425 :CO-THEME N434)
       (IMPRO N434 REFERENTIAL-SEM :RELATED-TO N431)
       (A N443 REFERENTIAL-SEM :MODS (N446) :ASSOC-WITH N449)
       (F N446 (:* OWN OWN))
       (PRO N449 (:* PERSON THEIR))
       (IMPRO N454 DATE-OBJECT :SUCHTHAT N416 :CONTEXT-REL TODAY)
       (BARE N47 (:* FOOD YOGHURT))
      ;; sentence 5
       (F N510 (:* EXISTS BE) :THEME N516 :TENSE PRES)
       (SPEECHACT N59 SA_TELL :CONTENT N510 :MODS (N519) :PARENTHETICAL N53)
       (BARE N516 (:* INFORMATION EVIDENCE) :MODS (N528 N531))
       (F N519 (:* CONTINUATION YET) :OF N59)
       (F N528 (:* STATUS-VAL CLEAR) :OF N516 :MODS (N539))
       (BARE N53 (:* ANNOTATION CITATION) :MODS (N54))
       (F N531 (:* ASSOCIATED-INFORMATION AS-TO) :OF N516 :VAL N546)
       (F N534 (:* BECOMING-AWARE DISCOVER) :AT-LOC N546 :THEME N554 
	  :MODS (N557) :TENSE PAST)
       (F N539 (:* DEGREE-MODIFIER NO) :OF N528)
       (F N54 (:* DOMAIN NEEDED) :OF N53)
       (WH-TERM N546 (:* SPATIAL-LOC WHERE) :SUCHTHAT N534)
       (PRO N554 (:* REFERENTIAL-SEM IT))
       (F N557 (:* SEQUENCE-POSITION FIRST) :OF N534)
       )
      ))
     (engine1 :text "After the piston reaches the lower limit of its travel, it begins to move upward. As this happens, the intake valve closes. The exhaust valve is also closed, so the cylinder is sealed. As the piston moves upward, the air/fuel mixture is compressed. On some small high compression engines, by the time the piston reaches the top of its travel, the mixture is compressed to as little as one-tenth its original volume. Thus, the compression of the air/fuel mixture increases the pressure in the cylinder. The compression process also creates the air/fuel mixture to increase in temperature." :terms
      ((paragraph :terms
       ((sentence :text "After the piston reaches the lower limit of its travel, it begins to move upward."  :uttnum 0 :terms
      ;; terms for sentence 1
       ((THE N110 (:* MANUFACTURED-OBJECT PISTON))
	(THE N1106 (:* EDGE LIMIT) :MODS (N1107) :MODS N17)
	(F N1107 (:* ASSOC-WITH OF) :OF N1106 :VAL N1112)
	(F N14 (:* REACH REACH) :THEME N110 :TENSE PRES :GOAL N113 :TO-LOC N1106)
	(THE N1112 (:* TRIP TRAVEL) :ASSOC-WITH N1115)
	(PRO N1115 (:* REFERENTIAL-SEM ITS) :COREF N110)
	(SPEECHACT N1125 SA_TELL :CONTENT N1126)
	(F N1126 (:* START BEGIN) :EFFECT N1132 :THEME N1135 :TENSE PRES :MODS (N113))
	(F N113 (:* EVENT-TIME-REL AFTER) :VAL N14 :OF N1126)
	(F N1132 (:* MOVE MOVE) :MODS (N1138) :THEME N1135)
	(PRO N1135 (:* REFERENTIAL-SEM IT) :COREF N110)
	(F N1138 (:* PREDICATE UPWARD) :OF N1132) (F N17 (:* MORE-VAL LOW) :FIGURE N1106 :FUNCTN N18)
	(F N18 (:* LINEAR-VAL LOW))))
      ;; terms for sentence 2
       (sentence :text "As this happens, the intake valve closes."  :uttnum 1 :terms
       ((SPEECHACT N2125 SA_TELL :CONTENT N216K)
	(PRO N213 (:* REFERENTIAL-SEM THIS))
	(F N216 (:* CLOSURE CLOSE) :MODS (N23) :THEME N217 :TENSE PRES)
	(F N27 (:* HAPPEN HAPPEN) :THEME N213 :TENSE PRES)
	(THE N217 (:* DEVICE VALVE) :ASSOC-WITH N220)
	(KIND N220 (:* PROCESS INTAKE))
	(F N23 (:* EVENT-TIME-REL AS) :OF N216 :SIT-VAL N27)))
      ;; terms for sentence 3
       (sentence :text "The exhaust valve is also closed, so the cylinder is sealed." :uttnum 2 :terms
       ((THE N310 (:* DEVICE VALVE) :ASSOC-WITH N3146)
	(F N34 (:* HAVE-PROPERTY BE) :THEME N310 :TENSE PRES :MODS (N313) :MODS N3122 :PROPERTY N37)
	(F N3122 (:* REASON SO) :VAL N3127 :OF N34)
	(F N3127 (:* HAVE-PROPERTY BE) :PROPERTY N3133 :THEME N3138 :TENSE PRES)
	(F N313 (:* ADDITIVE ALSO) :OF N34)
	(F N3133 (:* DOMAIN SEALED) :OF N3138)
	(THE N3138 (:* MANUFACTURED-OBJECT CYLINDER))
	(KIND N3146 (:* SUBSTANCE EXHAUST))
	(SPEECHACT N33 SA_TELL)
	(F N37 (:* OPENNESS-VAL CLOSED) :OF N310)))
      ;; terms for sentence 4
       (sentence :text  "As the piston moves upward, the air/fuel mixture is compressed." :uttnum 3 :terms
       ((THE N413 (:* MANUFACTURED-OBJECT PISTON))
	(F N47 (:* MOVE MOVE) :THEME N413 :MODS (N426))
	(KIND N420 (:* LIQUID-SUBSTANCE FUEL))
	(KIND N423 (:* NATURAL-SUBSTANCE AIR))
	(THE N438 (:* SUBSTANCE MIXTURE) :ASSOC-WITH N423 :ASSOC-WITH N420)
	(F N426 (:* DIRECTION UPWARD) :OF N47)
	(F N43 (:* EVENT-TIME-REL AS) :OF N432 :SIT-VAL N47)
	(SPEECHACT N431 SA_TELL :CONTENT N432)
	(F N432 (:* ADJUST COMPRESS) :THEME N438 :MODS (N43) :TENSE PRES :PASSIVE +)))
      ;; terms for sentence 5
       (sentence :text  "On some small high compression engines, by the time the piston reaches the top of its travel, the mixture is compressed to as little as one-tenth its original volume." :uttnum 4 :terms
       ((F N5109 (:* QMODIFIER AS-LITTLE-AS) :FIGURE N5154 :GROUND N5126)
	(THE N5126 (:* VOLUME VOLUME) :MODS (N5130) :OF N5165 :VALUE N5109)
	(A N513 NUMBER :VALUE SOME)
	(F N5130 (:* SEQUENCE-VAL ORIGINAL) :OF N5126)
	(A N57 (SET-OF N516) :SIZE N513)
	(THE N594 (:* SUBSTANCE MIXTURE) :COREF V332501)
	(THE N5154 REFERENTIAL-SEM :NUMBER 1/10)
	(KIND N516 (:* ENGINE ENGINE) :ASSOC-WITH N522 :MODS (N525))
	(F N591 (:* ADJUST COMPRESS) :RESULT N5126 :MODS N548 :THEME N594)
	(PRO N5165 (:* REFERENTIAL-SEM ITS))
	(PRO N578 (:* REFERENTIAL-SEM ITS) :COREF N545)
	(THE N553 (:* TIME-INTERVAL TIME) :MODS N539)
	(KIND N522 (:* PROCESS COMPRESSION) :MODS (N528))
	(F N525 (:* SIZE-VAL SMALL) :OF N516)
	(F N528 (:* INTENSITY-VAL HIGH) :OF N522)
	(F N53 (:* ASSOCIATED-INFORMATION ON) :VAL N591 :OF N57)
	(F N539 (:* REACH REACH) :TO-LOC N542 :THEME N545 :TENSE PRES)
	(THE N542 (:* OBJECT-DEPENDENT-LOCATION TOP) :OF N575)
	(THE N545 (:* MANUFACTURED-OBJECT PISTON))
	(F N548 (:* EVENT-TIME-REL BY) :OF N591 :VAL N553)
	(THE N575 (:* TRIP TRAVEL) :ASSOC-WITH N578)))
       (SPEECHACT N590 SA_TELL :CONTENT N591)
      ;; terms for sentence 6
      (sentence :text  "Thus, the compression of the air/fuel mixture increases the pressure in the cylinder." :uttnum 5 :terms
       ((F N68 (:* ASSOC-WITH OF) :OF N67 :VAL N641)
	(KIND N613 (:* NATURAL-SUBSTANCE AIR))
	(SPEECHACT N619 SA_TELL :CONTENT N620)
	(F N620 (:* ADJUST INCREASE) :THEME N623 :CAUSE N67 :TENSE PRES)
	(THE N623 (:* PRESSURE PRESSURE) :MODS N647)
	(F N63 (:* CONJUNCT THUS) :OF N619)
	(THE N641 (:* SUBSTANCE MIXTURE) :ASSOC-WITH N613 :ASSOC-WITH N658)
	(F N647 (:* SPATIAL-LOC IN) :VAL N651 :OF N623)
	(THE N651 (:* MANUFACTURED-OBJECT CYLINDER))
	(KIND N658 (:* LIQUID-SUBSTANCE FUEL))
	(THE N67 (:* PROCESS COMPRESSION) :MODS (N68))))
      ;; terms for sentence 7
       (sentence :text "The compression process also creates the air/fuel mixture to increase in temperature." :uttnum 6 :terms
        ((F N710 (:* CREATE CREATE) :THEME N711 :MODS (N714) :MODS (N725) :CAUSE N73 :TENSE PRES)
	 (THE N711 (:* SUBSTANCE MIXTURE) :ASSOC-WITH N719 :ASSOC-WITH N722)
	 (F N714 (:* ADDITIVE ALSO) :OF N710)
	 (KIND N719 (:* LIQUID-SUBSTANCE FUEL))
	 (KIND N722 (:* NATURAL-SUBSTANCE AIR))
	 (F N725 (:* PURPOSE TO) :OF N710 :VAL N729)
	 (F N729 (:* ADJUST INCREASE) :CORRELATE N740 :THEME N711)
	 (THE N73 (:* PROCESS PROCESS) :OF N74)
	 (THE N74 (:* PROCESS COMPRESSION) :OF N711)
	 (BARE N740 (:* TEMPERATURE TEMPERATURE) :OF N729)))
      ) ; sentence list
     )) ;paragraph list
      ) ; engine1
     (engine-text-2 .
    ("All internal combustion engines must have a means of ignition to promote combustion. Most engines use either an electrical or a compression heating ignition system. Electrical ignition systems generally rely on a lead-acid battery and an induction coil to provide a high voltage electrical spark to ignite the air-fuel mix in the engine's cylinders. This battery can be recharged during operation using an alternator driven by the engine. Compression heating ignition systems, such as diesel engines and HCCI engines, rely on the heat created in the air by compression in the engine's cylinders to ignite the fuel."
     ))
     ;; from Wikipedia
    (hamas .
	   ("Hamas was created in 1987 by Sheikh Ahmed Yassin of the Gaza wing of the Muslim Brotherhood at the beginning of the First Intifada. Its military wing is known for numerous suicide bombings and other attacks[2] directed against Israeli civilians and Israeli security forces. Hamas runs extensive social services [3] and has gained popularity in Palestinian society by establishing hospitals, education systems, libraries and other services[4] throughout the West Bank and Gaza Strip.[3] Hamas' charter calls for the destruction of the State of Israel and its replacement with a Palestinian Islamic state in the area that is now Israel, the West Bank, and the Gaza Strip.[5]"
	    :gold-lf (
	     ;; sentence 1
	     (F N149 (:* TIME-CLOCK-REL AT) :OF N17 :VAL N154)
	     (F N111 (:* TIME-SPAN-REL IN) :OF N17 :VAL N122)
	     (F N17 (:* CREATE CREATE) :MODS (N111) :TENSE PAST :PASSIVE +
		:THEME N13 :AGENT N18)
	     (THE N122 TIME-LOC :YEAR 1987)
	     (THE N18 PERSON :NAME-OF (SHEIKH AHMED_YASSIN) :MODS N170)
	     (THE N13 ORGANIZATION :NAME-OF (HAMAS))
	     (F N142 (:* ASSOC-WITH OF) :VAL N197 :VAL N174)
	     (THE N154 (:* TIME-POINT BEGINNING) :ACTION N157)
	     (THE N157 (:* ACTION INTIFADA) :SEQUENCE (NTH 1))
	     (F N170 (:* ASSOC-WITH OF) :OF N18 :VAL N174)
	     (THE N174 (:* HUMAN-GROUP-UNIT WING) :ASSOC-WITH N184 :MODS N142)
	     (THE N184 GEOGRAPHIC-REGION :NAME-OF (GAZA))
	     (THE N197 ORGANIZATION :NAME-OF (MUSLIM BROTHERHOOD))
	     ;; sentence 2
	     (F N210 (:* REASON FOR) :OF N24 :VAL N240)
	     (F N2101 (:* CONTRA AGAINST) :VAL N297 :OF N261)
	     (THE N2107 GEOGRAPHIC-REGION :NAME-OF (ISRAELI))
	     (F N24 (:* FAMILIAR KNOW) :MODS (N210) :TENSE PRES :PASSIVE +
		:THEME N27)
	     (THE N297 (SET-OF N2128) :MEMBERS (N2121 N284))
	     (KIND N285 (:* HUMAN-GROUP-UNIT FORCE) :ASSOC-WITH N2107
		   :ASSOC-WITH N288)
	     (A N2121 (SET-OF N277))
	     (KIND N277 (:* PERSON CIVILIANS) :ASSOC-WITH N278)
	     (KIND N2128 ROOT)
	     (PRO N222 (:* REFERENTIAL-SEM ITS) :COREF N13)
	     (F N219 (:* DOMAIN MILITARY) :OF N27)
	     (THE N27 (:* HUMAN-GROUP-UNIT WING) :MODS (N219) :ASSOC-POSS N222)
	     (SPEECHACT N23 SA_TELL :CONTENT N24)
	     (A N244 (SET-OF N245) :SIZE N235)
	     (A N235 ONT::NUMBER :VALUE SEVERAL)
	     (A N245 (:* ACTION BOMBINGS) :ASSOC-WITH N232)
	     (BARE N232 (:* ACTION SUICIDE))
	     (THE N240 (SET-OF N247) :MEMBERS (N241 N244)
		  :PARENTHETICAL N289)
	     (A N241 (SET-OF N250))
	     (KIND N247 ROOT)
	     (KIND N250 (:* EVENT ATTACK) :MODS (N253))
	     (F N253 (:* IDENTITY-VAL OTHER) :THEME N250)
	     (F N261 (:* GUIDING DIRECT) :THEME N240 :TENSE PAST :MODS N2101)
	     (THE N289 REFERENTIAL-SEM :NUMBER 2)
	     (THE N278 GEOGRAPHIC-REGION :NAME-OF (ISRAELI))
	     (A N284 (SET-OF N285))
	     (KIND N288 (:* DOMAIN SECURITY))
	     ;; sentence 3
	     (F N38 (:* ACQUIRE GAIN) :THEME N39 :MODS (N312) :TENSE PRES 
	      :PERF + :AGENT N344)
	     (A N393 (SET-OF N399))
	     (KIND N3102 (:* FUNCTION-OBJECT EDUCATION))
	     (KIND N399 RECIPE :ASSOC-WITH N3102)
	     (KIND N3105 (:* REFERENCE-WORK LIBRARY))
	     (A N390 (SET-OF N3105))
	     (F N3108 (:* IDENTITY-VAL OTHER) :THEME N387)
	     (A N387 (:* FUNCTION-OBJECT SERVICE) :MODS (N3108))
	     (THE N386 (SET-OF N396) :MEMBERS (N335 N387 N390 N393)
	      :PARENTHETICAL N3115)
	     (THE N3115 REFERENTIAL-SEM :NUMBER 4)
	     (F N3119 (:* SPATIAL-LOC THROUGHOUT) :OF N341 :VAL N3123)
	     (F N312 (:* SITUATED-IN IN) :OF N38 :VAL N329)
	     (THE N3123 (SET-OF N3130) :MEMBERS (N3124 N3127)
	      :PARENTHETICAL N3151)
	     (THE N3124 GEOGRAPHIC-REGION :NAME-OF (GAZA_STRIP))
	     (THE N3127 (:* SHORE BANK) :MODS (N3133))
	     (KIND N3130 ROOT)
	     (F N3133 (:* MAP-LOCATION-VAL WEST) :OF N3127)
	     (BARE N341 (:* ESTABLISH ESTABLISH) :AGENT N344 :THEME N386
	      :MODS N3119)
	     (THE N3151 REFERENTIAL-SEM :NUMBER 3)
	     (SPEECHACT N3159 SA_TELL :CONTENT (S-CONJOINED))
	     (:OPERATOR AND :S N351 :S N38)
	     (THE N323 GEOGRAPHIC-REGION :NAME-OF (PALESTINIAN))
	     (BARE N329 (:* GROUP SOCIETY) :MODS (N330) :ASSOC-WITH N323)
	     (THE N33 REFERENTIAL-SEM :NUMBER 3)
	     (F N330 (:* MANNER BY) :OF N329 :VAL N341)
	     (A N335 (SET-OF N338))
	     (KIND N338 (:* PUBLIC-SERVICE-FACILITY HOSPITAL))
	     (THE N344 ORGANIZATION :NAME-OF (HAMAS))
	     (A N351 (:* EXECUTE RUNS) :AGENT N344 :THEME N359)
	     (F N352 (:* SIZE-VAL EXTENSIVE) :OF N359)
	     (A N359 (:* FUNCTION-OBJECT SERVICE) :MODS N352 :MODS N369
	      :PARENTHETICAL N33)
	     (F N369 (:* ATTRIBUTE SOCIAL))
	     (BARE N39 (:* ATTRIBUTE POPULARITY))
	     (KIND N396 ROOT)
	     ;; sentence 4
	     (F N491 (:* IN-RELATION BE) :TENSE PRES :MODS N497)
	     (THE N494 GEOGRAPHIC-REGION :NAME-OF (ISRAEL))
	     (F N418 (:* COMMUNICATION CALL) :THEME N47 :TENSE PRES
	      :ASSOCIATED-INFORMATION N4116)
	     (THE N437 (:* STATE STATE) :MODS (N427))
	     (THE N4116 (SET-OF N4117) :MEMBERS (N432 N455))
	     (KIND N4117 ROOT)
	     (THE N48 ORGANIZATION :NAME-OF (HAMAS))
	     (PRO N459 (:* REFERENTIAL-SEM ITS) :COREF N437)
	     (A N481 (:* STATE STATE) :ASSOC-WITH N477 :MODS (N482))
	     (THE N477 REFERENTIAL-SEM :MODS N470 :NAME-OF (ISLAMIC))
	     (F N497 (:* EVENT-TIME-REL NOW) :OF N491 :VAL N4138)
	     (THE N487 (:* LOCATION AREA) :MODS N491)
	     (THE N4138 (SET-OF N4139) :MEMBERS (N494 N4147 N4160)
	      :PARENTHETICAL N4166)
	     (KIND N4139 GEOGRAPHIC-REGION)
	     (THE N4147 (:* SHORE BANK) :MODS (N4153))
	     (F N4153 (:* MAP-LOCATION-VAL WEST) :OF N4147)
	     (THE N4160 GEOGRAPHIC-REGION :NAME-OF (GAZA_STRIP))
	     (THE N4166 REFERENTIAL-SEM :NUMBER 5)
	     (F N424 (:* ASSOC-WITH OF) :OF N432 :VAL N437)
	     (THE N432 (:* EVENT DESTRUCTION) :MODS (N424))
	     (F N427 (:* ASSOC-WITH OF) :OF N437 :VAL N445)
	     (SPEECHACT N43 SA_TELL :CONTENT N418)
	     (THE N445 GEOGRAPHIC-REGION :NAME-OF (ISRAEL))
	     (THE N455 (:* REPLACEMENT REPLACEMENT) :CO-THEME N481 :THEME N459)
	     (THE N47 (:* COMMUNICATION CHARTER) :ASSOC-WITH N48)
	     (THE N470 REFERENTIAL-SEM :NAME-OF (PALESTINIAN))
	     (F N482 (:* SPATIAL-LOC IN) :OF N481 :VAL N487)
	     )
	    ))
    (test pete-1 :text "The power cycle consists of adiabatic compression.")
    (test pete-2 :text "During the engine's power stroke, the compressed air/fuel mixture is ignited and the resulting pressure of burning gases pushes the piston down in the cylinder.")
    (test pete-3 :text "In a gasoline engine, the fuel in a cylinder is ignited by a spark plug, and the exploding gases push a piston that powers the drive shaft.")
    (test pete-4 :text "When the piston reaches the top of its stroke, the spark plug emits a spark to ignite the gasoline. The gasoline charge in the cylinder explodes, driving the piston down.")
    (test pete-5 :text "The spark plug ignites the compressed gas causing it to explode, which forces the piston down.")
    (test pete-6 :text "The spark plug then fires and the compressed mixture explodes. This explosion drives the piston downwards in what is called the power stroke.")
    (test pete-7 :text "As soon as the piston is at the highest point of its stroke, the air/fuel mixture is as compressed as possible, the spark plug ignites a spark and the mixture undergoes a controlled explosion. The amount of force exerted by the explosion immediately pushes the piston down to the lowest part of its stroke.")
    (text step1 :text "An object is thrown with a horizontal speed of 20 m/s from a cliff that is 125 m high. The object falls for the height of the cliff. If air resistance is negligible, how long does it take the object to fall to the ground? What is the duration of the fall?" :terms
      ((paragraph :terms
        ((sentence :text "An object is thrown with a horizontal speed of 20 m/s from a cliff that is 125 m high." :uttnum 0 :terms
	  ((F N14 (:* CAUSE-TO-MOVE THROW) :TENSE PRES :MODS (N113 N133) :THEME N17)
	   (F N113 (:* ASSOC-WITH WITH) :OF N14 :VAL N117)
	   (A N117 (:* RATE SPEED) :OF N118 :VAL N120 :ASSOC-WITH N123)
	   (IMPRO N118 ONT::REFERENTIAL-SEM :FILLS-ROLE
		  (:* ONT::RATE W::SPEED) :ROLE-VALUE-OF N117)
	   (VALUE N120 FREQUENCY :REPEATS N129 :OVER-PERIOD (:* TIME-UNIT SECOND))
	   (KIND N123 (:* RELATION HORIZONTAL))
	   (A N129 (:* ONT::QUANTITY F::LINEAR-S) :UNIT (:* LENGTH-UNIT METER) :AMOUNT 20)
	   (SPEECHACT N13 SA_TELL :CONTENT N14)
	   (F N133 (:* FROM-LOC FROM) :OF N14 :VAL N137)
	   (A N137 (:* PHYS-OBJECT CLIFF) :MODS (N140))
	   (F N140 (:* HAVE-PROPERTY BE) :PROPERTY N143 :THEME N137 :TENSE PRES)
	   (F N143 (:* LINEAR-VAL HIGH) :IS N151 :OF N137)
	   (A N151  (:* ONT::QUANTITY F::LINEAR-S) :UNIT (:* LENGTH-UNIT METER) :AMOUNT 125)
	   (A N17 (:* PHYS-OBJECT OBJECT))
	   ))
	 (sentence :text "The object falls for the height of the cliff." :uttnum 1 :terms
	  ((F N27 (:* SPATIAL-DISTANCE-REL FOR) :OF N23 :VAL N212)
	   (THE N212 (:* LINEAR-D HEIGHT) :OF N215)
	   (THE N215 (:* PHYS-OBJECT CLIFF) :COREF N137)
	   (SPEECHACT N222 SA_TELL :CONTENT N23)
	   (THE N24 (:* PHYS-OBJECT OBJECT) :COREF N17)
	   (F N23 (:* MOVE FALL) :THEME N24  :TENSE PRES :MODS (N27))
	   ))
	 (sentence :text "If air resistance is negligible, how long does it take the object to fall to the ground?" :uttnum 2 :terms
	  ((F N34 (:* HAVE-PROPERTY BE) :TENSE PRES :PROPERTY N316
	    :THEME N37)
	   (KIND N313 (:* NATURAL-SUBSTANCE AIR))
	   (BARE N37 (:* PHYS-MEASURE-DOMAIN RESISTANCE) :ASSOC-WITH N313)
	   (F N316 (:* DOMAIN NEGLIGIBLE) :OF N37)
	   (F N320 (:* TAKE-TIME TAKE) :THEME N321 :AFFECTED N332 :DURATION N328 :TENSE PRES
	      :MODALITY (:* ONT::DO W::DO) :MODS (N344))
	   (F N321 (:* MOVE FALL) :THEME N332 :MODS (N353))
	   (WH-TERM N328 (:* DURATION HOW-LONG)  :CONTEXT-REL (HOW LONG))
	   (SPEECHACT N33 SA_WH-QUESTION :FOCUS N328 :CONTENT N320)
	   (THE N332 (:* PHYS-OBJECT OBJECT) :COREF N17)
	   (F N344 (:* POS-CONDITION IF) :OF N320 :VAL N34)
	   (F N353 (:* TO-LOC TO) :OF N321 :VAL N356)
	   (THE N356 (:* GEO-FORMATION GROUND))
	   ))
	 (sentence :text "What is the duration of the fall?" :uttnum 3 :terms
	  ((F N43 (:* IN-RELATION BE) :TENSE PRES :CO-THEME N44 :THEME N47)
	   (WH-TERM N47 (:* REFERENTIAL-SEM WHAT) :CONTEXT-REL WHAT)
	   (THE N416 (:* EVENT FALL))
	   (THE N44 (:* DURATION DURATION) :OF N416)
	   (SPEECHACT N419 SA_WH-QUESTION :FOCUS N47 :CONTENT N43)
	   ))
	 ))))
    (text step2 :text "Cervical cancer is caused by a virus. That has been known for some time and it has led to a vaccine that seems to prevent it. Researchers have been looking for other cancers that may be caused by viruses." :terms
      ((paragraph :terms
        ((sentence :text "Cervical cancer is caused by a virus." :uttnum 0 :terms
	  ((BARE N110 (:* ILLNESS CANCER) :MODS (N119))
	   (F N14 (:* CAUSE CAUSE) :EFFECT N110 :CAUSE N113 :TENSE PRES)
	   (A N113 (:* HARMFUL-AGENCY VIRUS))
	   (F N119 (:* DOMAIN CERVICAL) :OF N110)
	   (SPEECHACT N13 SA_TELL :CONTENT N14)
	   ))
         (sentence :text "That has been known for some time and it has led to a vaccine that seems to prevent it." :uttnum 1 :terms
	  ((F N24 (:* FAMILIAR KNOW) :TENSE PRES :PERF + :MODS (N216)
	     :THEME N27)
	   (F N216 (:* TIME-DURATION-VAL FOR) :OF N24 :VAL N220)
	   (A N220 (:* ONT::QUANTITY F::DURATION) :UNIT (:* ONT::TIME-UNIT TIME) :AMOUNT w::INDEFINITE)
	   (SPEECHACT N23 SA_TELL :CONTENT N261)
	   (F N261 S-CONJOINED :ITEM0 N24 :ITEM1 N233 :OPERATOR AND)
	   (F N233 (:* CAUSE LEAD) :TENSE PRES :PERF + :CAUSE N236
	      :EFFECT N246)
	   (PRO N236 (:* REFERENTIAL-SEM IT) :COREF N14)
	   (A N246 (:* SUBSTANCE VACCINE) :MODS (N249))
	   (F N249 (:* APPEARS-TO-HAVE-PROPERTY SEEM) :EFFECT N252 :THEME N246
	      :TENSE PRES)
	   (F N252 (:* HINDERING PREVENT) :CO-THEME N260 :THEME N246)
	   (PRO N260 (:* REFERENTIAL-SEM IT) :COREF N110)
	   (PRO N27 (:* REFERENTIAL-SEM THAT) :COREF N14)
	   ))
         (sentence :text "Researchers have been looking for other cancers that may be caused by viruses." :uttnum 2 :terms
	  ((F N34 (:* FIND LOOK-FOR) :TENSE PRES :PROGR + :PERF + :THEME N343 :AGENT N37)
	   (KIND N316 (:* PROFESSIONAL RESEARCHER))
	   (A N37 (SET-OF N316))
	   (F N320 (:* CAUSE CAUSE) :CAUSE N329 :TENSE PRES :MODALITY
	    (:* ONT::POSSIBILITY W::MAY) :EFFECT N343)
	   (A N329 (SET-OF N354))
	   (SPEECHACT N33 SA_TELL :CONTENT N34)
	   (A N343 (SET-OF N346))
	   (KIND N346 (:* ILLNESS CANCER) :MODS (N349 N320))
	   (F N349 (:* IDENTITY-VAL OTHER) :THEME N346)
	   (KIND N354 (:* HARMFUL-AGENCY VIRUS))
	   ))
	 ))))
    (text step3 :text "John went into a restaurant. There was a table in the corner. The waiter took the order. The atmosphere was warm and friendly. He began to read his book." :terms
      ((paragraph :terms
	((sentence :text "John went into a restaurant." :uttnum 0 :terms
	  ((SPEECHACT V36896 SA_TELL :CONTENT V28770)
	   (F V28770 (:* MOVE GO) :AGENT V28691 :MODS (V29112) :TENSE PAST)
	   (THE V28691 PERSON :NAME-OF (JOHN))
	   (F V29112 (:* TO-LOC INTO) :OF V28770 :VAL V29632)
	   (A V29632 (:* RESTAURANT RESTAURANT))
	   ))
	 (sentence :text "There was a table in the corner." :uttnum 1 :terms
	  ((SPEECHACT V51081 SA_TELL :CONTENT V39327)
	   (F V39327 (:* EXISTS BE) :THEME V39893 :TENSE PAST)
	   (PRO V39289 EXPLETIVE)
	   (A V39893 (:* FURNITURE TABLE) :MODS (V39927))
	   (F V39927 (:* SPATIAL-LOC IN) :OF V39893 :VAL V40586)
	   (THE V40586 (:* CORNER CORNER))
	   ))
	 (sentence :text "The waiter took the order." :uttnum 2 :terms
	  ((SPEECHACT V61544 SA_TELL :CONTENT V54275)
	   (F V54275 (:* ACQUIRE TAKE) :AGENT W1 :THEME V54812 :TENSE PAST)
	   (THE W1 (:* PROFESSIONAL WAITER))
	   (THE V54812 (:* ORDER ORDER))
	   ))
	 (sentence :text "The atmosphere was warm and friendly." :uttnum 3 :terms
	  ((SPEECHACT V67955 SA_TELL :CONTENT V62535)
	   (F V62535 (:* HAVE-PROPERTY BE) :PROPERTY V64295 :THEME V62521
							    :TENSE PAST)
	   (THE V62521 (:* SETTING ATMOSPHERE))
	   (F V64295 AND :MEMBERS (V62606 V62732))
	   (F V62606 (:* social-interaction-VAL WARM) :OF V62521)
	   (F V62732 (:* social-interaction-VAL FRIENDLY) :OF V62521)
	   ))
	 (sentence :text "He began to read his book." :uttnum 4 :terms
	  ((SPEECHACT V81893 SA_TELL :CONTENT V71839)
	   (F V71839 (:* START BEGIN) :EFFECT V72057 :AGENT V71827
	    :TENSE PAST)
	   (PRO V71827 (:* PERSON HE) :COREF V28691)
	   (F V72057 (:* READ READ) :AGENT V71827 :THEME V72177)
	   (THE V72177 (:* BOOK BOOK) :ASSOC-POSS V72165)
	   (PRO V72165 (:* PERSON HIS) :COREF V28691)
	   ))
	 ))))
    (text step4 :text "The first school for the training of leader dogs in the country is going to be created in Mortagua and will train 22 leader dogs per year.  In Mortagua, Joao Pedro Fonseca and Marta Gomes coordinate the project that seven people develop in this school.  They visited several similar places in England and in France, and two future trainers are already doing internship in one of the French Schools. The communitarian funding ensures the operation of the school until 1999. We would like our school to work similarly to the French ones, which live from donations, from the merchandising and even from the raffles that children sell in school." :terms
      ((paragraph :terms
        ((sentence :text "The first school for the training of leader dogs in the country is going to be created in Mortagua and will train 22 leader dogs per year." :uttnum 0 :terms
	  ((A N1100 (:* QUANTITY DURATION) :UNIT (:* TIME-INTERVAL YEAR))
	   (F N195 (:* FREQUENCY PER) :PERIOD N1100 :OF N150)
	   (THE N13 (:* ACADEMIC-INSTITUTION SCHOOL) :MODS (N17)
	     :SEQUENCE (NTH 1))
	   (F N137 (:* CREATE CREATE) :MODALITY (:* GOING-TO GOING-TO) :THEME N13
	     :TENSE PRES :PROGR + :MODS (N159))
	   (F N1109 (:* CONJUNCTION AND) :ARG N137 :ARG N150)
	   (THE N111 (:* ACTION TRAINING) :OF N119)
	   (F N150 (:* TRANSFER-INFORMATION TRAIN) :AGENT N13 :ADDRESSEE N188
	      :TENSE FUT :MODALITY (:* FUTURE WILL) :MODS (N195))
	   (F N17 (:* PURPOSE FOR) :VAL N111 :OF N13)
	   (A N119 (SET-OF N122))
	   (KIND N122 (:* ANIMAL DOG) :ASSOC-WITH N125 :MODS (N128))
	   (KIND N125 (:* SPECIALIST LEADER))
	   (F N128 (:* SPATIAL-LOC IN) :OF N122 :VAL N133)
	   (THE N133 (:* COUNTRY COUNTRY))
	   (SPEECHACT N136 SA_TELL :CONTENT N1109)
	   (F N159 (:* SPATIAL-LOC IN) :OF N137 :VAL N176)
	   (THE N176 GEOGRAPHIC-REGION :NAME-OF (MORTAGUA))
	   (A N188 (SET-OF N189) :SIZE 22)
	   (KIND N189 (:* ANIMAL DOG) :ASSOC-WITH N192)
	   (KIND N192 (:* SPECIALIST LEADER))
	   ))
	 (sentence :text "In Mortagua, Joao Pedro Fonseca and Marta Gomes coordinate the project that seven people develop in this school." :uttnum 1 :terms
	  ((THE N210 (SET-OF N236) :MEMBERS (N230 N233))
	   (F N24 (:* COORDINATING COORDINATE) :AGENT N210 :MODS (N213)
	      :TENSE PRES :THEME N27)
	   (F N213 (:* SPATIAL-LOC IN) :OF N24 :VAL N221)
	   (THE N221 GEOGRAPHIC-REGION :NAME-OF (MORTAGUA) :COREF N176)
	   (SPEECHACT N23 SA_TELL :CONTENT N24)
	   (THE N230 PERSON :NAME-OF (MARTA_GOMES))
	   (THE N233 PERSON :NAME-OF (JOAO_PEDRO_FONSECA))
	   (KIND N236 PERSON)
	   (F N246 (:* GROW DEVELOP) :AGENT N252 :MODS (N255) :TENSE PRES
	      :THEME N27)
	   (A N252 (SET-OF N272) :SIZE 7)
	   (F N255 (:* DELIMIT WITHIN) :OF N246 :VAL N277)
	   (THE N27 (:* OBJECTIVE PROJECT) :MODS (N246))
	   (KIND N272 (:* PERSON PERSON))
	   (THE N277 (:* ACADEMIC-INSTITUTION SCHOOL) :CONTEXT-REL THIS :COREF N13)
	   ))
	 (sentence :text "They visited several similar places in England and in France, and two future trainers are already doing internship in one of the French Schools." :uttnum 2 :terms
	  ((PRO N310 (SET-OF N363) :CONTEXT-REL THEY)
	   (F N34 (:* SPEND-TIME VISIT) :AGENT N310 :TENSE PAST :THEME N37)
	   (A N316 NUMBER :VALUE SEVERAL)
	   (A N37 (SET-OF N319) :SIZE N316)
	   (KIND N319 (:* PLACE PLACE) :MODS (N325 N328))
	   (F N325 (:* SIMILARITY-VAL SIMILAR) :CO-THEME N331 :THEME N319)
	   (F N328 AND :MEMBERS (N338 N341))
	   (SPEECHACT N33 SA_TELL :CONTENT N34)
	   (IMPRO N331 REFERENTIAL-SEM :RELATED-TO N325)
	   (F N338 (:* SPATIAL-LOC IN) :OF N319 :VAL N346)
	   (F N341 (:* SPATIAL-LOC IN) :OF N319 :VAL N354)
	   (THE N346 GEOGRAPHIC-REGION :NAME-OF (ENGLAND))
	   (THE N354 GEOGRAPHIC-REGION :NAME-OF (FRANCE))
	   (KIND N363 (:* REFERENTIAL-SEM THEY))
	   (SPEECHACT N411 SA_TELL :CONTENT N412 :MODS (N43))
	   (F N412 (:* EXECUTE DO) :THEME N415 :AGENT N418 :PROGR + :MODS (N421)
	      :TENSE PRES)
	   (BARE N415 (:* ACTION INTERNSHIP) :MODS (N440))
	   (A N418 (SET-OF N427) :SIZE 2)
	   (F N421 (:* TEMPORAL-LOCATION ALREADY) :OF N412)
	   (KIND N427 (:* PERSON TRAINERS) :MODS (N430))
	   (F N43 (:* CONJUNCT AND) :OF N411)
	   (F N430 (:* DOMAIN FUTURE) :OF N427)
	   (F N440 (:* SPATIAL-LOC IN) :OF N415 :VAL N457)
	   (A N445 (:* ACADEMIC-INSTITUTION SCHOOL) :MODS (N463))
	   (A N457 (:* REFERENTIAL-SEM ONE) :MEMBER-OF N458)
	   (THE N458 (SET-OF N445))
	   (F N463 (:* NATIONALITY-VAL FRENCH) :OF N445)
	   ))
	 (sentence :text "The communitarian funding ensures the operation of the school until 1999." :uttnum 3 :terms
	  ((SPEECHACT N5311 SA_TELL :CONTENT N528)
	   (THE N513 (:* ACADEMIC-INSTITUTION SCHOOL) :COREF N13)
	   (F N58 (:* EVENT-TIME-REL UNTIL) :OF N54 :VAL N521)
	   (THE N521 TIME-LOC :YEAR 1999)
	   (F N528 (:* CAUSE-MAKE ENSURE) :EFFECT N54 :CAUSE N53)
	   (THE N53 (:* ACCOUNT FUNDING) :ASSOC-WITH N533)
	   (KIND N533 (:* DOMAIN COMMUNITARIAN))
	   (THE N54 (:* FUNCTION OPERATION) :THEME N513 :MODS (N58))
	   ))
	 (sentence :text "We would like our school to work similarly to the French ones, which live from donations, from the merchandising and even from the raffles that children sell in school." :uttnum 4 :terms
	  ((THE N610 (:* ACADEMIC-INSTITUTION SCHOOL) :ASSOC-WITH N628 :COREF N13)
	   (F N662 (:* MODIFIER EVEN) :OF N664)
	   (F N664 (:* SOURCE FROM) :MODS (N662) :OF N651 :VAL N686)
	   (KIND N639 (:* REFERENTIAL-SEM ONE) :MODS (N651 N642))
	   (F N651 (:* DOMAIN LIVE) :THEME N639 :MODS (N653 N664 N655))
	   (F N64 (:* EXPERIENCER-EMOTION LIKE) :THEME N610 :EXPERIENCER N613
	      :TENSE PRES :MODALITY (:* ONT::CONDITIONAL W::WOULD)
	      :ACTION N67)
	   (PRO N613 (SET-OF N625) :CONTEXT-REL WE)
	   (KIND N625 (:* PERSON WE))
	   (PRO N628 (:* PERSON OUR))
	   (SPEECHACT N63 SA_TELL :CONTENT N64)
	   (F N67 (:* FUNCTION WORK) :AGENT N610 :MODS (N633))
	   (F N633 (:* PREDICATE SIMILARLY) :OF N67 :VAL N638)
	   (THE N638 (SET-OF N639))
	   (F N642 (:* NATIONALITY-VAL FRENCH) :OF N639)
	   (F N653 (:* SOURCE FROM) :OF N651 :VAL N683)
	   (A N654 (:* ACTION DONATION) :MODS (N655))
	   (F N655 (:* SOURCE FROM) :VAL N663 :OF N651)
	   (A N683 (SET-OF N654))
	   (THE N663 (:* ACTION MERCHANDISING))
	   (F N665 (:* ACTION SELL) :AGENT N666 :MODS (N669) :THEME N686)
	   (THE N666 (SET-OF N691))
	   (F N669 (:* SITUATED-IN IN) :OF N665 :VAL N674)
	   (KIND N674 (:* ACADEMIC-INSTITUTION SCHOOL))
	   (THE N686 (:* ACTION RAFFLE) :MODS (N665))
	   (KIND N691 (:* CHILD CHILDREN))
	   ))
	 ))))
   (text step5 :text "As the 3 guns of Turret 2 were being loaded, a crewman who was operating the center gun yelled into the phone, \"I have a problem here. I am not ready yet.\"  Then the propellant exploded. When the gun crew was killed they were crouching unnaturally, which suggested that they knew that an explosion would happen. The propellant that was used was made from nitrocellulose chunks that were produced during World War II and were repackaged in 1987 in bags that were made in 1945. Initially it was suspected that this storage might have reduced the powder's stability." :terms
     ((paragraph :terms
       ((sentence :uttnum 0 :text "As the 3 guns of Turret 2 were being loaded, a crewman who was operating the center gun yelled into the phone, \"I have a problem here. I am not ready yet.\"" :terms
         ((F N110 (:* EVENT-TIME-REL AS) :OF N154 :SIT-VAL N14)
	  (F N159 (:* TO-LOC INTO) :VAL N161 :OF N154)
	  (F N145 (:* MANIPULATE OPERATE) :THEME N153 :AGENT N144 :TENSE PAST :PROGR +)
	  (F N154 (:* REPORT-SPEECH YELL) :MODS (N110 N159) :THEME N186
	   :TENSE PAST :AGENT N144)
	  (paragraph :terms
	    ((F N186 SA-SEQ :ITEM0 N13 :ITEM1 N1115)
	     (sentence :uttnum 0.1 :text "I have a problem here." :terms
	       ((PRO N174 (:* PERSON I) :COREF N144)
		(SPEECHACT N13 SA_TELL :CONTENT N165)
		(F N165 (:* HAVE HAVE) :THEME N171 :AFFECTED N174
		 :MODS (N177) :TENSE PRES)
		(A N171 (:* PROBLEM PROBLEM))
		(F N177 (:* SPATIAL-LOC HERE) :OF N165 :VAL N185)
		(IMPRO N185 LOCATION :SUCHTHAT N177 :CONTEXT-REL HERE)
		))
	     (sentence :uttnum 0.2 :text "I am not ready yet." :terms
	       ((SPEECHACT N1115 SA_TELL :CONTENT N1116)
		(F N1116 (:* HAVE-PROPERTY BE) :PROPERTY N17
		 :THEME N1121 :MODS (N1124) :TENSE PRES :NEGATION +)
		(PRO N1121 (:* PERSON I) :COREF N144)
		(F N1124 (:* CONTINUATION YET) :OF N1116)
		(F N17 (:* AVAILABILITY-VAL READY) :OF N1121)
		))
	     ))
	  (F N14 (:* FILL-CONTAINER LOAD) :TENSE PAST :PROGR + :THEME N121)
	  (KIND N116 (:* LOCATION-VAL CENTER))
	  (THE N153 (:* WEAPON GUN) :ASSOC-WITH N116)
	  (THE N121 (SET-OF N127) :SIZE N124)
	  (A N124 NUMBER :VALUE 3)
	  (KIND N127 (:* WEAPON GUN) :MODS (N133))
	  (F N133 (:* ASSOC-WITH OF) :OF N127 :VAL N138)
	  (THE N138 GEOGRAPHIC-REGION :NAME-OF (TURRET_2))
	  (A N144 (:* PERSON CREWMAN) :MODS (N145))
	  (THE N161 (:* DEVICE PHONE))
	  (SPEECHACT N164 SA_TELL :CONTENT N154)
	  ))
	(sentence :uttnum 1 :text "Then the propellant exploded." :terms
	  ((F N28 (:* change-state EXPLODE) :THEME N27 :TENSE PAST)
	   (SPEECHACT N220 SA_TELL :CONTENT N28 :MODS (N23))
	   (F N23 (:* CONJUNCT THEN) :OF N220)
	   (THE N27 (:* SUBSTANCE PROPELLANT))
	   ))
	(sentence :uttnum 2 :text "When the gun crew was killed they were crouching unnaturally, which suggested that they knew that an explosion would happen." :terms
	  ((THE N310 (:* SOCIAL-GROUP CREW) :ASSOC-WITH N331)
	   (F N342 (:* BODY-MOVEMENT CROUCH) :AGENT N345
	    :MODS (N348 N321) :TENSE PAST :PROGR +)
	   (F N375 (:* SUGGEST SUGGEST) :associated-information N34 :THEME N342
	    :TENSE PAST)
	   (PRO N390 (SET-OF N328) :COREF N310 :context-rel they)
	   (F N321 (:* EVENT-TIME-REL WHEN) :OF N342 :SIT-VAL N334)
	   (F N334 (:* DESTROY KILL) :THEME N310 :TENSE PAST)
	   (KIND N328 (:* REFERENTIAL-SEM THEY))
	   (KIND N331 (:* WEAPON GUN))
	   (F N387 (:* HAPPEN HAPPEN) :TENSE PRES
	    :MODALITY (:* ONT::CONDITIONAL W::WOULD) :THEME N398)
	   (F N34 (:* KNOW KNOW) :THEME N387 :COGNIZER N390 :TENSE PAST)
	   (SPEECHACT N341 SA_TELL :CONTENT N378)
	   (PRO N345 (SET-OF N357) :COREF N310 :context-rel they)
	   (F N348 (:* NATURAL-VAL UNNATURAL) :OF N342)
	   (KIND N357 (:* REFERENTIAL-SEM THEY))
	   (F N378 (:* CONJUNCT WHICH) :of N342 :val N375)
	   (A N398 (:* change-state EXPLOSION))
	   ))
        (sentence :uttnum 3 :text "The propellant that was used was made from nitrocellulose chunks that were produced during World War II and were repackaged in 1987 in bags that were made in 1945." :terms
	  ((THE N410 (:* SUBSTANCE PROPELLANT) :MODS (N416))
	   (F N496 (:* CREATE MAKE) :MODS (N499) :THEME N493 :TENSE PAST)
	   (F N499 (:* EVENT-TIME-REL IN) :OF N496 :VAL N4109)
	   (THE N4109 TIME-LOC :YEAR 1945)
	   (F N44 (:* CREATE MAKE) :THEME N410 :TENSE PAST
	    :COMPONENT N436)
	   (KIND N442 (:* PART CHUNK) :ASSOC-WITH N426 :MODS (N4122))
	   (F N4117 (:* EVENT-TIME-REL IN) :OF N466 :VAL N469)
	   (F N4122 S-CONJOINED :ITEM0 N445 :ITEM1 N466 :OPERATOR AND)
	   (F N466 (:* FILL-CONTAINER REPACKAGE) :THEME N436 :MODS (N4117 N486)
	    :TENSE PAST)
	   (F N416 (:* USE USE) :THEME N410 :TENSE PAST)
	   (BARE N426 (:* SUBSTANCE NITROCELLULOSE))
	   (SPEECHACT N43 SA_TELL :CONTENT N44)
	   (A N436 (SET-OF N442))
	   (F N445 (:* CREATE PRODUCE) :MODS (N448) :THEME N436
	    :TENSE PAST)
	   (F N448 (:* EVENT-TIME-REL DURING) :OF N445 :VAL N458)
	   (THE N458 REFERENTIAL-SEM :NAME-OF (WORLD_WAR_II))
	   (THE N469 TIME-LOC :YEAR 1987)
	   (F N486 (:* TO-LOC IN) :OF N466 :VAL N490)
	   (A N490 (SET-OF N493))
	   (KIND N493 (:* SMALL-CONTAINER BAG) :MODS (N496))
	   ))
        (sentence :uttnum 4 :text "Initially it was suspected that this storage might have reduced the powder's stability." :terms
	  ((F N57 (:* SEQUENCE-POSITION INITIALLY) :OF N53)
	   (F N512 (:* BELIEVE SUSPECTED) :TENSE PAST
	    :THEME N522)
	   (F N522 (:* ADJUST REDUCE) :CAUSE N525 :TENSE PRES :MODALITY
	    (:* ONT::POSSIBILITY MIGHT) :PERF + :THEME N545)
	   (THE N525 (:* REPOSITORY STORAGE) :CONTEXT-REL THIS)
	   (SPEECHACT N53 SA_TELL :CONTENT N512)
	   (THE N540 (:* SUBSTANCE POWDER))
	   (THE N545 (:* NON-MEASURE-ORDERED-DOMAIN STABILITY) :ASSOC-POSS N540)
	   ))
	))))
    
    (text step6 :text "Amid the tightly packed row houses of North Philadelphia, a pioneering urban farm is providing fresh local food for a community that often lacks it, and making money in the process. Greensgrow, a one-acre plot of raised beds and greenhouses on the site of a former steel-galvanizing factory, is turning a profit by selling its own vegetables and herbs as well as a range of produce from local growers, and by running a nursery selling plants and seedlings. The farm earned about $10,000 on revenue of $450,000 in 2007, and hopes to make a profit of 5 percent on $650,000 in revenue in this, its 10th year, so it can open another operation elsewhere in Philadelphia." :terms
      ((paragraph :terms
        ((sentence :text "Amid the tightly packed row houses of North Philadelphia, a pioneering urban farm is providing fresh local food for a community that often lacks it, and making money in the process." :uttnum 0 :terms
	  ((F W1 (:* APPROXIMATE-AT-LOC AMID) :VAL V46905 :OF V468736)
	   (F V468736 (:* CONJUNCT AND) :MODS (W1) :MEMBERS (V56086 V468826))
	   (F V28551 (:* BINDING-VAL TIGHT) :OF V28570)
	   (F V28570 (:* FILL-CONTAINER PACK) :MODS (V28551) :THEME V28701)
	   (THE V46905 (SET-OF V28701))
	   (KIND V28701 (:* LODGING HOUSE) :ASSOC-WITH V28671 :MODS (V28728 V28570))
	   (KIND V28671 (:* SHAPE-OBJECT ROW))
	   (F V28728 (:* ASSOC-WITH OF) :OF V28701 :VAL V28862)
	   (THE V28862 GEOGRAPHIC-REGION :NAME-OF (NORTH_PHILADELPHIA))
	   (F V56086 (:* GIVING PROVIDE) :THEME V56198 :CAUSE V55990
	      :RECIPIENT V56918 :TENSE PRES :PROGR +)
	   (A V55990 (:* organization FARM) :MODS (V55976 W2))
	   (F V55976 (:* URBAN-VAL URBAN) :OF V55990)
	   (F W2 (:* NOVELTY-VAL PIONEERING) :OF V55990)
	   (BARE V56198 (:* FOOD FOOD) :MODS (V56183 V56162))
	   (F V56162 (:* AGE-VAL FRESH) :OF V56198)
	   (F V56183 (:* DISTANCE-VAL LOCAL) :CO-THEME V56918 :THEME V56198)
	   (A V56918 (:* DISTRICT COMMUNITY) :MODS (V57028) :COREF V28862)
	   (F V57028 (:* LACKING LACK) :THEME V57042 :AFFECTED V56918 :MODS (V57006)
	    :TENSE PRES)
	   (F V57006 (:* FREQUENCY OFTEN) :OF V57028)
	   (PRO V57042 (:* REFERENTIAL-SEM IT) :COREF V56198)
	   (SPEECHACT V267007 SA_TELL :CONTENT V468736)
	   (F V468826 (:* EARNING MAKE) :AGENT V55990 :THEME V468948
	      :MODS (V468980))
	   (BARE V468948 (:* MONEY MONEY))
	   (F V468980 (:* SITUATED-IN IN) :OF V468826 :VAL V469643)
	   (THE V469643 (:* PROCESS PROCESS))
	   ))
	 (sentence :text "Greensgrow, a one-acre plot of raised beds and greenhouses on the site of a former steel-galvanizing factory, is turning a profit by selling its own vegetables and herbs as well as a range of produce from local growers, and by running a nursery selling plants and seedlings." :uttnum 1 :terms
	  ((THE V511406 GEOGRAPHIC-REGION :COREF V55990 :NAME-OF (GREENSGROW)
	    :MODS (V597073))
	   (F W6 ASSOC-WITH :VAL V511923 :OF V597073)
	   (A V511923 (:* ONT::QUANTITY F::LINEAR-S) :UNIT (:* AREA-UNIT ACRE) :AMOUNT 1)
	   (F V522905 AND :MEMBERS (V519928 W4))
	   (F V511990 (:* ASSOC-WITH OF) :OF V597073 :VAL V522905)
	   (A V597073 (:* LOCATION PLOT) :MODS (V511990 W6 V512183))
	   (A V519928 (SET-OF V512048))
	   (KIND V512048 (:* LOCATION BED) :MODS (V512020))
	   (F V512020 (:* MOVE RAISE) :THEME V512048)
	   (A W4 (SET-OF W3))
	   (KIND W3 (:* STRUCTURE GREENHOUSE))
	   (F V512183 (:* SPATIAL-LOC ON) :OF V597073 :VAL V512560)
	   (THE V512560 (:* LOCATION SITE) :OF V513187)
	   (A V513187 (:* PRODUCTION-FACILITY FACTORY) :ASSOC-WITH V513166 :MODS
	    (V513118))
	   (KIND V513166 (:* TRANSFORMATION GALVANIZE) :THEME V513138)
	   (KIND V513138 (:* MATERIAL STEEL))
	   (F V513118 (:* SEQUENCE-VAL FORMER) :OF V513187)
	   (SPEECHACT V736288 SA_TELL :CONTENT V632859)
	   (F V632859 (:* CAUSE-MAKE TURN) :CAUSE V511406 :TENSE PRES
	     :PROGR + :THEME V662913 :MODS (V1231392))
	   (A V662913 (:* VALUE-COST PROFIT))
	   (F V633574 (:* MANNER BY) :OF V632859 :VAL V633729)
	   (KIND V633729 (:* COMMERCE-SELL SELL) :TENSE PRES :PROGR + :AGENT V511406
		 :THEME V641039)
	   (THE V641039 (SET-OF W14) :MEMBERS (W8 W11)
	     :MODS (V633757 V633887) :ASSOC-WITH V633750)
	   (KIND W14 FOOD)
	   (THE W8 (SET-OF W7))
	   (KIND W7 (:* VEGETABLE VEGETABLE))
	   (THE W11 (SET-OF W12))
	   (KIND W12 (:* SPICES-HERBS HERB))
	   (PRO V633750 (:* REFERENTIAL-SEM ITS) :COREF V511406)
	   (F V633757 (:* OWN OWN) :GROUND V637426 :FIGURE V641039)
	   (IMPRO V637426 REFERENTIAL-SEM :RELATED-TO V633757)
	   (F V633887 (:* ADDITIVE AS-WELL-AS) :OF V641039 :VAL V635681)
	   (A V635681 (:* RANGE RANGE) :MODS (V635694))
	   (F V635694 (:* ASSOC-WITH OF) :OF V635681 :VAL W9)
	   (BARE W9 (:* PRODUCE PRODUCE) :MODS (V635744))
	   (F V635744 (:* SOURCE-LOC FROM) :OF W9 :VAL V640709)
	   (A V640709 (SET-OF W13))
	   (KIND W13 (:* PERSON-RELN GROWER) :MODS (V635783))
	   (F V635783 (:* DISTANCE-VAL LOCAL) :CO-THEME V636120 :THEME W13)
	   (IMPRO V636120 REFERENTIAL-SEM :RELATED-TO V635783)
	   (F V1231392 AND :MEMBERS (V633574 V1231486))
	   (F V1231486 (:* MANNER BY) :OF V632859 :VAL V1231643)
	   (KIND V1231643 (:* MANAGING RUN) :THEME V1242995)
	   (A V1242995 (:* FACILITY NURSERY) :MODS (V1232219))
	   (F V1232219 (:* COMMERCE-SELL SELL) :AGENT V1242995 :THEME V1232277)
	   (A V1232277 SET :MEMBERS (V1233124 W15))
	   (A V1233124 (SET-OF V1232241))
	   (KIND V1232241 (:* PLANT PLANT))
	   (A W15 (SET-OF W16))
	   (KIND W16 (:* PLANT SEEDLING))
	   ))
	 (sentence :text "The farm earned about $10,000 on revenue of $450,000 in 2007, and hopes to make a profit of 5 percent on $650,000 in revenue in this, its 10th year, so it can open another operation elsewhere in Philadelphia." :uttnum 2 :terms
	  ((SPEECHACT V2067491 SA_TELL :CONTENT V1429849)
	   (THE V1394289 (:* organization FARM) :COREF V55990)
	   (F V1394300 (:* EARNING EARN) :AGENT V1394289 :THEME V1394449 :MODS
	    (V1394462 V1394782))
	   (A V1394449 (:* ONT::QUANTITY F::MONEY) :UNIT (:* MONEY-UNIT DOLLAR) :AMOUNT 10000 :MODS (V1394326))
	   (F V1394326 (:* QMODIFIER APPROXIMATE) :OF V1394449)
	   (F V1394462 (:* ASSOC-WITH ON) :VAL W18 :OF V1394300)
	   (BARE W18 (:* VALUE-COST REVENUE) :MODS (V1394662))
	   (F V1394662 (:* ASSOC-WITH OF) :OF W18 :VAL W19)
	   (A W19 (:* ONT::QUANTITY F::MONEY) :UNIT (:* MONEY-UNIT DOLLAR) :AMOUNT 450000)
	   (F V1394782 (:* TIME-SPAN-REL IN) :OF V1394300 :VAL V1395320)
	   (THE V1395320 TIME-LOC :YEAR 2007)
	   (F V1429849 (:* CONJUNCT AND) :MEMBERS (V1394300 V1429976))
	   (F V1429976 (:* WANT HOPE) :TENSE PRES :EXPERIENCER V1394289
	      :EFFECT V1430067)
	   (F V1430067 (:* EARNING MAKE) :AGENT V1394289 :THEME V1452526
	      :MODS (V1431039 V2063560))
	   (A V1452526 (:* VALUE-COST PROFIT) :MODS (V1430686 V1430759))
	   (F V1430686 (:* ASSOC-WITH OF) :OF V1452526 :VAL V1430719)
	   (A V1430719 (:* ONT::QUANTITY F::ANY-SCALE) :UNIT (:* PERCENT PERCENT) :AMOUNT 5)
	   (F V1430759 (:* ASSOC-WITH ON) :OF V1452526 :VAL V1431020)
	   (A V1431020 (:* ONT::QUANTITY F::MONEY) :UNIT (:* MONEY-UNIT DOLLAR) :AMOUNT 650000 :MODS (W24))
	   (F W24 (:* ASSOC-WITH IN) :OF V1431020 :VAL W25)
	   (BARE W25 (:* VALUE-COST REVENUE))
	   (F V1431039 (:* TIME-SPAN-REL IN) :OF V1430067 :VAL V1432080)
	   (PRO V1432080 (:* REFERENTIAL-SEM THIS) :MODS (V1432228))
	   (THE V1432228 (:* TIME-INTERVAL YEAR) :SEQUENCE (NTH 10)
	     :OF V1432149)
	   (PRO V1432149 (:* REFERENTIAL-SEM ITS))
	   (F V2063560 (:* REASON SO) :OF V1430067 :VAL V2063734)
	   (F V2063734 (:* CLOSURE OPEN) :AGENT V2063676 :THEME V2063816
	      :TENSE PRES :MODALITY (:* ONT::ABILITY W::CAN))
	   (PRO V2063676 (:* REFERENTIAL-SEM IT) :COREF V1394289)
	   (A V2063816 (:* FACILITY OPERATION) :QUAN MORE :MODS (W23 V2063852))
	   (F W23 (:* SPATIAL-LOC ELSEWHERE) :OF V2063816)
	   (F V2063852 (:* SPATIAL-LOC IN) :OF V2063816 :VAL V2064357)
	   (THE V2064357 GEOGRAPHIC-REGION :NAME-OF (PHILADELPHIA))
	   ))
	 ))))
       ;; step6 including the sense bracketing field. Isolated in its own paragraph to avoid inadvertently including the sense bracketing measures during testing and evaluation, since once they are present they must be explicitly turned off in TextTagger.
      (text step6-sense-bracketing :text "Amid the tightly packed row houses of North Philadelphia, a pioneering urban farm is providing fresh local food for a community that often lacks it, and making money in the process. Greensgrow, a one-acre plot of raised beds and greenhouses on the site of a former steel-galvanizing factory, is turning a profit by selling its own vegetables and herbs as well as a range of produce from local growers, and by running a nursery selling plants and seedlings. The farm earned about $10,000 on revenue of $450,000 in 2007, and hopes to make a profit of 5 percent on $650,000 in revenue in this, its 10th year, so it can open another operation elsewhere in Philadelphia." :terms
      ((paragraph :terms
        ((sentence :text "Amid the tightly packed row houses of North Philadelphia, a pioneering urban farm is providing fresh local food for a community that often lacks it, and making money in the process." :uttnum 0 :terms
	  ((F W1 (:* APPROXIMATE-AT-LOC AMID) :VAL V46905 :OF V468736)
	   (F V468736 (:* CONJUNCT AND) :MODS (W1) :MEMBERS (V56086 V468826))
	   (F V28551 (:* BINDING-VAL TIGHT) :OF V28570)
	   (F V28570 (:* FILL-CONTAINER PACK) :MODS (V28551) :THEME V28701)
	   (THE V46905 (SET-OF V28701))
	   (KIND V28701 (:* LODGING HOUSE) :ASSOC-WITH V28671 :MODS (V28728 V28570))
	   (KIND V28671 (:* SHAPE-OBJECT ROW))
	   (F V28728 (:* ASSOC-WITH OF) :OF V28701 :VAL V28862)
	   (THE V28862 GEOGRAPHIC-REGION :NAME-OF (NORTH_PHILADELPHIA))
	   (F V56086 (:* GIVING PROVIDE) :THEME V56198 :CAUSE V55990
	      :RECIPIENT V56918 :TENSE PRES :PROGR +)
	   (A V55990 (:* organization FARM) :MODS (V55976 W2))
	   (F V55976 (:* URBAN-VAL URBAN) :OF V55990)
	   (F W2 (:* NOVELTY-VAL PIONEERING) :OF V55990)
	   (BARE V56198 (:* FOOD FOOD) :MODS (V56183 V56162))
	   (F V56162 (:* AGE-VAL FRESH) :OF V56198)
	   (F V56183 (:* DISTANCE-VAL LOCAL) :CO-THEME V56918 :THEME V56198)
	   (A V56918 (:* DISTRICT COMMUNITY) :MODS (V57028) :COREF V28862)
	   (F V57028 (:* LACKING LACK) :THEME V57042 :AFFECTED V56918 :MODS (V57006)
	    :TENSE PRES)
	   (F V57006 (:* FREQUENCY OFTEN) :OF V57028)
	   (PRO V57042 (:* REFERENTIAL-SEM IT) :COREF V56198)
	   (SPEECHACT V267007 SA_TELL :CONTENT V468736)
	   (F V468826 (:* EARNING MAKE) :AGENT V55990 :THEME V468948
	      :MODS (V468980))
	   (BARE V468948 (:* MONEY MONEY))
	   (F V468980 (:* SITUATED-IN IN) :OF V468826 :VAL V469643)
	   (THE V469643 (:* PROCESS PROCESS))
	   )
	  :sense-bracketing
	  (S
	   ;; amid the tightly-packed row houses of North Philadelphia
	   (ADVBL (ADV APPROXIMATE-AT-LOC amid)
		  (NP (SPEC (DET (ART the)))
		      (ADJP (ADV BINDING-VAL tightly) (ADJ FILL-CONTAINER packed))
		      (N1 (N1 (N SHAPE-OBJECT row) (N LODGING houses))
			  (ADVBL (ADV ASSOC-WITH of) (NP (NAME GEOGRAPHIC-REGION North_Philadelphia))))))
	   ;; a pioneering urban farm is providing fresh local food for a community that often lacks it
	   (NP (SPEC (DET (ART a))) (ADJP (ADJ NOVELTY-VAL pioneering)) (ADJP (ADJ URBAN-VAL urban)) (N ORGANIZATION farm))
	   (VP (VP (V GIVING providing) (NP (ADJP (ADJ AGE-VAL fresh)) (ADJP (ADJ DISTANCE-VAL local)) (N FOOD food))
		   (ADVBL for a community that often lacks it))
		   ;; and making money in the process
		   (CONJ and) (VP (V EARNING making) (NP (N MONEY money)))
		   (ADVBL (ADV SITUATED-IN in) (NP (SPEC (DET (ART the))) (N PROCESS process)))))
	  )
	 (sentence :text "Greensgrow, a one-acre plot of raised beds and greenhouses on the site of a former steel-galvanizing factory, is turning a profit by selling its own vegetables and herbs as well as a range of produce from local growers, and by running a nursery selling plants and seedlings." :uttnum 1 :terms
	  ((THE V511406 GEOGRAPHIC-REGION :COREF V55990 :NAME-OF (GREENSGROW)
	    :MODS (V597073))
	   (F W6 ASSOC-WITH :VAL V511923 :OF V597073)
	   (A V511923 (:* ONT::QUANTITY F::LINEAR-S) :UNIT (:* AREA-UNIT ACRE) :AMOUNT 1)
	   (F V522905 AND :MEMBERS (V519928 W4))
	   (F V511990 (:* ASSOC-WITH OF) :OF V597073 :VAL V522905)
	   (A V597073 (:* LOCATION PLOT) :MODS (V511990 W6 V512183))
	   (A V519928 (SET-OF V512048))
	   (KIND V512048 (:* LOCATION BED) :MODS (V512020))
	   (F V512020 (:* MOVE RAISE) :THEME V512048)
	   (A W4 (SET-OF W3))
	   (KIND W3 (:* STRUCTURE GREENHOUSE))
	   (F V512183 (:* SPATIAL-LOC ON) :OF V597073 :VAL V512560)
	   (THE V512560 (:* LOCATION SITE) :OF V513187)
	   (A V513187 (:* PRODUCTION-FACILITY FACTORY) :ASSOC-WITH V513166 :MODS
	    (V513118))
	   (KIND V513166 (:* TRANSFORMATION GALVANIZE) :THEME V513138)
	   (KIND V513138 (:* MATERIAL STEEL))
	   (F V513118 (:* SEQUENCE-VAL FORMER) :OF V513187)
	   (SPEECHACT V736288 SA_TELL :CONTENT V632859)
	   (F V632859 (:* CAUSE-MAKE TURN) :CAUSE V511406 :TENSE PRES
	     :PROGR + :THEME V662913 :MODS (V1231392))
	   (A V662913 (:* VALUE-COST PROFIT))
	   (F V633574 (:* MANNER BY) :OF V632859 :VAL V633729)
	   (KIND V633729 (:* COMMERCE-SELL SELL) :TENSE PRES :PROGR + :AGENT V511406
		 :THEME V641039)
	   (THE V641039 (SET-OF W14) :MEMBERS (W8 W11)
	     :MODS (V633757 V633887) :ASSOC-WITH V633750)
	   (KIND W14 FOOD)
	   (THE W8 (SET-OF W7))
	   (KIND W7 (:* VEGETABLE VEGETABLE))
	   (THE W11 (SET-OF W12))
	   (KIND W12 (:* SPICES-HERBS HERB))
	   (PRO V633750 (:* REFERENTIAL-SEM ITS) :COREF V511406)
	   (F V633757 (:* OWN OWN) :GROUND V637426 :FIGURE V641039)
	   (IMPRO V637426 REFERENTIAL-SEM :RELATED-TO V633757)
	   (F V633887 (:* ADDITIVE AS-WELL-AS) :OF V641039 :VAL V635681)
	   (A V635681 (:* RANGE RANGE) :MODS (V635694))
	   (F V635694 (:* ASSOC-WITH OF) :OF V635681 :VAL W9)
	   (BARE W9 (:* PRODUCE PRODUCE) :MODS (V635744))
	   (F V635744 (:* SOURCE-LOC FROM) :OF W9 :VAL V640709)
	   (A V640709 (SET-OF W13))
	   (KIND W13 (:* PERSON-RELN GROWER) :MODS (V635783))
	   (F V635783 (:* DISTANCE-VAL LOCAL) :CO-THEME V636120 :THEME W13)
	   (IMPRO V636120 REFERENTIAL-SEM :RELATED-TO V635783)
	   (F V1231392 AND :MEMBERS (V633574 V1231486))
	   (F V1231486 (:* MANNER BY) :OF V632859 :VAL V1231643)
	   (KIND V1231643 (:* MANAGING RUN) :THEME V1242995)
	   (A V1242995 (:* FACILITY NURSERY) :MODS (V1232219))
	   (F V1232219 (:* COMMERCE-SELL SELL) :AGENT V1242995 :THEME V1232277)
	   (A V1232277 SET :MEMBERS (V1233124 W15))
	   (A V1233124 (SET-OF V1232241))
	   (KIND V1232241 (:* PLANT PLANT))
	   (A W15 (SET-OF W16))
	   (KIND W16 (:* PLANT SEEDLING))
	   )
	  :sense-bracketing
	  ;; Greensgrow, a one-acre plot of raised beds and greenhouses on the site of a former steel-galvanizing factory 
	  (S
	   (NP (NAME GEOGRAPHIC-REGION Greensgrow))
	   (NP (SPEC (DET (ART a))) (N1 (ADJP (NUMBER one) (N1 (N AREA-UNIT acre))) (N1 (N LOCATION plot)))
	       (ADVBL (ADV ASSOC-WITH of)
		      (NP
		       (NP (ADJP (ADJ MOVE raised)) (N LOCATION beds))
		       (CONJ and)
		       (NP (N STRUCTURE greenhouses))))
	       (ADVBL (ADV SPATIAL-LOC on) (NP (ART the) (N1 (N LOCATION site)
							     (PP (PREP of)
								 (NP (ART a) (ADJP (ADJ SEQUENCE-VAL former)) (N1 (N1 (N MATERIAL steel)) (N1 (V TRANSFORMATION galvanizing)) (N1 (N PRODUCTION-FACILITY factory)))))))))
	  ;;is turning a profit by selling its own vegetables and herbs as well as a range of produce from local growers
	   (VP (AUX (V is)) (V CAUSE-MAKE turning) (NP (ART a) (N1 (N profit)))
	       (ADVBL (ADV MANNER by)
		      (NP (VP (V COMMERCE-SELL selling)
			      (NP (NP (SPEC (DET (POSSESSOR (PRO REFERENTIAL-SEM its)))) (ADJP (ADJ OWN own))
				      (N1 (N1 (N VEGETABLE vegetables)) (CONJ and) (N1 (N SPICES-HERBS herbs))))
				  (CONJ as-well-as)
				  (NP (ART a) (N1 (N RANGE range)) (PP (PREP of) (N1 (N PRODUCE produce))
								       (ADVBL (ADV SOURCE-LOC from) (NP (ADJP (ADJ DISTANCE-VAL local) (N PERSON-RELN growers))))))))))
	  ;;and by running a nursery selling plants and seedlings
	       (CONJ and)
	       (ADVBL (ADV MANNER by)
		      (NP (VP (V MANAGING running) (NP (ART a) (N FACILITY nursery))
			      (ADVBL (VP (V COMMERCE-SELL selling) (NP (NP (N PLANT plants)) (CONJ and) (NP (N PLANT seedlings))))))))))		 
	  )
	 (sentence :text "The farm earned about $10,000 on revenue of $450,000 in 2007, and hopes to make a profit of 5 percent on $650,000 in revenue in this, its 10th year, so it can open another operation elsewhere in Philadelphia." :uttnum 2 :terms
	  ((SPEECHACT V2067491 SA_TELL :CONTENT V1429849)
	   (THE V1394289 (:* organization FARM) :COREF V55990)
	   (F V1394300 (:* EARNING EARN) :AGENT V1394289 :THEME V1394449 :MODS
	    (V1394462 V1394782))
	   (A V1394449 (:* ONT::QUANTITY F::MONEY) :UNIT (:* MONEY-UNIT DOLLAR) :AMOUNT 10000 :MODS (V1394326))
	   (F V1394326 (:* QMODIFIER APPROXIMATE) :OF V1394449)
	   (F V1394462 (:* ASSOC-WITH ON) :VAL W18 :OF V1394300)
	   (BARE W18 (:* VALUE-COST REVENUE) :MODS (V1394662))
	   (F V1394662 (:* ASSOC-WITH OF) :OF W18 :VAL W19)
	   (A W19 (:* ONT::QUANTITY F::MONEY) :UNIT (:* MONEY-UNIT DOLLAR) :AMOUNT 450000)
	   (F V1394782 (:* TIME-SPAN-REL IN) :OF V1394300 :VAL V1395320)
	   (THE V1395320 TIME-LOC :YEAR 2007)
	   (F V1429849 (:* CONJUNCT AND) :MEMBERS (V1394300 V1429976))
	   (F V1429976 (:* WANT HOPE) :TENSE PRES :EXPERIENCER V1394289
	      :EFFECT V1430067)
	   (F V1430067 (:* EARNING MAKE) :AGENT V1394289 :THEME V1452526
	      :MODS (V1431039 V2063560))
	   (A V1452526 (:* VALUE-COST PROFIT) :MODS (V1430686 V1430759))
	   (F V1430686 (:* ASSOC-WITH OF) :OF V1452526 :VAL V1430719)
	   (A V1430719 (:* ONT::QUANTITY F::ANY-SCALE) :UNIT (:* PERCENT PERCENT) :AMOUNT 5)
	   (F V1430759 (:* ASSOC-WITH ON) :OF V1452526 :VAL V1431020)
	   (A V1431020 (:* ONT::QUANTITY F::MONEY) :UNIT (:* MONEY-UNIT DOLLAR) :AMOUNT 650000 :MODS (W24))
	   (F W24 (:* ASSOC-WITH IN) :OF V1431020 :VAL W25)
	   (BARE W25 (:* VALUE-COST REVENUE))
	   (F V1431039 (:* TIME-SPAN-REL IN) :OF V1430067 :VAL V1432080)
	   (PRO V1432080 (:* REFERENTIAL-SEM THIS) :MODS (V1432228))
	   (THE V1432228 (:* TIME-INTERVAL YEAR) :SEQUENCE (NTH 10)
	     :OF V1432149)
	   (PRO V1432149 (:* REFERENTIAL-SEM ITS))
	   (F V2063560 (:* REASON SO) :OF V1430067 :VAL V2063734)
	   (F V2063734 (:* CLOSURE OPEN) :AGENT V2063676 :THEME V2063816
	      :TENSE PRES :MODALITY (:* ONT::ABILITY W::CAN))
	   (PRO V2063676 (:* REFERENTIAL-SEM IT) :COREF V1394289)
	   (A V2063816 (:* FACILITY OPERATION) :QUAN MORE :MODS (W23 V2063852))
	   (F W23 (:* SPATIAL-LOC ELSEWHERE) :OF V2063816)
	   (F V2063852 (:* SPATIAL-LOC IN) :OF V2063816 :VAL V2064357)
	   (THE V2064357 GEOGRAPHIC-REGION :NAME-OF (PHILADELPHIA))
	   )
	   :sense-bracketing
	   (S
            ; The farm earned about $10,000 on revenue of $450,000 in 2007
	    (NP (ART the) (N ORGANIZATION farm))
	    (VP (V EARNING earned) (NP (ADJ about) (N MONEY-UNIT $) (NUMBER 10000))
		(ADVBL (ADV ASSOC-WITH on) (NP (N VALUE-COST revenue) (ADVBL (ADV ASSOC-WITH of) (N MONEY-UNIT $) (NUMBER 450000))))
		(ADVBL (ADV in) (NP (TIME-LOC 2007))))
	    ; and hopes to make a profit of 5 percent on $650,000 in revenue in this
	    (CONJ and)
	    (VP (V WANT hopes)
		(CP (INFINITIVAL-TO TO) (VP (V EARNING make) (NP (ART a) (N VALUE-COST profit)
							 (PP (PREP of) (NUMBER 5) (N PERCENT percent)))
					    (ADVBL (ADV ASSOC-WITH on) (N MONEY-UNIT $) (NUMBER 650000))
					    (ADVBL (ADV ASSOC-WITH in) (NP (N VALUE-COST revenue)))
					    (ADVBL (ADV TIME-SPAN-REL in) (NP (PRO REFERENTIAL-SEM this)))
	    ; its 10th year
	    (NP (SPEC (DET (POSSESSIVE (PRO REFERENTIAL-SEM its))))(ORDINAL (NUMBER 10)) (N1 (N TIME-INTERVAL year))))))
	    ; so it can open another operation elsewhere in Philadelphia
	    (ADVBL (ADV REASON so))
	    (S (NP (PRO REFERENTIAL-SEM it))
	       (VP (VP- (AUX (V can))) (VP- (V CLOSURE open)) (NP (SPEC (QUAN another)) (N FACILITY operation))
		   (ADVBL (ADV SPATIAL-LOC elsewhere) (ADV SPATIAL-LOC in) (NP (NAME GEOGRAPHIC-REGION Philadelphia)))))
	  )
	  )
	 ))))
    (text step7 :text "Modern development of wind-energy technology and applications was well underway by the 1930s, when an estimated 600,000 windmills supplied rural areas with electricity and water-pumping services. Once broad-scale electricity distribution spread to farms and country towns, use of wind energy in the United States started to subside, but it picked up again after the U.S. oil shortage in the early 1970s. Over the past 30 years, research and development has fluctuated with federal government interest and tax incentives. In the mid-'80s, wind turbines had a typical maximum power rating of 150 kW. In 2006,  commercial, utility-scale turbines are commonly rated at over 1 MW and are available in up to 4 MW capacity." :terms
      ((paragraph :terms
        ((sentence :text "Modern development of wind-energy technology and applications was well underway by the 1930s, when an estimated 600,000 windmills supplied rural areas with electricity and water-pumping services." :uttnum 0 :terms
	  ((BARE N110 (:* PROCESS DEVELOPMENT) :OF N119 :MODS (N122))
	   (KIND N1101 (:* ENGINE WINDMILL))
	   (A N184 (W::SET-OF N1101) :SIZE N198)
	   (A N198 NUMBER :VALUE 600000 :MODS (N1107))
	   (F N1107 (:* QMODIFIER ESTIMATED) :OF N198)
	   (F N14 (:* HAVE-PROPERTY BE) :THEME N110 :MODS (N113 N160)
	    :TENSE W::PAST :PROPERTY N17)
	   (KIND N1116 (:* FUNCTION-OBJECT SERVICE))
	   (BARE N1117 (:* FILLING PUMP) :ASSOC-WITH N1120)
	   (KIND N1120 (:* WATER WATER))
	   (F N113 (:* EVENT-TIME-REL BY) :OF N14 :VAL N154)
	   (A N119 (W::SET-OF N133) :MEMBERS (N142 N130) :ASSOC-WITH N136)
	   (F N122 (:* MODERNITY-VAL MODERN) :OF N110)
	   (A N1275 (W::SET-OF N1116) :MEMBERS (N178 N1117))
	   (SPEECHACT N13 SA_TELL :CONTENT N14)
	   (KIND N130 (:* TECHNOLOGY TECHNOLOGY))
	   (KIND N133 ROOT)
	   (KIND N136 (:* SUBSTANCE ENERGY) :ASSOC-WITH N139)
	   (KIND N139 (:* AIR-CURRENT WIND))
	   (KIND N142 (:* USE APPLICATION))
	   (F N17 (:* EVENT-TIME-REL UNDERWAY) :OF N110 :MODS (N147))
	   (F N147 (:* GRADE-MODIFIER WELL) :OF N17)
	   (THE N154 TIME-RANGE :DECADE 1930)
	   (F N160 (:* EVENT-TIME-REL WHEN) :OF N14 :VAL N175)
	   (F N175 (:* GIVING SUPPLY) :THEME N1275 :RECIPIENT N181 :CAUSE N184
	    :TENSE W::PAST)
	   (BARE N178 (:* SUBSTANCE ELECTRICITY))
	   (A N181 (W::SET-OF N190))
	   (KIND N190 (:* LOCATION AREA) :MODS (N193))
	   (F N193 (:* URBAN-VAL RURAL) :OF N190)))
	 (sentence :text "Once broad-scale electricity distribution spread to farms and country towns, use of wind energy in the United States started to subside, but it picked up again after the U.S. oil shortage in the early 1970s." :uttnum 1 :terms
	  ((F N210 (:* TO-LOC TO) :OF N24 :VAL N234)
	   (PRO N2100 (:* REFERENTIAL-SEM IT) :COREF N262)
	   (F N292 (:* ADJUST PICK-UP) :THEME N2100 :MODS (N2103 N2106)
	    :TENSE W::PAST)
	   (F N2103 (:* FREQUENCY AGAIN) :OF N292)
	   (F N2106 (:* EVENT-TIME-REL AFTER) :OF N292 :SIT-VAL N2126)
	   (F N24 (:* DISPERSE SPREAD) :MODS (N210 N213) :TENSE W::PAST
	    :THEME N27)
	   (THE N2126 (:* LACK SHORTAGE) :OF N2127 :ASSOC-WITH N2130
	    :MODS (N2133))
	   (KIND N2127 (:* FATS-OILS OIL))
	   (F N213 (:* EVENT-TIME-REL ONCE) :SIT-VAL N256 :OF N24)
	   (THE N2130 (:* COUNTRY USA)
	    :NAME-OF (THE U PUNC-PERIOD S PUNC-PERIOD))
	   (F N2133 (:* TIME-SPAN-REL IN) :OF N2126 :VAL N2141)
	   (THE N2141 TIME-RANGE :DECADE 1970 :MODS (N2147))
	   (F N2147 (:* SCHEDULED-TIME-MODIFIER EARLY) :OF N2141)
	   (F N274 (:* SPATIAL-LOC IN) :VAL N282 :OF N268)
	   (THE N282 (:* COUNTRY USA) :NAME-OF (THE UNITED STATES))
	   (F N295 (:* CONJUNCT BUT) :OF N23 :VAL N292)
	   (SPEECHACT N23 SA_TELL :MODS (N295) :CONTENT N24)
	   (KIND N221 (:* SUBSTANCE ELECTRICITY))
	   (BARE N27 (:* ACTION DISTRIBUTION) :ASSOC-WITH N221 :ASSOC-WITH N224)
	   (KIND N224 (:* NON-MEASURE-ORDERED-DOMAIN SCALE) :MODS (N227))
	   (F N227 (:* SIZE-VAL BROAD) :OF N224)
	   (THE N234 (W::SET-OF N243) :MEMBERS (N237 N240))
	   (A N237 (W::SET-OF N249))
	   (A N240 (W::SET-OF N246))
	   (KIND N243 ROOT)
	   (KIND N246 (:* LOCATION FARM))
	   (KIND N249 (:* DISTRICT TOWN) :ASSOC-WITH N252)
	   (KIND N252 (:* LOCATION COUNTRY))
	   (F N256 (:* START START) :EFFECT N259 :THEME N262 :TENSE W::PAST)
	   (F N259 (:* TRANSFORMATION SUBSIDE))
	   (BARE N262 (:* USE USE) :THEME N268)
	   (BARE N268 (:* SUBSTANCE ENERGY) :ASSOC-WITH N271 :MODS (N274))
	   (KIND N271 (:* AIR-CURRENT WIND))))
	 (sentence :text "Over the past 30 years, research and development has fluctuated with federal government interest and tax incentives." :uttnum 2 :terms
	  ((F N313 (:* TIME-SPAN-REL OVER) :VAL N326 :OF N337)
	   (BARE N316 (:* ACTION RESEARCH))
	   (THE N317 (W::SET-OF N377) :MEMBERS (N316 N341))
	   (A N326 (:* ONT::QUANTITY F::DURATION) :UNIT (:* TIME-UNIT YEAR) :MODS (N332) :AMOUNT 30)
	   (SPEECHACT N33 SA_TELL :CONTENT N337)
	   (F N332 (:* TIME-SPAN PAST) :OF N326)
	   (F N337 (:* ADJUST FLUCTUATE) :CORRELATE N358 :THEME N317
	    :TENSE W::PRES :PERF + :MODS (N313))
	   (F N338 (:* NATIONAL-VAL FEDERAL) :OF N368)
	   (BARE N341 (:* PROCESS DEVELOPMENT))
	   (THE N358 (W::SET-OF N365) :MEMBERS (N359 N362))
	   (A N359 (W::SET-OF N371))
	   (BARE N362 (:* MENTAL-OBJECT INTEREST) :ASSOC-WITH N368)
	   (KIND N365 ROOT)
	   (KIND N368 (:* FEDERAL-ORGANIZATION GOVERNMENT) :MODS (N338))
	   (KIND N371 (:* MOTIVE INCENTIVE) :ASSOC-WITH N374)
	   (KIND N374 (:* VALUE-COST TAX))
	   (KIND N377 ROOT)))
	 (sentence :text "In the mid-'80s, wind turbines had a typical maximum power rating of 150 kW." :uttnum 3 :terms
	  ((F N410 (:* STAGE-VAL MID) :OF N418)
	   (KIND N414 (:* AIR-CURRENT WIND))
	   (KIND N464 (:* ENGINE TURBINE) :ASSOC-WITH N414)
	   (THE N418 TIME-RANGE :MODS (N410) :DECADE 80)
	   (F N43 (:* TIME-SPAN-REL IN) :VAL N418 :OF N427)
	   (SPEECHACT N426 SA_TELL :CONTENT N427)
	   (F N427 (:* HAVE HAVE) :THEME N430 :AFFECTED N433 :TENSE W::PAST)
	   (A N430 (:* CATEGORIZATION RATING) :ASSOC-WITH N439 :THEME N455)
	   (A N433 (W::SET-OF N464))
	   (KIND N439 (:* INTENSITY-VAL POWER) :MODS (N448 N442))
	   (KIND N442 (:* DOMAIN MAXIMUM) :OF N439)
	   (F N448 (:* TYPICALITY-VAL TYPICAL) :OF N439)
	   (A N455 (:* ONT::QUANTITY F::ANY-SCALE) :UNIT (:* POWER-UNIT KILOWATT) :AMOUNT 150)
	   ))
	 (sentence :text "In 2006,  commercial, utility-scale turbines are commonly rated at over 1 MW and are available in up to 4 MW capacity." :uttnum 4 :terms
	  ((F N510 (:* TYPICALITY-VAL COMMON) :OF N54)
	   (A N5103 (:* ONT::QUANTITY F::ANY-SCALE) :UNIT (:* POWER-UNIT MEGAWATT) :AMOUNT 4 :MODS (N5140))
	   (F N5140 (:* QMODIFIER UP-TO))
	   (F N54 (:* CATEGORIZATION RATE) :MODS (N510 N541) :TENSE W::PRES
	    :THEME N57)
	   (BARE N5114 (:* NON-MEASURE-ORDERED-DOMAIN CAPACITY) :OF N5103)
	   (F N5115 S-CONJOINED :OPERATOR AND :ITEM1 N563 :ITEM0 N54
	    :MODS (N513))
	   (F N541 (:* SCALE-RELATION AT) :OF N54 :VAL N545)
	   (F N580 (:* AVAILABILITY-VAL AVAILABLE) :OF N57 :PROPERTY N5114)
	   (F N563 (:* HAVE-PROPERTY BE) :THEME N57 :PROPERTY N580
	    :TENSE W::PRES)
	   (F N513 (:* TIME-SPAN-REL IN) :OF N5115 :VAL N521)
	   (THE N521 TIME-LOC :YEAR 2006)
	   (KIND N527 (:* ENGINE TURBINE) :ASSOC-WITH N530 :MODS (N533))
	   (A N57 (W::SET-OF N527))
	   (KIND N530 (:* NON-MEASURE-ORDERED-DOMAIN SCALE) :ASSOC-WITH N536)
	   (F N533 (:* COMMERCE-VAL COMMERCIAL) :of N527)
	   (KIND N536 (:* UTILITY UTILITY))
	   (A N545 (:* ONT::QUANTITY F::ANY-SCALE) :UNIT (:* POWER-UNIT MEGAWATT) :AMOUNT 1 :MODS (N556))
	   (F N556 (:* QMODIFIER MORE) :OF N550)
	   (SPEECHACT N562 SA_TELL :CONTENT N5115)))
	 )
	)))
     (text restaurant :text "Eating at a restaurant often requires phoning ahead to get reservations, because many of the better establishments are very busy. Upon arriving at the restaurant, you need to inform the staff of your reservation and wait to be seated. Once seated by your host, you will be provided menus to allow you to select appetizers, drinks and entrees. Often bread, water or other light fare will be brought to your table before you order. After you provide your waiter with the order, it may take a few minutes before the food starts coming out of the kitchen. Usually, an appetizer, which could include soup or salad, is served first, along with the drinks.  After the first course is cleared away by the waiter, the entree arrives. Your server will periodically check in to see if you like your food or need any drink refills. Upon concluding the entree portion of the meal, the waiter will clear your table and bring out a dessert menu. Desserts include an array of sweet offerings, pastries, ice creams, etc. and an assortment of hot and cold beverages. In some cases, diners will skip dessert if they are too full. The final step of the dining experience is paying the bill. It is customary to tip your servers, particularly if the service was good. A tip of 20% of the total bill is considered generous."
	   )
     (test navigation1 :text "I am driving in an urban part of Columbia, Missouri.  To my immediate left, I see a small building surrounded by a parking lot.  Directly behind that building is a larger rectangular structure.  To my right is a large building."
	   )
     (test navigation2 :text "Turning left at the stoplight, I go a short distance before I stop at another intersection.  To my left is a small rectangular building, which is somewhat behind me, and also mostly in front, but somewhat to the right, of the thin rectangular structure behind it."
	   )
     (test navigation3 :text "On the opposite side is a large parking lot, which also extends to my rear.  As I loop around that parking lot, I see another large parking complex to my left."
	   )
     (test navigation4 :text "A few moments later, I see a somewhat large building on my left, and then arrive at another intersection."
	   )
     (test navigation5 :text "Turning left again, I travel a ways down a two-lane road with a few large and somewhat large, densely packed, buildings surrounding me on both sides.  I make a right turn at a three-way intersection, passing two buildings, one to my left and one to my right, as I head to a stop sign."
	   )
     (test navigation6 :text "Going just a bit further, I turn right into a somewhat large parking lot."
	   )
     (test nga1 :text "Beer and Cigarettes 2:46 p.m. Thayer Evans is reporting for The Times from Lafayette, a Louisiana town in Gustav's sights. At Shell Complete Stop, a gas station, one of less than a handful of businesses open, sales were brisk, manager Madhu Kolar said. \"They're buying the basic necessities - beer,\" laughed Mr. Kolar.  \"This is Louisiana. People love to drink here. Anything good or bad, beer is the solution.\" Many customers were relieved because Hurricane Gustav so far had not been as intense as originally predicted, Mr. Kolar said. \"People are having fun,\" he said. Eric Ditmore spent $134.18 at Shell Complete Stop for items that included a bottle of vodka, two cases of beer, cigarettes and chewing tobacco. On Thursday, he was evacuated from an offshore platform at which he worked and has been staying here since in a motel. Mr. Ditmore planned to spend the remainder of Monday drinking vodka and eating canned southwestern chicken at his motel with a friend. \"I'm just hanging out,\" said Mr. Ditmore, 28, a sandblaster and painter.  \"It's enjoyable and fun.\" Anthony Releford said he and his brother, Lafayette resident Allen Landry, were prepared to ride out the storm with the beer, cigarettes and potatoes chips they bought at Shell Complete Stop. A Lake Charles resident, Releford was visiting Landry. \"It's a little vacation,\" said Mr. Releford, 24, a rapper, of the storm. Exhales on Floodwall 1:54 p.m. John Schwartz, who has been reporting on official angst over rising waters in one part of New Orleans, brings some good news.")
     (test nga1-noquote :text "Beer and Cigarettes 2:46 p.m. Thayer Evans is reporting for The Times from Lafayette, a Louisiana town in Gustav's sights. At Shell Complete Stop, a gas station, one of less than a handful of businesses open, sales were brisk, manager Madhu Kolar said. They're buying the basic necessities - beer, laughed Mr. Kolar. This is Louisiana. People love to drink here. Anything good or bad, beer is the solution. Many customers were relieved because Hurricane Gustav so far had not been as intense as originally predicted, Mr. Kolar said. People are having fun, he said. Eric Ditmore spent $134.18 at Shell Complete Stop for items that included a bottle of vodka, two cases of beer, cigarettes and chewing tobacco. On Thursday, he was evacuated from an offshore platform at which he worked and has been staying here since in a motel. Mr. Ditmore planned to spend the remainder of Monday drinking vodka and eating canned southwestern chicken at his motel with a friend. I'm just hanging out, said Mr. Ditmore, 28, a sandblaster and painter.  It's enjoyable and fun. Anthony Releford said he and his brother, Lafayette resident Allen Landry, were prepared to ride out the storm with the beer, cigarettes and potatoes chips they bought at Shell Complete Stop. A Lake Charles resident, Releford was visiting Landry. It's a little vacation, said Mr. Releford, 24, a rapper, of the storm. Exhales on Floodwall 1:54 p.m. John Schwartz, who has been reporting on official angst over rising waters in one part of New Orleans, brings some good news.")
     (test james-making-tea :text "OK I'm gonna make some tea. Uh I've got I'm gonna get some water. Put water in the kettle. Oops. Alright and we put the kettle on the burner. OK now I gotta go find a tea bag. And I've got my tea bag and right beside it I got some cream here. And I'll go over uh here and I'll get a uh get a spoon from the cupboard. Alright and uh and teapot. Uh let's see. So we're waiting for the water to boil. I'm gonna go off and [unintelligible] answer email while the water boils. Oh here's email. Alright. Alright the water's boiling so we are gonna put the water in the kettle. I'll get the tea bag. OK and uh now we let it steep. Uh I'll get a cup while it's steeping. OK. I like a little milk in my tea. Uh after a couple of minutes the tea is ready and you can pour it. Be careful the lid doesn't fall off. That's a good trick. Whew it's coming out. And uh and I'm done."
	   )
;     2010-11-05_10-35-26
      (test tea-transcript-gf-1 :text "Ok I'm going to make a cup of tea. Uh first thing I need to do is fill up the kettle. So I'll take the  kettle over here. And I'll fill it up here at the sink. Ok ... and then I'm going to put it on the stove. Turn on the stove. And now I've got to wait for the kettle to boil. Ok ... kettle's boiling I'm going to turn off the stove.
And now I've got to let's see I'll take a teabag I'll take the mug I'll take a teabag ... out I'll put the teabag ... in the mug ... take my kettle ... I'll pour some water into the mug. Ok. And now I'll dunk my teabag a little bit. And now I'm going to let the tea steep for a couple of minutes. Ok the tea is steeped. I'm going to take my teabag out. Put it in the sink.
And there you have it a perfect cup a tea."
	   )
      ; 2010-11-05_10-42-10
       (test tea-transcript-gf-2 :text "Ok ... I'm going to make a cup of tea.
First thing I need to do I need to fill up the kettle.
So I'll take the kettle ... and I'm going to fill it up here at the sink.
Ok.
And I'll put it on the stove turn on the stove.
And now we have to wait for the kettle to boil.
Ok kettle's boiling I'm going to turn off the stove.
I'm going to take the kettle ... take my mug ... and I'm going to pour some water into my mug.
Ok.
And now I'm going to get a teabag.
And take out a teabag.
Dunk it into the mug.
And now I'm gonna let that steep for a couple of minutes.
Ok ... tea is finished steeping ... we're going to take the teabag out ... in the sink ... and there we have it a perfect cup of tea."
	   )
       ; 2010-11-05_10-44-51
        (test tea-transcript-gf-3 :text "
Ok I'm going make a cup of tea ... first thing I need to do I need to fill up the kettle.
So I'll take the kettle ... to the sink fill it up.
Ok kettle's full ... put it on the stove turn on the stove.
Now we have to wait for the kettle to boil.
Ok the kettle's boiling ... I can turn off the stove ... and I'm gonna take the kettle ... and I'm going to pour some water into my mug.
Ok ... and now i'm gonna take a teabag.
And dunk it into the mug.
And now we leave that to steep for a couple of minutes.
Ok the tea is finished steeping .. i take the teabag out.
And there we have it a perfect cup of tea."
	   )
	;2010-11-05_10-53-21
	 (test tea-transcript-ms-1 :text "
I'm going to make a cup of tea.
First I need some water.
We fill the uh ... we fill the tea kettle with water.
Ok ... it's full.
And I put it on the stove to boil.
Then I get my teabag while the water is boiling.
And I put the teabag in the cup.
The water is boiling now i take it off the stove.
I turn the off the stove ... and I pour oops I pour the water ... into the mug .... over the teabag.
And I let the tea steep for a few minutes.
After the tea has steeped I take the teabag out ... throw it away the tea is ready."
	   )
	 ; 2010-11-05_10-57-00
	  (test tea-transcript-ms-2 :text "
I'm going to make a cup of tea.
First I take the tea kettle and I fill it with water.
There should be water a water sound here.
I put the tea kettle on the stove and I turn on the stove ... and wait for the water to boil.
While I'm waiting for the water to boil I get my teabag.
I put the teabag in my cup.
When the water is boiling I take it off the stove ... I turn off the stove ... and I pour the boiling water over the teabag.
I allow the tea to steep for a few minutes.
And when it's ready i take the teabag out.
And enjoy a nice hot cup of tea."
	   )
	  ; 2010-11-08_12-46-22
	   (test tea-transcript-jfa-1 :text "
Ok today I'm going to show you how to make some tea.
Ummm ... let's see we need boiling water so we're going to get uh ... the kettle and put some water in the kettle use fresh water always helps.
Ok the water's got enough water in there ... is on the stove ... and we're going to bring it up to a boil.
While we're waiting for that we can get out our teabag here.
And uh ... the mug ... put the put it in the mug.
Ok it looks like the water's boiling.
Come over got the teabag in the cup here we're gonna just pour in the water.
And then we just let it steep for another uh ... few minutes i actually like my tea weak so I'm just going to let it steep ... for about uh less than.
Ok ... now that it's steeped ... we're going to take the teabag out of the cup let it drain a little bit ... we're going to put it in the garbage disposal.
Garbage down there.
And I've got my cup of tea ... bon appetit."
	   )
	   ; 2010-11-08_12-54-47
	    (test tea-transcript-jfa-2 :text " Ok I'm going to show
you how to make tea today ... uh we're going to uh first we need some
fresh boiling water so we take the kettle ... we're going to empty out
... anything in there and then we're going to fill up ... uh with cold
water the kettle. Get a nice amount of water in there ... don't need
too much because we're only making a cup ... put it on the stove here
and turn it on high ... uh and let's see now we've got to find the tea
... it's in one of these cupboards.  Uh here's the tea.
Get the teabag out.  Find the cups.  There's a good cup.  Alright
... i'm going to put the teabag in the cup.  Ah the water's boiling
... so ... turn off the stove.  Pour in the water in the cup
over the teabag.  Ok we can let it sit ... um I like a little
milk in my tea so I'm gonna get some ... milk out of the
refrigerator. But don't put the milk in until it's finished steeping.
Ok ... looks good ... after it gets to the strength you want you can
kinda take the teabag out ... throw it in the garbage here ... and add
a little milk here.  And i just need a spoon to stir it.  Ok.  Ok
.. and we're done I have my tea."
	   )
    ))
    
      
;; Default sample dialogue for this domain
(setf *test-dialog*
  (cdr (assoc 0.1 *sample-dialogues* :test #'eql)))

(defun ptest (key)
  "Make the sample dialogue given by KEY the global *TEST-DIALOG*, then
call TEST. Reports available KEYs on error."
  (let ((dialogue (cdr (assoc key *sample-dialogues* :test #'eql))))
    (cond
     ((not dialogue)
      (format t "~&ptest: unknown sample dialogue: ~S~%" key)
      (format t "~&ptest: possible values: ~S~%" (mapcar #'car *sample-dialogues*)))
     (t
      (setf *test-dialog* dialogue)
      (test)))))

(defun test-paragraph (p &key (evaluate-lfs t) (type 'default))
  "Send the given paragraph through TextTagger to be split into clauses and sent through the rest of the system.
   @param p Either a string containing the paragraph, or a symbol associated with the paragraph record in *sample-dialogues*
   @param :evaluate-lfs Set this to nil if you don't want to evaluate the LF for the whole paragraph against the gold LF
   @param :type The :type argument to TextTagger (see src/TextTagger/README)"
  (cond
   ((stringp p)
    (COMM::send 'test `(request :content (tag :text ,p :imitate-keyboard-manager t :split-clauses t :type ,type))))
   ((symbolp p)
    (let* ((paragraph (find p *sample-dialogues* :key #'second))
           (text (comm::get-keyword-arg paragraph :text))
	   (gold-lf (comm::get-keyword-arg paragraph :terms))
	   (sense-bracketing
	     (remove nil
	             (mapcar (lambda (s)
		               (comm::get-keyword-arg s :sense-bracketing))
		             (mapcan (lambda (p)
			               (comm::get-keyword-arg p :terms))
			             gold-lf)
			     )))
	   )
      (when (and gold-lf evaluate-lfs)
        (COMM::send 'test `(tell :content (paragraph-gold-lfs :content ,gold-lf))))
      (COMM::send 'test `(request :content (tag :text ,text :imitate-keyboard-manager t :split-clauses t :type ,type :sense-bracketing ,sense-bracketing)))
      ))
   ))

(defun enable-graphviz-display ()
  (COMM::send 'test '(request :receiver graphviz :content (enable-display))))
(defun disable-graphviz-display ()
  (COMM::send 'test '(request :receiver graphviz :content (disable-display))))

