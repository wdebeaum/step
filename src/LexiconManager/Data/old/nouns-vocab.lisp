
(in-package :lxm)

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  ;;  Note:: handling it this way overgenerates e.g., "the two ones in the corner" parses.
  (W::ONE
   (SENSES
	 ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("one%1:09:00"))
	  (syntax (W::one +))  ;; such a strange word, we give it its own feature
	  (LF-PARENT ont::referential-sem)
	  (example "the other one")
	  (preference .96) ;; prefer number sense
	 )
      )
    )

  (W::OTHER
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s14)
     (LF-PARENT ONT::referential-sem)
     (preference .92) ;; prefer adjectival sense
     )
    )
   )

  (W::THING
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("thing%1:03:00"))
     (LF-PARENT ONT::referential-sem)
     )
    )
   )
;  (W::defaultnoun
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("thing%1:03:00"))
;     (LF-PARENT ONT::referential-sem)
;     )
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("thing%1:03:00"))
;     (LF-PARENT ONT::referential-sem)
;     (templ other-reln-templ)
;     )
;    )
;   )
  (W::ITEM
   (SENSES
    ((LF-PARENT ONT::referential-sem)
     (example "fifteen items or less" "identify the action items of the meeting")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20060124 :wn ("item%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  
  (W::Thingy
   (SENSES
    ((LF-PARENT ONT::referential-sem)
     (LF-FORM W::thing)
     )
    )
   )
  (W::GUY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("guy%1:18:00"))
     (LF-PARENT ONT::PERSON)
     )
    )
   )
   (W::self
   (SENSES
    ((meta-data :origin self :entry-date 20091027 :change-date nil :wn ("self%1:18:00") :comments nil)
     (LF-PARENT ONT::referential-person)
     (templ bare-pred-templ)    ;; e.g., self declared
     (example "one's own self")
     )
    )
   )
   (W::fellow
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::person)
     )
    )
   )
   
   (W::devil
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::supernatural-being)
     )
    )
   )
   (W::angel
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::supernatural-being)
     )
    )
   )
   (W::OWNER
   (SENSES
    ((LF-PARENT ONT::possessor-reln) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("owner%1:18:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::possessor
   (SENSES
    ((LF-PARENT ONT::possessor-reln) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060629 :CHANGE-DATE NIL :wn ("possessor%1:18:00")
      :COMMENTS nil))))
  (W::MULTIMEDIA
   (SENSES
    ((meta-data :origin calo :entry-date 20040412 :change-date nil :wn ("multimedia%1:10:00") :comments y1v7 :wn-sense (1))
     (templ mass-pred-templ)
     (LF-PARENT ONT::MEDIUM)
     (example "with decreasing prices multimedia is now commonplace")
     )
    )
   )
   (w::matrix
   (senses
    ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("matrix%1:14:00") :comment pq)
     (LF-PARENT ONT::non-measure-ordered-domain) ;; like array
     )
    )
   )
  (w::participant
   (senses
    ((meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("participant%1:18:00") :comment pq)
     (LF-PARENT ONT::person)
     (example "who were the participants in the meeting")
     )
    )
   )
  (w::passenger
   (senses
    ((meta-data :origin plow :entry-date 20060531 :change-date nil :wn ("passenger%1:18:00") :comment pq405)
     (LF-PARENT ONT::traveller)
     (example "select the number of passengers")
     )
    )
   )
  (w::traveller
   (senses
    ((meta-data :origin plow :entry-date 20060629 :change-date nil :wn ("traveller%1:18:00") :comment pq)
     (LF-PARENT ONT::traveller)
     (example "select the number of travellers")
     )
    )
   )
  (w::traveler
   (senses
    ((meta-data :origin plow :entry-date 20060629 :change-date nil :wn ("traveler%1:18:00") :comment pq)
     (LF-PARENT ONT::traveller)
     (example "select the number of travelers")
     )
    )
   )
  (w::specialist
   (senses
    ((meta-data :origin calo-ontology :entry-date 20060629 :change-date nil :wn ("specialist%1:18:00") :comment caloy3)
     (LF-PARENT ONT::specialist)
     (example "he is a wine specialist")
     )
    )
   )
  (w::listener
   (senses
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("listener%1:18:00") :comment ma-request)
     (LF-PARENT ONT::specialist)
     (example "active/passive listener")
     )
    )
   )
  (w::moderator
   (senses
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("moderator%1:18:02") :comment ma-request)
     (LF-PARENT ONT::specialist)
     )
    )
   )
  (w::enthusiast
   (senses
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("enthusiast%1:18:00") :comment caloy3)
     (LF-PARENT ONT::specialist)
     (example "he is a wine enthusiast")
     )
    )
   )
   (w::afficionado
    (senses
     ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comment caloy3)
      (LF-PARENT ONT::specialist)
      (example "he is a wine enthusiast")
      )
     )
    )
   (w::aficionado ; correct spelling of above
    (senses
     ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comment caloy3)
      (LF-PARENT ONT::specialist)
      (example "he is a wine enthusiast")
      )
     )
    )
   (w::gourmet
    (senses
     ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("gourmet%1:18:00") :comment caloy3)
      (LF-PARENT ONT::specialist)
      (example "he is a gourmet")
      )
     )
    )
    (w::gourmand
     (senses
      ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("gourmand%1:18:00") :comment caloy3)
       (LF-PARENT ONT::specialist)
       (example "he is a gourmet")
       )
      )
     )
   (W::speaker
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :wn ("speaker%1:06:00") :comment caloy3)
     (LF-PARENT ONT::DEVICE)
     (example "plug in the speakers for the sound")
     )
    ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :wn ("speaker%1:18:00") :comment caloy3)
     (LF-PARENT ONT::professional)
     (example "who is the speaker")
     )
    )
   )
    (W::anchor
   (SENSES
    ((LF-PARENT ONT::device)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::trader
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060714 :change-date nil :wn ("trader%1:18:00") :comment caloy3)
     (LF-PARENT ONT::professional)
     (example "he is a trader on wall street")
     )
    )
   )
   (W::practitioner
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comment nil :wn ("practitioner%1:18:00"))
     (LF-PARENT ONT::professional)
     (example "check with your nurse practitioner")
     )
    )
   )
   ((W::registered w::nurse)
    (abbrev w::rn)
   (SENSES
    ((meta-data :origin chf :entry-date 20070827 :change-date nil :comment nil :wn ("registered_nurse%1:18:00"))
     (LF-PARENT ONT::professional)
     (example "check with your rn")
     )
    )
   )
   (w::ssn
    (SENSES
     ((meta-data :origin plot :entry-date 20080505 :change-date nil :comment nil)
      (LF-PARENT ONT::ssn)
      (templ other-reln-templ)
      (example "you need to know your social security number")
      )
     )
   )
   ((w::social w::security w::number)
    (SENSES
     ((meta-data :origin plot :entry-date 20080505 :change-date nil :comment nil)
      (LF-PARENT ONT::ssn)
      (templ other-reln-templ)
      (example "you need to know your social security number")
      )
     )
   )
   (W::dietitian
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comment nil)
     (LF-PARENT ONT::health-professional)
     (example "check with your nurse practitioner")
     )
    )
   )
   (W::dietician
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comment nil)
     (LF-PARENT ONT::health-professional)
     (example "check with your nurse practitioner")
     )
    )
   )
   (W::amplifier
   (SENSES
    ((meta-data :origin allison :entry-date 20040921 :change-date nil :wn ("amplifier%1:06:00") :comment caloy2)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
 
   (W::projector
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("projector%1:06:00") :comment caloy2)
     (LF-PARENT ONT::projector)
     (example "I need an lcd projector")
     )
    )
   )
   ;; digital light processing
   (w::dlp
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :comment caloy2)
     (LF-PARENT ONT::process)
     (example "I need a dlp projector for my presentations")
     )
    )
   )
  ;; frequency hopping spread-spectrum
  (w::fhss
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :comment plow-req)
     (LF-PARENT ONT::process)
     (example "This phone uses fhss")
     )
    )
   )
   ;; liquid crystal display
   (W::lcd
    (SENSES
     ((meta-data :origin calo :entry-date 20050929 :change-date nil :wn ("lcd%1:06:00") :comment projector-purchasing)
      (LF-PARENT ONT::display)
      (example "I need an lcd projector/monitor/display")
      )
     )
    )
   (w::plasma
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060213 :change-date nil :comment projector-purchasing :wn ("plasma%1:08:00" "plasma%1:27:01"))
     (LF-PARENT ONT::substance)
     (example "plasma technology consists of pixels that allow electric pulses to excite natural gases to produce light")
     )
    )
   )
   (W::lens
    (SENSES
     ((meta-data :origin calo :entry-date 20050404 :change-date nil :wn ("lens%1:06:00") :comment projector-purchasing)
      (LF-PARENT ONT::device-component)
      (example "does it have a zoom lens")
      (templ part-of-reln-templ)
      )
     )
    )
   (W::viewfinder
    (SENSES
     ((meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("viewfinder%1:06:00") :comment plow-req)
      (LF-PARENT ONT::device-component)
      (example "does it have a color viewfinder")
      (templ part-of-reln-templ)
      )
     )
    )
   ;; universal serial bus
  (W::USB
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (w::fall
   (SENSES
    ;; :nom
;    ((EXAMPLE "what is the duration of the fall")
;     (meta-data :origin step :entry-date 20080722 :change-date nil :comments nil)
;     (LF-PARENT ONT::event)
;     )
    ((meta-data :origin trips :entry-date 20090111 :change-date nil :comments nil :wn ("autumn%1:28:00"))
     (LF-PARENT ONT::autumn)
     (templ time-reln-templ)
     )
    )
   )
  (w::reduction
   (SENSES
    ((EXAMPLE "reduction flash")
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("reduction%1:04:00") :comments nil)
     (LF-PARENT ONT::event)
     )
    )
   )
  (w::keystone
   (SENSES
    ((EXAMPLE "keystone projection")
     (meta-data :origin caloy2 :entry-date 20050425 :change-date nil :comments projector-purchasing)
     (LF-PARENT ONT::event)
     )
    )
   )
  (w::keystoning
   (SENSES
    ((EXAMPLE "keystoning is a type of image distortion")
     (meta-data :origin caloy2 :entry-date 20050425 :change-date nil :comments projector-purchasing)
     (LF-PARENT ONT::event)
     )
    )
   )
  
   (W::RECOGNIZER
   (SENSES
    ((LF-PARENT ONT::computer-software) (TEMPL COUNT-PRED-TEMPL)
     (example "are they working on the speech recognizer")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20050522 :CHANGE-DATE NIL
      :COMMENTS meeting-understanding))))
  (W::lamp
    (SENSES
     ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("lamp%1:06:00") :comment projector-purchasing)
      (LF-PARENT ONT::device-component)
      (example "this model has the second longest lasting lamp")
       (templ part-of-reln-templ)
      )
     ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :wn ("lamp%1:06:01") :comment caloy3)
      (LF-PARENT ont::furnishings)
      (example "turn on the lamp")
      )
     )
    )
  (W::clock
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :wn ("clock%1:06:00") :comment caloy3)
     (LF-PARENT ONT::DEVICE)
     (example "the clock on the wall")
     )
    )
   )
   (W::adapter
   (SENSES
    ((meta-data :origin allison :entry-date 20040921 :change-date nil :wn ("adapter%1:06:00") :comment caloy2)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   (W::adaptor
   (SENSES
    ((meta-data :origin allison :entry-date 20040921 :change-date nil :wn ("adaptor%1:06:00") :comment caloy2)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   (W::vacuum
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil :wn ("vacuum%1:06:00"))
     (LF-PARENT ONT::manufactured-object)
     )
    )
   )
  (W::AFTERBURNER
   (SENSES
    ((LF-PARENT ONT::MANUFACTURED-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("afterburner%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::controller
   (SENSES
    ((meta-data :origin allison :entry-date 20041027 :change-date nil :wn ("controller%1:06:00") :comments caloy2)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )

   (W::DEVICE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("device%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   
   (W::GADGET
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("gadget%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   (W::mechanism
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("mechanism%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   (W::instrument
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("instrument%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   (W::gun
   (SENSES
    ((meta-data :origin lou2 :entry-date 20061121 :change-date nil :comments nil)
     (LF-PARENT ONT::firearm)
     )
    )
   )
   (W::weapon
   (SENSES
    ((meta-data :origin lou2 :entry-date 20061121 :change-date nil :comments nil)
     (LF-PARENT ONT::weapon)
     )
    )
   )
   (W::sword
   (SENSES
    ((meta-data :origin lou2 :entry-date 20061121 :change-date nil :comments nil)
     (LF-PARENT ONT::weapon)
     )
    )
   )
   (W::means
    (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060526 :change-date nil :wn ("means%1:04:00") :comments pq)
     (LF-PARENT ONT::ps-object)
     (example "a means to an end")
     )
    )
   )
   (W::tool
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("tool%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
  (W::WHEEL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("wheel%1:06:00"))
     (LF-PARENT ONT::WHEEL)
     )
    )
   )
  (W::potato
   (wordfeats (W::morph (:forms (-S-3P) :plur w::potatoes)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050803 :change-date 20070809 :comments nil :wn ("potato%1:13:00"))
     (LF-PARENT ONT::vegetable)
     )
    )
   )

  (W::potatos
   (wordfeats (W::morph (:forms NIL)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050803 :change-date 20070809 :comments nil)
     (LF-PARENT ONT::vegetable)
     (TEMPL COUNT-PRED-3p-TEMPL)
     (preference .92) ;; prefer correct spelling
     )
    )
   )

  ((w::sweet W::potato)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::sweet w::potatoes))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050803 :change-date 20070809 :comments nil :wn ("sweet_potato%1:13:00"))
     (LF-PARENT ONT::vegetable)
     )
    )
   )

  ((w::russet W::potato)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::russet w::potatoes))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050803 :change-date 20070809 :comments nil)
     (LF-PARENT ONT::vegetable)
     )
    )
   )

  (W::SYSTEM
   (SENSES
    ;; this sense is for a physical arrangement of components
    ((LF-PARENT ONT::INSTRUMENTATION)
     (example "an entertainment system")
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("system%1:06:00") :comments projector-purchasing)
     )
    ;; this is for abstractions
    ((EXAMPLE "a meal system")
     (meta-data :origin medadvisor :entry-date 20030404 :change-date nil :wn ("system%1:14:00") :comments nil)
     (LF-PARENT ONT::procedure)
      (PREFERENCE 0.98) ;; prefer ont::instrumentation sense
     )
    ((LF-PARENT ONT::agent)
     (example "ask the system to help you")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  ((w::operating w::system)
   (SENSES
    ((LF-PARENT ONT::computer-SOFTWARE)
     (LF-FORM W::operating-system)
     (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("operating_system%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  
  (W::COMPUTER
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("computer%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::computer)
     )
    )
   )
  (W::LAPTOP
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("laptop%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::computer-type)
     )
    )
   )
  (W::PC
   (SENSES
    ((meta-data :origin calo :entry-date 20040204 :change-date nil :wn ("pc%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::computer-type)
     )
    )
   )
  ;; need this for meeting transcriptions -- detokenized from p_c
   ((W::P w::C)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::p W::cs))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060127 :change-date nil :comments meeting-understanding)
     (LF-PARENT ONT::computer-type)
     )
    )
   )
   (W::POWERBOOK
   (SENSES
    ( (meta-data :origin calo :entry-date 20040204 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::computer-model)
     )
    )
   )
   ((W::p w::d w::a)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::p w::d W::as))))
   (SENSES
    ( (meta-data :origin calo :entry-date 20040204 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::computer-type)
     )
    )
   )
   (W::PDA
   (SENSES
    ((LF-PARENT ONT::computer-type) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("pda%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   
   (W::copier
   (SENSES
    ( (meta-data :origin allison :entry-date 20041027 :change-date nil :wn ("copier%1:06:00") :comments caloy2)
     (LF-PARENT ONT::machine)
     )
    )
   )
   
   (W::photocopier
   (SENSES
    ( (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("photocopier%1:06:00") :comments Office)
     (LF-PARENT ONT::machine)
     )
    )
   )
   (W::rolodex
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("rolodex%1:06:00") :comments Office)
     (LF-PARENT ONT::information-function-object)
     )
    )
   )
  (W::MACHINE
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("machine%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::machine)
     )
    )
   )
  (W::detector
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("detector%1:06:00") :comments Office)
     (LF-PARENT ONT::sensor)
     (example "an intrusion detector")
     )
    )
   )
  (W::modulator
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::device)
     (example "a signal modulator")
     )
    )
   )
  (W::MAKER
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::machine)
     (example "where is the coffee maker")
     )
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("maker%1:14:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::supplier)
     (example "apple is a maker of computers")
     )
    )
   )
  (W::shredder
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("shredder%1:06:00") :comments Office)
     (LF-PARENT ONT::machine)
     (example "run it through the shredder, rosemary")
     )
    )
   )
  (W::remover
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::device)
     (example "staple remover")
     )
    )
   )
  (W::dispenser
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("dispenser%1:06:00") :comments Office)
     (LF-PARENT ONT::device)
     (example "tape dispenser")
     )
    )
   )

  (W::refrigerator
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("refrigerator%1:06:00") :comments plow-req)
   ;  (LF-PARENT ONT::appliance)
     (lf-parent ont::refrigerator)
     )
    )
   )
(W::fridge
   (SENSES
    ((meta-data :origin caet :entry-date 20111220 :wn ("refrigerator%1:06:00"))
     (LF-PARENT ONT::refrigerator)
     )
    )
)
(W::coffee
   (SENSES
    ((meta-data :origin caet :entry-date 20111220)
     (LF-PARENT ONT::coffee)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
)
(W::tea
   (SENSES
    ((meta-data :origin caet :entry-date 20111220)
     (LF-PARENT ONT::tea)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
)
(W::sugar
   (SENSES
    ((meta-data :origin caet :entry-date 20111220)
     (LF-PARENT ONT::sugar)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
)
  (W::stapler
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("stapler%1:06:00") :comments Office)
     (LF-PARENT ONT::device)
     )
    )
   )
  (W::staple
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("staple%1:06:02") :comments Office)
     (LF-PARENT ONT::device)
     )
    )
   )
  ((W::paper w::clip)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::paper W::clips))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("paper_clip%1:06:00") :comments Office)
     (LF-PARENT ONT::device)
     )
    )
   )
  (w::can
   (SENSES
    ((LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     (example "throw it in the trash can")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("can%1:06:00") :comments Office)
     )
    )
   )
   (w::basket
   (SENSES
    ((LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     (example "throw it in the waste basket")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("basket%1:06:00") :comments Office)
     )
    )
   )
   (w::wastebasket
   (SENSES
    ((LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     (example "throw it in the waste basket")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("wastebasket%1:06:00") :comments Office)
     )
    )
   )
     (w::cubicle
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("cubicle%1:06:00") :comments Office)
     (LF-PARENT ONT::internal-enclosure)
     (example "you have a very nice cubicle to work in")
     )
    )
   )
  (w::elevator
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("elevator%1:06:00") :comments Office)
     (LF-PARENT ONT::device)
     (example "take the elevator to the fifth floor")
     )
    )
   )
  (w::escalator
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("escalator%1:06:00") :comments Office)
     (LF-PARENT ONT::device)
     (example "take the escalator to the fifth floor")
     )
    )
   )
  (w::lift
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("lift%1:06:00") :comments Office)
     (LF-PARENT ONT::device)
     (example "take the lift to the fifth floor")
     )
    )
   )

  
  (w::stair
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("stairs%1:06:00") :comments Office)
     (LF-PARENT ONT::stairs)
     (example "better yet, take the stairs to the fifth floor" "the lowest stair")
     (templ bare-pred-templ) 
     )
    )
   )

   (w::med
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080729 :change-date nil :comments nil)
     (LF-PARENT ont::medication)
     (example "take your meds")
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
  (w::staircase
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070814 :change-date nil :wn ("stairs%1:06:00") :comments Office)
     (LF-PARENT ONT::stairs)
     (example "better yet, take the staircase to the fifth floor")
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
 
  (W::technology
   (SENSES
    ( (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("technology%1:04:00") :comments Office)
     (LF-PARENT ONT::technology)
     )
    )
   )
  (W::nanotechnology
   (SENSES
    ((LF-PARENT ONT::technology)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::reception
   (SENSES
    ( (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("reception%1:14:00") :comments Office)
     (LF-PARENT ONT::gathering-event)
     (example "your visitor is waiting in the reception area")
     )
    )
   )
  
  (W::DVD
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("dvd%1:06:00") :comments calo-y1script)
     (LF-PARENT ont::data-storage-medium)
     (PREFERENCE 0.96) ; prefer compound if it's dvd drive
     )
    )
   )
  ((W::D w::V w::D)
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::data-storage-medium)
     (PREFERENCE 0.96) ; prefer compound if it's dvd drive
     )
    )
   )
  ((w::digital w::video w::disk)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::digital w::video w::disks))))
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::data-storage-medium)
     )
    )
   )
  (W::CDRW
   (SENSES
    ((meta-data :origin allison :entry-date 20040922 :change-date nil :comments caloy2)
     (LF-PARENT ont::internal-computer-storage)
     (example "it has a cdrw dvd drive")
     )
    )
   )
  ((W::C w::D w::R w::W)
   (SENSES
    ((meta-data :origin allison :entry-date 20040922 :change-date nil :comments caloy2)
     (LF-PARENT ont::internal-computer-storage)
     (example "it has a cdrw dvd drive")
     )
    )
   )

  (W::CD
   (SENSES
    ((meta-data :origin allison :entry-date 20040922 :change-date nil :wn ("cd%1:06:00") :comments caloy2)
     (LF-PARENT ont::data-storage-medium)
     (example "I want to be able to burn cds")
     (PREFERENCE 0.96) ; prefer compound if it's cd rom drive
     )
    )
   )
    ((W::C w::D)
   (SENSES
    ((meta-data :origin allison :entry-date 20040922 :change-date nil :comments caloy2)
     (LF-PARENT ont::data-storage-medium)
     (example "I want to be able to burn cds")
     (PREFERENCE 0.96) ; prefer compound if it's cd rom drive
     )
    )
   )
 (w::floppy
   (SENSES
    ((meta-data :origin calo :entry-date 20041201 :change-date nil :wn ("floppy%1:06:00") :comments caloy2)
     (LF-PARENT ont::data-storage-medium)
     (example "do they still make floppy drives")
     )
    )
   )
   (w::tape
   (SENSES
    ((meta-data :origin plow :entry-date 20050404 :change-date nil :wn ("tape%1:06:01") :comments nil)
     (LF-PARENT ont::data-storage-medium)
     (example "do they carry books on tape")
     )
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("tape%1:06:00") :comments Office)
     (LF-PARENT ONT::material)
     (example "use a piece of tape to fasten the box")
     )
    )
   )
   (w::film
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     (LF-PARENT ont::material)
     (example "35mm film")
     )
    )
   )
   (w::filmstrip
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     (LF-PARENT ont::material)
     )
    )
   )
   (w::offer
   (SENSES
    ((meta-data :origin plow :entry-date 20051004 :change-date nil :wn ("offer%1:10:01") :comments nil)
     (LF-PARENT ont::giving)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt W::for w::on)))))
     (example "make an offer")
     )
    )
   )
   ;; we need to define the nominalization to be able to use determiners
   (w::booking
   (SENSES
    ((meta-data :origin plot :entry-date 20081112 :change-date nil :comments nil :wn ("booking%1:04:00"))
     (LF-PARENT ont::reserve)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt W::for w::of)))))
     (example "let me show you how to do a booking for a patient")
     )
    )
   )
  ((w::compact w::disk)
   (SENSES
    ((meta-data :origin allison :entry-date 20040922 :change-date nil :wn ("compact_disk%1:06:00") :comments caloy2)
     (LF-PARENT ont::data-storage-medium)
     (example "can it play compact disks")
     (PREFERENCE 0.96) ; prefer compound if it's cd rom drive
     )
    )
   )

  ((W::CD W::ROM)
   (SENSES
    ((meta-data :origin calo :entry-date 20040622 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::internal-computer-storage)
     (example "I need a cd rom")
     )
    )
   )
  ((W::C w::D W::ROM)
   (SENSES
    ((meta-data :origin calo :entry-date 20040622 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::internal-computer-storage)
     (example "I need a cd rom")
     )
    )
   )
  (W::CDROM
   (SENSES
    ( (meta-data :origin calo :entry-date 20040622 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::internal-computer-storage)
     (example "I need a cdrom")
     )
    )
   )

  ((W::HARD W::DRIVE)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::hard W::drives))))
   (SENSES
    ( (meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("hard_drive%1:06:00") :comments calo-y1script)
     (LF-PARENT ont::io-device)
     )
    )
   )
   ((W::DISK W::DRIVE)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::disk W::drives))))
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("disk_drive%1:06:00") :comments calo-y1script)
     (LF-PARENT ont::io-device)
     )
    )
   )
  ((W::HARD W::DISK)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::hard W::disks))))
   (SENSES
    ( (meta-data :origin calo :entry-date 20040421 :change-date nil :wn ("hard_disk%1:06:00") :comments calo-y1script)
     (LF-PARENT ont::internal-computer-storage)
     )
    )
   )
  
  (W::DRIVE
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("drive%1:06:03") :comments calo-y1script)
     (LF-PARENT ont::io-device)
     (PREFERENCE 0.98) ; prefer compound
     )
    ((LF-PARENT ONT::driving-trip)
     (example "the drive to atlanta")
     (meta-data :origin ralf :entry-date 20040809 :change-date nil :wn ("drive%1:04:00") :comments nil)
     )
    )
   )
  ((W::ZIP W::DRIVE)
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::io-device)
     )
    )
   )
  ((W::memory W::stick)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments caloy3)
     (LF-PARENT ont::io-device)
     )
    )
   )
  ((W::thumb W::drive)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments caloy3)
     (LF-PARENT ont::io-device)
     )
    )
   )
  ((W::jump W::drive)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments caloy3)
     (LF-PARENT ont::io-device)
     )
    )
   )
  (W::GADGETRY
   (SENSES
    ((LF-PARENT ONT::functional-phys-OBJECT) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("gadgetry%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::GAMEPAD
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::GAMER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::HEADPHONE
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("headphone%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::HEADSET
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("headset%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::HOBBYIST
   (SENSES
    ((LF-PARENT ONT::specialist) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("hobbyist%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SELLER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("seller%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SHAREWARE
   (SENSES
    ((LF-PARENT ONT::computer-software) (TEMPL MASS-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040408 :CHANGE-DATE NIL :wn ("shareware%1:10:00")
      :COMMENTS y1v5))))
  (W::SHOPPER
   (SENSES
    ((LF-PARENT ONT::consumer) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("shopper%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::consumer
   (SENSES
    ((LF-PARENT ONT::consumer) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060629 :CHANGE-DATE NIL :wn ("consumer%1:18:00")
      :COMMENTS nil))))
   (W::customer
   (SENSES
    ((LF-PARENT ONT::consumer) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060629 :CHANGE-DATE NIL :wn ("customer%1:18:00")
      :COMMENTS nil))))
   (W::client
   (SENSES
    ((LF-PARENT ONT::consumer) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060629 :CHANGE-DATE NIL :wn ("client%1:18:01")
      :COMMENTS nil))))
   (W::SOFTWARE
   (SENSES
    ((LF-PARENT ONT::computer-SOFTWARE) (TEMPL MASS-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("software%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SOUNDCARD
   (SENSES
    ((LF-PARENT ONT::computer-card) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SPREADSHEET
   (SENSES
    ((LF-PARENT ONT::information-function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("spreadsheet%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::STAR
   (SENSES
    ((LF-PARENT ONT::natural-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("star%1:17:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::travel
   (SENSES
    ((meta-data :origin calo :entry-date 20050216 :change-date nil :wn ("travel%1:04:00") :comments caloy2)
     (example "the projector needs to be light because I want it for travel")
     (LF-PARENT ont::travel)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  
  (W::burner
   (SENSES
    ((meta-data :origin allison :entry-date 20041021 :change-date nil :comments caloy2)
     (LF-PARENT ont::io-device)
     )
    )
   )
   (W::player
   (SENSES
    ((meta-data :origin calo :entry-date 20041201 :change-date nil :comments caloy2)
     (LF-PARENT ont::io-device)
     )
    )
   )
    
  (W::HD
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::io-device)
     (example "a 40 gig HD")
     )
    )
   )
   ((W::H w::D)
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::io-device)
     (example "a 40 gig H D")
     )
    )
   )
     (W::wireless
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("wireless%1:10:01") :comments nil)
     (example "does the hotel have free wireless access")
     (LF-PARENT ONT::WIRELESS)
     (templ mass-pred-templ)
     )
    )
   )
  (W::WIFI
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("wifi%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::WIRELESS)
     (templ mass-pred-templ)
     )
    )
   )
   ((W::WI W::FI)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::wi W::fis))))
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::WIRELESS)
      (lf-form w::wifi)
      (templ mass-pred-templ)
     )
    )
   )
  (W::CARD
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("card%1:06:01") :comments calo-y1script)
     (LF-PARENT ONT::COMPUTER-CARD)
     (preference .98)
     )
    ((meta-data :origin calo :entry-date 20040607 :change-date  20060222  :comments y1v5)
     (LF-PARENT ONT::credit-card)
     (templ other-reln-templ)
     (preference .98)
     )
    ((meta-data :origin asma :entry-date 20111004)
     (LF-PARENT ONT::card)
     (example "playing cards")
     )
    )
   )
  (W::DIMM
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::internal-computer-storage)
     )
    )
   )
  (W::SIMM
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :comments calo-y1script)
     (LF-PARENT ont::internal-computer-storage)
     )
    )
   )
    (W::RIMM
   (SENSES
    ((LF-PARENT ONT::internal-computer-storage) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
 

  (W::SCSI
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20050522 :CHANGE-DATE NIL :wn ("scsi%1:06:00")
		:COMMENTS meeting-understanding))))
  (W::SCUZZI
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20050522 :CHANGE-DATE NIL
      :COMMENTS meeting-understanding))))
  (W::SCUZZY
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20050522 :CHANGE-DATE NIL
      :COMMENTS meeting-understanding))))
  (W::VRAM
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::INTERNAL-COMPUTER-STORAGE)
     (templ mass-pred-templ)
     )
    )
   )
   ((W::V W::RAM)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::v W::rams))))
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::INTERNAL-COMPUTER-STORAGE)
      (lf-form w::vram)
     (templ mass-pred-templ)
     )
    )
   )
   ((W::D W::RAM)
     (wordfeats (W::morph (:forms (-S-3P) :plur (W::d W::rams))))
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::INTERNAL-COMPUTER-STORAGE)
      (lf-form w::dram)
     (templ mass-pred-templ)
     )
    )
   )
  (W::DRAM
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::INTERNAL-COMPUTER-STORAGE)
     (templ mass-pred-templ)
     )
    )
   )
  (W::SDRAM
   (SENSES
    ((LF-PARENT ont::internal-computer-storage) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))


  (W::RAM
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("ram%1:06:01") :comments calo-y1script)
     (LF-PARENT ont::internal-computer-storage)
     (templ mass-pred-templ)
     )
    )
   )
  (W::rom
   (SENSES
    ((meta-data :origin calo :entry-date 20031201 :change-date nil :wn ("rom%1:06:00") :comments caloy2)
     (LF-PARENT ont::internal-computer-storage)
     (templ mass-pred-templ)
     )
    )
   )
   ((w::read w::only w::memory)
     (wordfeats (W::morph (:forms (-S-3P) :plur (W::read w::only W::memories))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031201 :change-date nil :comments caloy2)
     (LF-PARENT ont::internal-computer-storage)
     (templ mass-pred-templ)
     )
    )
   )
  ((w::random w::access w::memory)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::random w::access W::memories))))
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("random_access_memory%1:06:00") :comments calo-y1script)
     (LF-PARENT ont::internal-computer-storage)
     (templ mass-pred-templ)
     )
    )
   )
  ((W::DISK W::SPACE)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040421 :change-date nil :wn ("disk_space%1:15:00") :comments calo-y1script)
     (LF-PARENT ont::internal-computer-storage)
     (templ mass-pred-templ)
     )
    )
   )

   (W::DISK
   (SENSES
    ((LF-PARENT ONT::internal-computer-storage) (TEMPL COUNT-PRED-TEMPL)
     (PREFERENCE 0.96) ; prefer compound if it's hard disk
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("disk%1:06:03")
      :COMMENTS HTML-PURCHASING-CORPUS)))
   )

  (W::DISC
   (SENSES
    ((LF-PARENT ONT::internal-computer-storage) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20041201 :CHANGE-DATE NIL :wn ("disc%1:06:03") :COMMENTS caloy2)))
   )

   (W::DISKETTE
   (SENSES
    ((LF-PARENT ONT::data-storage-medium) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("diskette%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MEMORY
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("memory%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::internal-computer-storage)
     (templ mass-pred-templ)
     )
    )
   )

  ((W::FLASH W::MEMORY)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("flash_memory%1:06:00") :comments plow-req)
     (LF-PARENT ONT::data-storage-medium)
     (templ mass-pred-templ)
     )
    )
   )
  ((W::FLASH W::DRIVE)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :comments plow-req)
     (LF-PARENT ONT::data-storage-medium)
     (templ count-pred-templ)
     )
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments caloy3)
     (LF-PARENT ont::io-device)
     )
    )
   )
  (w::flash
   (SENSES
;    ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("flash%1:11:00") :comments plow-req)
;     (LF-PARENT ONT::event)
;     (example "a flash of light")
;     )
    ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("flash%1:06:00") :comments plow-req)
     (LF-PARENT ONT::device-component)
     (example "does the camera have a flash")
     )
    )
   )
  (W::CPU
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("cpu%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::COMPUTER-PROCESSOR)
     )
    )
   )

  (W::processor
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("processor%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::COMPUTER-PROCESSOR)
     )
    )
   )
  (W::package
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("package%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::package)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
   (W::box
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20050225 :change-date nil :wn ("box%1:06:00") :comments nil)
     ;(LF-PARENT ONT::small-container)
     (lf-parent ont::box)
     (example "paint the box red")
     (TEMPL pred-subcat-contents-templ)
     )
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
     (example "put the name in the text box")
     (LF-PARENT ONT::text-field)
     )
    )
   )
   (W::discipline
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("discipline%1:09:00") :comments nil)
     (example "the discipline of computer technology")
     (LF-PARENT ONT::discipline)
     )
    )
   )

   (W::field
   (SENSES
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :wn ("field%1:14:03") :comments nil)
     (example "put the name in the author field")
     (LF-PARENT ONT::text-field)
     )
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("field%1:09:00") :comments nil)
     (example "the field of computer technology")
     (LF-PARENT ONT::discipline)
     )
    )
   )
   
   (W::slot
    (SENSES
     ((meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
      (example "put the name in the author slot")
      (LF-PARENT ONT::text-field)
      )
     ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("slot%1:06:02") :comments html-purchasing-corpus)
      (LF-PARENT ONT::computer-part)
      (TEMPL OTHER-RELN-TEMPL)
      )
     ))   

   (W::JACK
    (SENSES
     ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
      (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("jack%1:06:04")
		 :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::JOYSTICK
    (SENSES
     ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
      (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("joystick%1:06:01")
		 :COMMENTS HTML-PURCHASING-CORPUS))))

   (W::blank
   (SENSES
    ((meta-data :origin plow :entry-date 20050326 :change-date nil :comments nil)
     (example "fill in the blanks")
     (LF-PARENT ONT::text-field)
     )
    )
   )
   (w::conversion
   (senses
    ((lf-parent ont::change-format)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "I don't know the conversion of gigabytes into bytes")
     (meta-data :origin allison :entry-date 20041027 :change-date 20090504 :comments lf-restructuring :wn ("conversion%1:04:00"))
     )
    ))
   (w::adjustment
   (senses
    ((lf-parent ont::adjust)
     (TEMPL OTHER-RELN-THEME-TEMPL)
      (example "make an adjustment to the procedure")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("adjustment%1:04:00") :comments nil)
     )
    ))
   (w::alteration
   (senses
    ((lf-parent ont::adjust)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "make an alteration to the procedure")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("alteration%1:04:01") :comments nil)
     )
    ))
   (w::modification
   (senses
    ((lf-parent ont::modify)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "make a modification to the procedure")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date 20090504 :wn ("modification%1:04:00") :comments nil)
     )
    ))
  (w::process
   (senses
    ((lf-parent ont::process)
     (templ other-reln-templ)
     (example "the process for solving this problem")
     (meta-data :origin calo :entry-date 20040622 :change-date 20050817 :comments lf-restructuring :wn ("process%1:03:00"))
     )	   	   	   	   
    ))
;  (w::research
;   (senses
;    ((lf-parent ont::action)
;     (templ bare-pred-templ)
;     (example "conduct research to solve the problem")
;     (meta-data :origin calo-ontology :entry-date 20051213 :change-date 20050817 :wn ("research%1:04:00") :comments nil)
;     )                             
;    ))
  (w::procedure
   (senses
    ((lf-parent ont::action)
     (example "execute the procedure")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :comments nil :wn ("procedure%1:04:00" "procedure%1:04:02" "procedure%1:04:01"))
;     (preference .92)
     )
     ((lf-parent ont::procedure)
      (templ count-pred-templ)
     (templ other-reln-templ)
     (example "the procedure for solving this problem")
     (meta-data :origin calo :entry-date 20040621 :change-date 20050817 :wn ("procedure%1:04:00") :comments lf-restructuring)
     )
    ))
  (w::recipe
   (senses
    ((lf-parent ont::recipe)
     (templ other-reln-templ)
     (example "follow the recipe")
     (meta-data :origin integrated-learning :entry-date 20050817  :change-date 20050817 :wn ("recipe%1:10:00") :comments nil)
     )	   	   	   	   
    ))
  (w::policy
   (senses
    ((lf-parent ont::policy)
     (templ other-reln-templ)
     (example "the policy for buying computers")
     (meta-data :origin calo :entry-date 20050324 :change-date 20050817 :wn ("policy%1:09:00") :comments lf-restructuring)
     )	   	   	   	   
    ))
  (w::proposal
   (senses
    ((lf-parent ont::proposal)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (example "submit a proposal for a project")
     (meta-data :origin calo :entry-date 20050328 :change-date 20050817 :wn ("proposal%1:10:00") :comments lf-restructuring)
     )	   	   	   	   
    ))
  (w::proposition
   (senses
    ((lf-parent ont::proposal)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (example "I have a proposition for a new project")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date 20050817 :wn ("proposition%1:10:01") :comments nil)
     )	   	   	   	   
    ))
   (w::technique
   (senses
    ((lf-parent ont::procedure)
     (templ other-reln-templ (xp (% W::pp (W::ptype (? pt W::for)))))
     (example "the technique for solving this problem")
     (meta-data :origin calo :entry-date 20040621 :change-date 20050817 :wn ("technique%1:09:00") :comments lf-restructuring)
     )	   	   	   	   
    ))
    (W::patent
   (SENSES
    ((EXAMPLE "he obtained a patent for the invention")
     (meta-data :origin mobius :entry-date 20080729 :change-date 20090504 :comments nil)
     (LF-PARENT ONT::reserve)
     (templ other-reln-theme-templ)
     )
    )
   )
  (W::piston
   (SENSES
    ((EXAMPLE "the resulting explosion drives the piston downwards")
     (meta-data :origin mobius :entry-date 20080729 :change-date nil :comments nil)
     (LF-PARENT ONT::device)
     )
    )
   ) 
   (w::approach
   (senses
    ((lf-parent ont::procedure)
     (templ other-reln-templ (xp (% W::pp (W::ptype (? pt W::for)))))
     (example "the approach for solving this problem")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("approach%1:04:02") :comments lf-restructuring)
     )	   	   	   	   
    ))
  (W::PAIR
   (SENSES
    ((LF-PARENT ONT::quantity)
     (TEMPL classifier-count-pl-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20090520 :wn ("pair%1:14:00") :COMMENTS HTML-PURCHASING-CORPUS))))
   
  (W::bundle
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20090520 :comments html-purchasing-corpus)
     (LF-PARENT ONT::quantity)
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
  (W::BUDGET
   (SENSES
    ;; note that this subcat is restricted to abstract objects like projects -- budgets for people or organizations
    ;; are considered more general and get assoc-with interpretations
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::BUDGET)
     (example "the budget of the project")
     (TEMPL OTHER-RELN-TEMPL )
     )
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("budget%1:21:02") :comments calo-y1script)
     (LF-PARENT ONT::BUDGET)
     (example "our budget of 500 dollars")
     (TEMPL reln-subcat-of-units-TEMPL (xp (% W::pp (W::ptype (? pt W::for w::of)))))
     (preference .98)
     )
    )
   )
   (W::ACCESS
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL MASS-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
		:COMMENTS HTML-PURCHASING-CORPUS))))
    (W::ABUSE
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
      (W::ACCELERATOR
   (SENSES
    ((LF-PARENT ONT::MANUFACTURED-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("accelerator%1:06:02" "accelerator%1:06:00" "accelerator%1:06:01")))))
  (W::AD
   (SENSES
    ((LF-PARENT ONT::information) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("ad%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::ADVANCE
   (SENSES
    ((LF-PARENT ONT::improve) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("advance%1:11:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::AGE
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("age%1:07:00")
		:COMMENTS HTML-PURCHASING-CORPUS))))
    (W::ALARM
     (SENSES
      ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
       (W::ALBUM
   (SENSES
    ((LF-PARENT ONT::MANUFACTURED-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("album%1:10:00" "album%1:06:00")))))
  (W::ALLOY
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("alloy%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ALUMINUM
   (SENSES
    ((LF-PARENT ONT::MAterial) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("aluminum%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::ALUMINIUM
   (SENSES
    ((LF-PARENT ONT::MAterial) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("aluminium%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::AMBITION
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("ambition%1:07:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::AMENITY
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("amenity%1:07:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((W::air w::conditioning)
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060609 :CHANGE-DATE NIL :wn ("air_conditioning%1:06:00")
      :COMMENTS plow-req))))
  (W::heating
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060609 :CHANGE-DATE NIL
      :COMMENTS plow-req))))
  (W::ANGLE
   (SENSES
    ((LF-PARENT ONT::shape) (TEMPL COUNT-PRED-TEMPL)
			   (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("angle%1:25:00")
				      :COMMENTS HTML-PURCHASING-CORPUS))
    ;; MD FIXME -- potential duplicate
    ((meta-data :origin lam :entry-date 20050706 :change-date nil :wn ("angle%1:25:00") :comments benoit-train )
     (LF-PARENT ONT::Location)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )
   (W::ANIMATION
   (SENSES
    ((LF-PARENT ONT::image) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ANIMATOR
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("animator%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::APPEAL
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("appeal%1:07:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::APPLICANT
   (SENSES
    ((LF-PARENT ONT::person) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("applicant%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::usage
   (SENSES
    ((LF-PARENT ONT::use) (TEMPL other-reln-theme-TEMPL)
     (example "it characterizes normal usage")
     (META-DATA :ORIGIN step :ENTRY-DATE 20080630 :CHANGE-DATE NIL :COMMENTS nil :wn ("usage%1:04:00")))))
  (W::ARCHITECTURE
   (SENSES
    ((LF-PARENT ONT::computer-hardware) (TEMPL mass-PRED-TEMPL)
     (example "the architecture of the computer")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("architecture%1:07:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
   ((LF-PARENT ONT::discipline) (TEMPL other-reln-templ)
    (example "he studies architecture")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("architecture%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ;; basic input output system -- firmware
  (W::BIOS
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::computer-firmware) (TEMPL COUNT-PRED-TEMPL)
     (example "you can turn it on in the bios")
     (META-DATA :ORIGIN allison :ENTRY-DATE 20040922 :CHANGE-DATE NIL
		:COMMENTS caloy2))))

  (W::CODEC
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))

  (W::ARRAY
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NI
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ART
   (SENSES
    ((LF-PARENT ONT::discipline)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::music
   (SENSES
    ((LF-PARENT ONT::discipline)
     (templ mass-pred-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20060712 :CHANGE-DATE NIL
      :COMMENTS caloy3))))
  (W::AUDIO
   (SENSES
    ((LF-PARENT ONT::audio) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
		:COMMENTS HTML-PURCHASING-CORPUS))
    ;; MD FIXME potential duplicate
    ((LF-PARENT ONT::AUDIO)
     (meta-data :origin calo :entry-date 20050215 :change-date nil :wn ("audio%1:10:00") :comments caloy2)
     )
    )
   )
  (W::AWARD
   (SENSES
    ((LF-PARENT ONT::prize) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BACKSIDE
   (SENSES
    ((LF-PARENT ONT::object-dependent-location) (TEMPL gen-part-of-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("backside%1:15:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::BALANCE
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BENCHMARK
   (SENSES
    ((LF-PARENT ONT::function-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BENEFIT
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BONUS
   (SENSES
    ((LF-PARENT ONT::prize) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BOOKKEEPER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("bookkeeper%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BOOST
   (SENSES
    ((LF-PARENT ONT::adjust) (TEMPL other-reln-theme-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BRAND
   (SENSES
    ((LF-PARENT ONT::name) (TEMPL gen-part-of-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("brand%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BRICK
   (SENSES
    ((LF-PARENT ONT::Material) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("brick%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BRIEFCASE
   (SENSES
    ((LF-PARENT ONT::MANUFACTURED-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("briefcase%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BUCK
   (SENSES
    ((LF-PARENT ONT::Money-unit) (TEMPL attribute-unit-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("buck%1:21:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BUFFER
   (SENSES
    ((LF-PARENT ONT::internal-computer-storage) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("buffer%1:06:03")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BUILDER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("builder%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::BUZZ
   (SENSES
    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CABLE
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::Connector
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("connector%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::plug
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CACHE
   (SENSES
    ((LF-PARENT ont::internal-computer-storage) (TEMPL count-pred-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("cache%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CALCIUM
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("calcium%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CAMCORDER
   (SENSES
    ((LF-PARENT ONT::recording-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("camcorder%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CAMPAIGN
   (SENSES
    ((LF-PARENT ONT::action) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("campaign%1:04:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CAMPUS
   (SENSES
    ((LF-PARENT ONT::facility) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("campus%1:15:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CARBON
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("carbon%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CARTRIDGE
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CATALOG
   (SENSES
    ((LF-PARENT ONT::information-function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CATCH
   (SENSES
    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CAUTION
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CERTIFICATE
   (SENSES
    ((LF-PARENT ONT::information-function-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("certificate%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CERTIFICATION
   (SENSES
    ((LF-PARENT ONT::function-OBJECT) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CHASSIS
   (SENSES
    ((LF-PARENT ONT::manufactured-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("chassis%1:06:01" "chassis%1:06:00")))))
  (W::CHIP
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("chip%1:06:00")
		:COMMENTS HTML-PURCHASING-CORPUS))
    ;; MD FIXME potential duplicate
    ((LF-PARENT ONT::computer-part)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("chip%1:06:00") :comments caloy2)
     (example "one module in one chip")
     )
    )
   )
  (W::CIRCULATION
   (SENSES
    ((LF-PARENT ONT::function-OBJECT) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::COLLEAGUE
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
     (W::COMA
      (SENSES
       ((LF-PARENT ONT::Medical-disorders-and-conditions) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("coma%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ENTERPRISE
   (SENSES
    ((LF-PARENT ONT::enterprise) (TEMPL count-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("enterprise%1:14:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ESTATE
   (SENSES
    ((LF-PARENT ONT::MANUFACTURED-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ETHERNET
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("ethernet%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::EVOLUTION
   (SENSES
    ((LF-PARENT ONT::process) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("evolution%1:22:01" "evolution%1:22:00")))))
  (W::EXPLOIT
   (SENSES
    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("exploit%1:04:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::EXTERIOR
   (SENSES
    ((LF-PARENT ONT::object-dependent-location) (TEMPL gen-part-of-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FACTOR
   (SENSES
    ((LF-PARENT ONT::part)
     (example "there are several factors that contribute to his decision")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("factor%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FEE
   (SENSES
    ((LF-PARENT ONT::value-cost) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("fee%1:21:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FEEDBACK
   (SENSES
    ((LF-PARENT ONT::information-function-OBJECT) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("feedback%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FIBER
   (SENSES
    ((LF-PARENT ONT::material) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FIREWALL
   (SENSES
    ((LF-PARENT ONT::computer-software) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("firewall%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FIREWIRE
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::FOOTPRINT
   (SENSES
    ((LF-PARENT ONT::size) (TEMPL other-reln-templ)
     (example "the system's footprint")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::designer
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::improvement
   (SENSES
    ((LF-PARENT ONT::improve) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ACCOUNT
   (SENSES
    ((meta-data :origin calo :entry-date 20040205 :change-date nil :wn ("account%1:26:00") :comments calo-y1variants)
     (example "charge it to my account")
     (LF-PARENT ONT::account)
     (templ other-reln-templ)
     )
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :comments naive-subjects)
     (LF-PARENT ONT::chronicle)
     (example "he wrote a descriptive account of his adventures")
     )
    )
   )
    (W::GRANT
   (SENSES
    ((meta-data :origin calo :entry-date 20040406 :change-date nil :wn ("grant%1:21:00") :comments calo-y1v3)
     (example "charge it to the grant")
     (LF-PARENT ONT::account)
     (templ other-reln-templ)
     )
    )
   )
    (W::FUND
     (SENSES
      ((meta-data :origin calo :entry-date 20040406 :change-date nil :wn ("fund%1:21:00") :comments calo-y1v3)
       (example "charge it to the extra funds")
       (LF-PARENT ONT::account)
       (templ other-reln-templ)
       )
      )
     )
  (W::FUNDING
   (SENSES
    ((meta-data :origin calo :entry-date 200400505 :change-date nil :wn ("funding%1:21:00") :comments calo-y1v3)
     (example "what kind of funding do you have")
     (LF-PARENT ONT::account)
     (templ mass-pred-templ)
     )
    )
   )
    (W::BILL
     (SENSES
      ((meta-data :origin calo :entry-date 20040505 :change-date nil :wn ("bill%1:10:01") :comments calo-y1variants)
       (example "put it on my bill")
       (LF-PARENT ONT::account-payable)
       (templ other-reln-templ)
       )
      )
     )
    (W::INVOICE
     (SENSES
      ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("invoice%1:10:00") :comments projector-purchasing)
       (LF-PARENT ONT::financial-statement)
       (example "it's printed on your invoice")
       )
      )
     )
    (W::TAB
     (SENSES
      ((meta-data :origin calo :entry-date 20040505 :change-date nil :wn ("tab%1:10:00") :comments calo-y1variants)
       (example "put it on my tab")
       (LF-PARENT ONT::account-payable)
       (templ other-reln-templ)
       )
      )
     )
    ((W::CHARGE w::CARD)
     (SENSES
    ((meta-data :origin calo :entry-date 20040205 :change-date nil :wn ("charge_card%1:21:00") :comments y1v5)
     (LF-PARENT ONT::credit-card)
     (templ other-reln-templ)
     )
    )
   )
    ((W::CREDIT w::CARD)
     (SENSES
    ((meta-data :origin calo :entry-date 20040205 :change-date nil :wn ("credit_card%1:21:00") :comments y1v5)
     (LF-PARENT ONT::credit-card)
     (templ other-reln-templ)
     )
    )
   )
  (W::ACHIEVEMENT
   (SENSES
    ((LF-PARENT ONT::FUNCTION-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("achievement%1:04:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ACCOMPLISHMENT
   (SENSES
    ((LF-PARENT ONT::FUNCTION-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("accomplishment%1:04:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ACCURACY
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN) (TEMPL MASS-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("accuracy%1:07:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  
  (W::APPROVAL
   (SENSES
    ((EXAMPLE "get approval to purchase it")
     (LF-PARENT ONT::allow)
     (PREFERENCE 0.97) ;; use only if there's an s-inf
     (TEMPL SUBCAT-INF-EFFECT-TEMPL)
     (meta-data :origin calo :entry-date 20030605 :change-date nil :comments calo-y1script)
     )
    ((EXAMPLE "get approval for the purchase")
     (LF-PARENT ONT::allow) 
     (TEMPL other-reln-effect-templ)
     (meta-data :origin calo :entry-date 20040128 :comments calo-y1script )
     )
    )
   )
  (W::setting
   (SENSES
    ((meta-data :origin calo :entry-date 20041206 :change-date 20090513 :comments caloy2)
     (LF-PARENT ONT::set-up-device)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "those are the default settings")
     )
    ((meta-data :origin step :entry-date 20080705 :change-date nil :comments step3)
     (LF-PARENT ONT::setting)
     )
    )
   )
  (W::test
   (SENSES
    ((meta-data :origin calo :entry-date 20040119 :change-date nil :wn ("test%1:04:02") :comments caloy2)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "this is a test")
     )
    )
   )
   (W::exam
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "he passed all his exams")
     )
    )
   )
   (W::quiz
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "he passed all his exams")
     )
    )
   )
   (W::trial
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "the trial is next month")
     )
    )
   )
;    (W::examination
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
;     (LF-PARENT ONT::scrutiny)
;     (TEMPL OTHER-RELN-THEME-TEMPL)
;     (example "he passed the examination")
;     )
;    )
;   )
   (W::experiment
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "this is an experiment")
     )
    )
   )
;  (W::rating
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("rating%1:09:00") :comments projector-purchasing)
;     (LF-PARENT ONT::scrutiny)
;     (example "what is the lumen rating")
;     )
;    )
;   )
;  (W::score
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("score%1:09:00") :comments projector-purchasing)
;     (LF-PARENT ONT::scrutiny)
;     (example "what is the final score")
;     )
;    )
;   )
  ; :nom
;  (W::evaluation
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("evaluation%1:04:00") :comments projector-purchasing)
;     (LF-PARENT ONT::scrutiny)
;     (TEMPL OTHER-RELN-THEME-TEMPL)
;     (example "is there a performance evaluation")
;     )
;    )
;   )
  (W::scrutiny
   (SENSES
    ((meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("scrutiny%1:04:00") :comments pq0083)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "subject to scrutiny")
     )
    )
   )
  (W::inspection
   (SENSES
    ((meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("inspection%1:04:00") :comments pq0083)
     (LF-PARENT ONT::scrutiny)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "subject to inspection")
     )
    )
   )
  (W::kit
   (SENSES
    ((meta-data :origin calo :entry-date 20050509 :change-date nil :comments projector-purchasing)
     (LF-PARENT ONT::Functional-phys-object)
     (example "I need the power conversion kit")
     )
    )
   )
  (W::gear
   (SENSES
    ((meta-data :origin calo :entry-date 20050509 :change-date nil :wn ("gear%1:06:01") :comments projector-purchasing)
     (LF-PARENT ONT::Functional-phys-object)
     (example "I need the power conversion gear")
     )
    )
   )
;  (W::CONFIGURATION
;   (SENSES
;    ((meta-data :origin calo :entry-date 20040414 :change-date 20090504 :wn ("configuration%1:09:00") :comments calo-y1v4)
;     (LF-PARENT ONT::set-up-device)
;     (TEMPL OTHER-RELN-THEME-TEMPL)
;     )
;    )
;   )
  (W::organization
   (SENSES
;    ((meta-data :origin calo :entry-date 20040414 :change-date nil :wn ("organization%1:07:00") :comments nil)
;     (LF-PARENT ONT::ARRANGING)
;     (example "what is the organization of the lexicon")
;     (TEMPL OTHER-RELN-THEME-TEMPL)
;     )
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("organization%1:14:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::organization)
     )
    )
   )
  (W::market
   (SENSES
    ((meta-data :origin plow :entry-date 20060306 :change-date nil :comments nil)
     (LF-PARENT ONT::financial-organization)
     (example "the stock market")
     )
    )
   )
   (W::administration
   (SENSES
    ((meta-data :origin plow :entry-date 20060306 :change-date nil :wn ("administration%1:14:00") :comments nil)
     (LF-PARENT ONT::organization)
     )
    )
   )

  (W::DEFAULT
   (SENSES
    ((meta-data :origin calo :entry-date 20041206 :change-date 20090513 :wn ("default%1:09:00") :comments caloy2)
     (LF-PARENT ONT::set-up-device)
     (templ other-reln-theme-templ)
     (example "what is the default")
     )
    )
   )
    (W::ORDER
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("order%1:10:01") :comments calo-y1script)
     (LF-PARENT ONT::ORDER)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (example "send the order to purchasing")
     )
    )
   )
  (W::req
   (SENSES
    ((meta-data :origin calo :entry-date 20031211 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::order)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (example "send the req to purchasing")
     )
    )
   )
  (W::requisition
   (SENSES
    ((meta-data :origin calo :entry-date 20031211 :change-date nil :wn ("requisition%1:10:01") :comments calo-y1script)
     (LF-PARENT ONT::order)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (example "send the requisition to purchasing")
     )
    )
   )

  (W::VENDOR
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("vendor%1:18:00") :comments calo-y1script)
     (LF-PARENT ONT::supplier)
     )
    )
   )
   (W::PROVIDER
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("provider%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::supplier)
     )
    )
   )
    (W::carrier
   (SENSES
    ((meta-data :origin plow-travel :entry-date 20070116 :change-date nil :wn ("provider%1:18:00") :comments google-sms)
     (LF-PARENT ONT::supplier)
     (example "click on the carrier button")
     )
    )
   )
   (W::MANUFACTURER
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("manufacturer%1:14:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::supplier)
     )
    )
   )
   (W::INDUSTRY
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::enterprise)
     )
    )
   )
   (W::bank
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("bank%1:14:00") :comments Office)
     (LF-PARENT ONT::financial-institution)
     )					
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bank%1:17:01"))
     (LF-PARENT ONT::shore)
     (example "the people are on the river bank")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  ((W::stock w::exchange)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060714 :change-date nil :wn ("stock_exchange%1:06:00") :comments caloy3)
     (LF-PARENT ONT::financial-institution)
     )
    )
   )
   (W::BUSINESS
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ont::enterprise)
     )
    )
   )
   (W::marketing
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ont::enterprise)
     )
    )
   )
   (W::DEALER
   (SENSES
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("dealer%1:18:02") :comments projector-purchasing)
     (LF-PARENT ONT::supplier)
     )
    )
   )
   (W::AFFILIATE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::affiliate)
     )
    )
   )
   (W::PARTNER
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::affiliate)
     )
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("partner%1:18:01") :comments nil)
     (LF-PARENT ONT::family-relation)
     (templ part-of-reln-templ)
     )
    )
   )
   (W::subsidiary
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::affiliate)
     )
    )
   )
  (W::PERSON
   (wordfeats (W::morph (:forms (-s-3p) :plur W::people)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("person%1:03:00"))
     (LF-PARENT ONT::PERSON)
     )
    )
   )
   (W::human
   (SENSES
    ((meta-data :origin coord-ops :entry-date 20070418 :change-date nil :comments nil :wn ("person%1:03:00"))
     (LF-PARENT ONT::PERSON)
     (example "we have four robots and one human")
     )
    )
   )
   (W::subordinate
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (meta-data :origin calo-ontology :entry-date 20060714 :change-date nil :wn ("subordinate%1:18:00") :comments caloy3)
     )
    )
   )
   (W::mother
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("mother%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::father
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("father%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
    (W::papa
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("father%1:18:00") :comments caloy3-test-data)
     (templ kinship-reln-templ)
     )
    )
   )
    (W::mama
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("father%1:18:00") :comments caloy3-test-data)
     (templ kinship-reln-templ)
     )
    )
   )
    (W::grandson
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin cardiac :entry-date 20081212 :change-date nil :comments LM-vocab :wn ("grandson%1:18:00"))
     (templ kinship-reln-templ)
     )
    )
   )
  (W::granddaughter
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin cardiac :entry-date 20081212 :change-date nil :comments LM-vocab :wn ("granddaughter%1:18:00"))
     (templ kinship-reln-templ)
     )
    )
   )
   (W::grandmother
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("grandmother%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::grandfather
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("grandfather%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::sibling
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin cardiac :entry-date 20090408 :change-date nil :wn ("sister%1:18:00") :comments nil)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::sister
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("sister%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::brother
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("brother%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
   (W::son
   (SENSES
    ((LF-PARENT ONT::family-relation)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("son%1:18:00") :comments naive-subjects)
     (templ kinship-reln-templ)
     )
    )
   )
  (W::daughter
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("daughter%1:18:00") :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )
  (W::child
   (wordfeats (W::morph (:forms (-S-3P) :plur w::children)))
    (SENSES
     ((LF-PARENT ONT::child)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )
  (W::parent
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("parent%1:18:00") :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )
   (W::uncle
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("uncle%1:18:00") :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )
  (W::aunt
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("aunt%1:18:00") :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )
  (W::cousin
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("cousin%1:18:00") :comments naive-subjects)
      (templ kinship-reln-templ)
      )
     )
    )
    (W::nephew
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin mrs :entry-date 20061027 :change-date nil :wn ("cousin%1:18:00") :comments nil)
      (templ kinship-reln-templ)
      )
     )
    )
    (W::niece
    (SENSES
     ((LF-PARENT ONT::family-relation)
      (meta-data :origin mrs :entry-date 20061027 :change-date nil :wn ("cousin%1:18:00") :comments nil)
      (templ kinship-reln-templ)
      )
     )
    )
  (W::agent
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::agent)
     )
    )
   )
  (W::PERSONS
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::PERSON)
     (LF-FORM W::PERSON)
     (TEMPL COUNT-PRED-3p-TEMPL)
     )
    )
   )
  (W::MAN
   (wordfeats (W::morph (:forms (-s-3p) :plur W::men)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("man%1:18:00"))
     (LF-PARENT ONT::male)
     )
    )
   )
  (W::MALE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("man%1:18:00"))
     (LF-PARENT ONT::male)
     )
    )
   )
  (W::WOMAN
   (wordfeats (W::morph (:forms (-s-3p) :plur W::women)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("woman%1:18:00"))
     (LF-PARENT ONT::female)
     )
    )
   )
   (W::female
    (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("woman%1:18:00"))
     (LF-PARENT ONT::female)
     )
    )
   )
  (W::lady
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("lady%1:18:02"))
     (LF-PARENT ONT::female)
     )
    )
   )
  (W::girl
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("girl%1:18:04") :comments nil)
     (LF-PARENT ONT::child)
     )
    )
   )
  (W::boy
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("boy%1:18:03") :comments nil)
     (LF-PARENT ONT::child)
     )
    )
   )
   (W::adult
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("boy%1:18:03") :comments nil)
     (LF-PARENT ONT::person)
     )
    )
   )
    (W::caregiver
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090403 :change-date nil :comments nil)
     (LF-PARENT ONT::person)
     )
    )
   )
     ((W::care w::giver)
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090403 :change-date nil :comments nil)
     (LF-PARENT ONT::person)
     )
    )
   )
 
    (W::wife
     (wordfeats (W::morph (:forms (-s-3p) :plur w::wives)))
     (SENSES
      ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("wife%1:18:00") :comments nil)
       (LF-PARENT ONT::family-relation)
       (templ part-of-reln-templ)
       )
      )
     )
    (W::husband
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("husband%1:18:00") :comments nil)
     (LF-PARENT ONT::family-relation)
     (templ part-of-reln-templ)
     )
    )
   )
   (W::lover
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ONT::person)
     )
    )
   )
  (W::spouse
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("spouse%1:18:00") :comments nil)
     (LF-PARENT ONT::family-relation)
     (templ part-of-reln-templ)
     )
    )
   )
  ((W::significant w::other)
    (wordfeats (W::morph (:forms (-s-3p) :plur (w::significant w::others))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("significant_other%1:18:00") :comments nil)
     (LF-PARENT ONT::family-relation)
     (templ part-of-reln-templ)
     )
    )
   )

  (W::INHABITANT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("inhabitant%1:18:00"))
     (LF-PARENT ONT::inhabitant)
     )
    )
   )
  (W::FRIEND
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("friend%1:18:00"))
     (LF-PARENT ONT::friend)
     )
    )
   )
   (W::girlFRIEND
   (SENSES
    ((meta-data :origin cardiac :entry-date 20081212 :change-date nil :comments LM-vocab :wn ("girlfriend%1:18:01"))
     (LF-PARENT ONT::friend)
     )
    )
   )
    (W::boyFRIEND
   (SENSES
    ((meta-data :origin cardiac :entry-date 20081212 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::friend)
      )
    )
   )
  (W::CITIZEN
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("citizen%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::inhabitant)
     )
    )
   )
   (W::resident
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("resident%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::inhabitant)
     )
    )
   )
  (W::INDIVIDUAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("individual%1:03:00"))
     (LF-PARENT ONT::PERSON)
     )
    )
   )
  (W::CASUALTY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::unfortunate)
     )
    )
   )
  (W::FATALITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("fatality%1:11:00"))
     (LF-PARENT ONT::unfortunate)
     )
    )
   )
  (W::PATIENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("patient%1:18:00"))
     (LF-PARENT ONT::patient)
     )
    )
   )
  (W::VICTIM
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("victim%1:18:00"))
     (LF-PARENT ONT::unfortunate)
     )
    )
   )
;  ;; these are from monroe
;  ;; we should only have an adjective sense -- implement a headless rule for adj + n if necessary
;  (W::WOUNDED
;   (wordfeats (W::morph (:forms (-s-3p) :plur W::wounded)))
;   (SENSES
;    ((LF-PARENT ONT::patient)
;     (meta-data :origin monroe :entry-date nil :change-date nil :wn ("wounded%1:14:00") :comments nil)
;     (PREFERENCE 0.92) ;; prefer adjective sense
;     )
;    )
;   )
;  (W::INJURED
;   (wordfeats (W::morph (:forms (-s-3p) :plur W::injured)))
;   (SENSES
;    ((LF-PARENT ONT::patient)
;     (meta-data :origin monroe :entry-date nil :change-date nil :comments nil)
;     (PREFERENCE 0.92) ;; prefer adjective sense
;     )
;    )
;   )
  (W::WORKER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("worker%1:18:00"))
     (LF-PARENT ONT::professional)
     )
    )
   )

   (W::employee
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("employee%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::weatherman
   (SENSES
    ((meta-data :origin calo :entry-date 20060209 :change-date nil :wn ("weatherman%1:18:00") :comments weather-forecast)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::reporter
   (SENSES
    ((meta-data :origin calo :entry-date 20060503 :change-date nil :wn ("reporter%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::journalist
   (SENSES
    ((meta-data :origin calo :entry-date 20060503 :change-date nil :wn ("journalist%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::dancer
   (SENSES
    ((meta-data :origin calo :entry-date 20060503 :change-date nil :wn ("dancer%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::pilot
   (SENSES
    ((meta-data :origin calo :entry-date 20060503 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
  (W::mathematician
   (SENSES
    ((meta-data :origin calo :entry-date 20060503 :change-date nil :wn ("mathematician%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::essayist
   (SENSES
    ((meta-data :origin calo :entry-date 20060503 :change-date nil :wn ("essayist%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::theorist
   (SENSES
    ((meta-data :origin calo :entry-date 20060124 :change-date nil :wn ("theorist%1:18:00") :comments meeting-understanding)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::medalist
   (SENSES
    ((meta-data :origin calo :entry-date 20060124 :change-date nil :wn ("medalist%1:18:01") :comments meeting-understanding)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::peer
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::artist
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("artist%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::writer
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("writer%1:18:00"))
     (LF-PARENT ONT::author)
     (templ other-reln-templ)
     )
    )
   )
   (W::poet
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("poet%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::author)
     )
    )
   )
   (W::author
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("author%1:18:00"))
     (LF-PARENT ONT::author)
     (templ other-reln-templ)
     )
    )
   )
   (W::coauthor
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("coauthor%1:18:00") :comments plow-req)
     (LF-PARENT ONT::author)
     (templ other-reln-templ)
     )
    )
   )
   (W::editor
   (SENSES
    ((meta-data :origin calo :entry-date 20040716 :change-date nil :wn ("editor%1:18:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::publisher
   (SENSES
    ((meta-data :origin calo :entry-date 20040716 :change-date nil :comments html-purchasing-corpus :wn ("publisher%1:18:00"))
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
  (W::STUDENT
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("student%1:18:00" "student%1:18:01"))
     (LF-PARENT ONT::scholar)
     )
    ;; MD FIXME - potential duplicate
    ((LF-PARENT ONT::professional) 
     (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("student%1:18:01" "student%1:18:00")
					     :COMMENTS HTML-PURCHASING-CORPUS))
    )
   )
  (W::scholar
   (SENSES
    ((meta-data :origin plow :entry-date 20060620 :change-date nil :comments web-navigation :wn ("scholar%1:18:00" "scholar%1:18:02"))
     (LF-PARENT ONT::scholar)
     )
    )
   )
  
  (W::undergraduate
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("undergraduate%1:18:00") :comments caloy3)
     (LF-PARENT ONT::scholar)
     )
    )
   )
  (W::graduate
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("graduate%1:18:00") :comments caloy3)
     (LF-PARENT ONT::scholar)
     )
    )
   )
  
    (W::grad
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("grad%1:18:00") :comments caloy3)
     (LF-PARENT ONT::scholar)
     )
    )
   )
   (W::alum
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("alum%1:18:00") :comments caloy3)
     (LF-PARENT ONT::scholar)
     )
    )
   )
  (W::PROFESSIONAL
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("professional%1:18:00"))
     (LF-PARENT ONT::professional)
     )
    )
   )
  (W::FIXER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("fixer%1:18:01"))
     (LF-PARENT ONT::professional)
     (TEMPL DRV-NOM-RELN-TEMPL)
     )
    )
   )
  (W::DRIVER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (TEMPL DRV-NOM-RELN-TEMPL)
     )
    )
   )
  (W::MANAGER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::director
   (SENSES
    ((meta-data :origin calo :entry-date 200312011 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::dean
   (SENSES
    ((meta-data :origin calo :entry-date 20050404 :change-date nil :comments projector-purchasing)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::professor
   (SENSES
    ((meta-data :origin calo :entry-date 20050404 :change-date nil :wn ("professor%1:18:00") :comments projector-purchasing)
     (LF-PARENT ONT::professional)
     )
    )
   )
    (W::researcher
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("researcher%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
    (W::postdoc
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::professional)
     )
    )
   )
  ((W::post w::doc)
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::professional)
     )
    )
   )
  (W::biologist
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::musician
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     (LF-PARENT ONT::professional)
     )
    )
   )
    (W::administrator
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::secretary
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051221 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::clerk
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051221 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )

   (W::admin
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051221 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
  (W::executive
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
  (W::president
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::politician
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::senator
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::mayor
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::governor
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   ((W::attorney w::general)
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::attorney
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil :wn ("attorney%1:18:00"))
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::lawyer
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil :wn ("lawyer%1:18:00"))
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::congressman
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::congresswoman
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::congressperson
   (SENSES
    ((meta-data :origin mrs :entry-date 20061027 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     )
    )
   )
   (W::head
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("head%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     (example "head of marketing")
     )    
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::object-dependent-location)
     (example "the head of the line")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

   (W::ceo
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("ceo%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     (templ other-reln-templ)
     (example "chief executive officer")
     )
    )
   )
  (W::teacher
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("teacher%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
   (W::principal
   (SENSES
    ((LF-PARENT ONT::professional)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("principal%1:18:00"))
     )
    )
   )
    (W::scientist
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("scientist%1:18:00") :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
    (W::boss
   (SENSES
    ((meta-data :origin calo :entry-date 200312011 :change-date nil :comments calo-y1script)
     (LF-PARENT ONT::professional)
     )
    )
   )
    (W::supervisor
   (SENSES
    ((meta-data :origin calo :entry-date 200312011 :change-date nil :wn ("supervisor%1:18:00") :comments calo-y1script)
     (LF-PARENT ONT::professional)
     )
    )
   )
    (W::employer
   (SENSES
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("employer%1:18:00") :comments projector-purchasing)
     (LF-PARENT ONT::professional)
     )
    )
   )
    
  (W::ENGINEER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
     )
    )
   )
  (W::GROUP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil :wn ("group%1:03:00"))
     (LF-PARENT ONT::group-object)
     (example "a group of cars")
     (TEMPL classifier-count-pl-templ)
     )
    ((LF-PARENT ONT::group-object)
     (TEMPL count-pred-templ)
     (syntax (agr (? ag 3s 3p)))
     (SEM (F::intentional +))
     (example "the group entered the building")
     (meta-data :origin caloy-ontology :entry-date 20060220 :change-date 20090520 :comments caloy3)
     )
    )
   )
   (W::committee
   (SENSES
    ((LF-PARENT ONT::social-group)
     (TEMPL count-pred-templ)
     (meta-data :origin caloy-ontology :entry-date 20060220 :change-date nil :comments caloy3)
     )
    )
   )
   (W::synset
   (SENSES
    ((LF-PARENT ONT::grouping)
     (TEMPL classifier-count-pl-templ)
     (example "a synset of words")
     (meta-data :origin calo-ontology :entry-date 20060523 :change-date nil :wn ("synset%1:14:00") :comments nil)
     )
    )
   )
   (W::WORKGROUP
   (SENSES
    ((LF-PARENT ONT::social-group)
     (TEMPL count-pred-templ)
     (meta-data :origin caloy2 :entry-date 20050522 :change-date nil :comments meeting-understanding)
     )
    )
   )
  (W::FAMILY
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::grouping)
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
  (W::SET
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::group-object)
     (example "a set of dishes")
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
  (W::CREW
   (SENSES
     ((meta-data :origin trips :entry-date 20060803 :change-date 20110928 :comments nil)
      ;; changed to new ont::crew type for obtw demo
     (LF-PARENT ONT::crew)
     )
    )
   )
  (W::orchestra
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("orchestra%1:14:00"))
     (LF-PARENT ONT::social-group)
     )
    )
   )
   (W::band
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::social-group)
     )
    )
   )
  (W::COMPATIBILITY
   (SENSES
    ((LF-PARENT ONT::function-OBJECT) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::COMPETITION
   (SENSES
    ((LF-PARENT ONT::gathering-event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("competition%1:11:00")
		:COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CONSOLE
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("console%1:06:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::COPPER
   (SENSES
    ((LF-PARENT ONT::material) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("copper%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CRYSTAL
   (SENSES
    ((LF-PARENT ONT::Material) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::DIMENSION
   (SENSES
    ((LF-PARENT ont::attribute) (TEMPL count-pred-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("dimension%1:07:00" "dimension%1:07:01")))))
  (W::ELECTRONICS
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::discipline) (TEMPL count-PRED-3p-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("electronics%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ((LF-PARENT ONT::device) (TEMPL count-PRED-3p-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20051213 :CHANGE-DATE NIL
      :COMMENTS Office))
    )
   )
  
  (W::ELEMENT
   (SENSES
    ((LF-PARENT ONT::part) (TEMPL gen-part-of-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("element%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ((meta-data :origin caet :entry-date 20111220)
     (lf-parent ont::element)
     )
    )
   )
 (W::GENIUS
   (SENSES
    ((LF-PARENT ONT::specialist) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("genius%1:18:01")))))
  (W::GIGABIT
   (SENSES
    ((LF-PARENT ONT::Memory-unit) (TEMPL substance-unit-lf-of-3s-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS :wn ("gigabit%1:23:00")))))
  (W::GIGAFLOP
   (SENSES
    ((LF-PARENT ONT::Memory-unit) (TEMPL substance-unit-lf-of-3s-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::GLITCH
   (SENSES
    ((LF-PARENT ONT::problem) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("glitch%1:26:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::GLUCOSE
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("glucose%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::GOLD
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("gold%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::DUST
   (SENSES
    ((LF-PARENT ONT::dust) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN asma :ENTRY-DATE 20111006))))
 (W::MOLD
   (SENSES
    ((LF-PARENT ONT::fungus) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN asma :ENTRY-DATE 20111006))))
  (W::GURU
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("guru%1:18:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::HARDWARE
   (SENSES
    ((LF-PARENT ONT::equipment) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::HASSLE
   (SENSES
    ((LF-PARENT ONT::problem) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  
  
;  ;; make multi-word to make analysis more consistent with road crew, digging crew, water crew
;   ((w::electrical W::CREW)
;    (wordfeats (W::morph (:forms (-S-3P) :plur (W::electrical W::crews))))
;   (SENSES
;    ((LF-PARENT ONT::social-group)
;     (meta-data :origin monroe :entry-date 20040611 :change-date nil :comments s4)
;     )
;    )
;   )
;   
;   ((w::electric W::CREW)
;    (wordfeats (W::morph (:forms (-S-3P) :plur (W::electric W::crews))))
;   (SENSES
;    ((LF-PARENT ONT::social-group)
;     (meta-data :origin monroe :entry-date 20040611 :change-date nil :comments s4)
;     )
;    )
;   )
  (W::TEAM
   (SENSES
    ((meta-data :origin coordops :entry-date 20070511 :change-date nil :comments nil :wn ("team%1:14:00"))
     (LF-PARENT ont::social-group)
     )
    )
   )
  (W::AUDIENCE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::social-group)
     )
    )
   )
  (W::CROWD
   (SENSES
     ((LF-PARENT ONT::social-group)
     (TEMPL classifier-count-pl-templ)
     (example "the crowd of people cheered")
     (PREFERENCE 0.97)
     )
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s7)
     (LF-PARENT ONT::social-group)
     (example "the crowd cheered")
     )
    )
   )

  ;; a unit of measure, a unit of electricity
  (W::UNIT
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("unit%1:23:00") :comments caloy3)
     (LF-PARENT ONT::MEASURE-UNIT)
     (example "a word is a linguistic unit")
     (TEMPL other-reln-templ)
     )
    ((LF-PARENT ONT::group-object)
     (TEMPL count-pred-templ)
     (syntax (agr (? ag 3s 3p)))
     (SEM (F::intentional +))
     (example "dispatch unit 7")
     (meta-data :origin obtw :entry-date 20110922 :change-date nil :comments demo)
     )
    )
   )
  (W::COMPANY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::military-group)
     (example "a company of soldiers")
     (TEMPL classifier-count-pl-templ)
     (PREFERENCE 0.97)
     )
    ((meta-data :origin calo :entry-date 20040113 :change-date nil :wn ("company%1:14:01") :comments calo-y1script)
     (LF-PARENT ONT::company)
     (example "a software company")
     (templ count-pred-templ)
     )
    )
   )
  (W::CORPORATION
   (SENSES
    ((meta-data :origin calo :entry-date 20040113 :change-date nil :wn ("corporation%1:14:00") :comments calo-y1script)
     (LF-PARENT ONT::company)
     (templ count-pred-templ)
     )
    )
   )
  (W::DETACHMENT
   (SENSES
    ((LF-PARENT ONT::military-group)
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
  (W::DETATCHMENT ; common misspelling
   (SENSES
    ((LF-PARENT ONT::military-group)
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
  (W::COUPLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil :wn ("couple%1:23:00"))
     (LF-PARENT ONT::quantity)
     (example "they are a couple")
     (TEMPL classifier-count-pl-templ)
     )
    )
   )
  
  (W::quantity
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("quantity%1:03:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::domain)
     (example "a quantity of five pounds")
     (SEM (F::scale F::any-scale))
     (TEMPL reln-subcat-of-units-TEMPL)
     (preference .96) ;;prefer canonical sense
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("quantity%1:07:00"))
     (LF-PARENT ONT::quantity)
     (TEMPL OTHER-RELN-TEMPL)
     (example "a quantity of water/people")
     )
    )
   )

   (W::AMNT
   (SENSES
    ((meta-data :origin trips :entry-date 2006080t3 :change-date nil :comments nil)
     (LF-PARENT ONT::quantity)
     (templ other-reln-mass-templ)
     ;(TEMPL indef-classifier-templ)
     ;; ont::of is mass or plural -- amount of cake/*person
     (example "a(n) (certain) amount of water" "a large amount of people")
     )
    )
   )
   
  (W::AMOUNT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("amount%1:03:00"))
     (LF-PARENT ONT::quantity)
     (templ other-reln-templ)
;     (TEMPL indef-classifier-templ)
     ;; ont::of is mass or plural -- amount of cake/*person
     (example "a(n) (certain) amount of water" "a large amount of people")
     )
    )
   )
;  (W::NMBER
;   (SENSES
;    ((LF-PARENT ONT::quantity)
;     (example "a certain number of books on the shelf")
;     )
;    )
;   )
  (W::NUMBER
   (SENSES
    ;; a number is now a quantifier -- all other uses are ont::domain
     ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("number%1:07:00"))
      (LF-PARENT ONT::quantity)
      (TEMPL indef-classifier-count-pl-templ)
      (example "a certain number of books on the shelf")
      )
    ((LF-PARENT ONT::number)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("number%1:23:00") :comments nil)
     (example "this parameter is a real number")
     (templ other-reln-templ)
     (preference 0.96) ;; prefer quantifier use if available
     )
    )
   )
 (W::digit
   (SENSES
    ((LF-PARENT ONT::number-object)
     (meta-data :origin plot :entry-date 20080505 :change-date nil :comments nil)
     (example "the last 4 digits of the ssn")
     (templ other-reln-templ)
     )
    )
   )

  
  (W::BIT
   (SENSES
    ;; this sense is now a quantifier
;;    ((LF-PARENT ONT::QUANTITY)
;;     (example "a bit of sand")
;;     (TEMPL indef-classifier-templ)
;;     )
    ((LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     (example "64 bit memory architecture")
     (meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("bit%1:23:00") :comment pq)
     )
    )
   )

  (W::Bunch
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::quantity)
     (example "a bunch of oranges" "a bunch of trouble")
     (TEMPL classifier-templ)
     )
    )
   )
  (W::cup
   (SENSES
    ((LF-PARENT ONT::volume-measure-unit)
     (TEMPL classifier-mass-templ)
     (example "how many calories are in a cup of carrots")
     (meta-data :origin foodkb :entry-date 20050805 :change-date 20090521 :wn ("cup%1:23:02") :comment nil)
     )
    ((LF-PARENT ONT::cup)
     (TEMPL pred-subcat-contents-templ)
     (example "a cup of coffee")
     (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("cup%1:23:01") :comment nil)
     )
    )
   )
  (W::mug
   (SENSES
    ((LF-PARENT ONT::mug)
     (meta-data :origin caet :entry-date 20111220 :change-date nil :comment nil)
     (TEMPL pred-subcat-contents-templ)
     (example "a mug of coffee")

     )
    )
   )
  (W::tablespoon
   (SENSES
    ((LF-PARENT ONT::volume-measure-unit)
     (TEMPL classifier-mass-templ)
     (example "how many calories are in a tablespoon of butter")
     (meta-data :origin foodkb :entry-date 20050809 :change-date 20090521 :wn ("tablespoon%1:23:01") :comment nil)
     )
    )
   )
   (W::teaspoon
    (SENSES
     ((LF-PARENT ONT::volume-measure-unit)
      (TEMPL classifier-mass-templ)
      (example "how many calories are in a teaspoon of butter")
       (meta-data :origin foodkb :entry-date 20050809 :change-date 20090521 :wn ("teaspoon%1:23:01") :comment nil)
     )
    )
   )
 (W::serving
   (SENSES
    ((LF-PARENT ONT::food-measure-unit)
     (TEMPL classifier-mass-templ)
     (meta-data :origin foodkb :entry-date 20050707 :change-date nil :wn ("serving%1:13:00") :comment nil)
     )
    )
   )
 (W::stick
   (SENSES
    ((LF-PARENT ONT::quantity)
     (TEMPL classifier-mass-templ)
     (example "a stick of butter/wood")
     (meta-data :origin foodkb :entry-date 20050809 :change-date 20090520 :comment nil)
     )
    )
   )
 (W::portion
   (SENSES
    ((LF-PARENT ONT::part)
     (TEMPL classifier-mass-templ)
     (meta-data :origin foodkb :entry-date 20050707 :change-date 20090605 :wn ("portion%1:13:00") :comment nil)
     (preference .96)
     )
    ((meta-data :origin fruitcarts :entry-date 20060816 :change-date nil :comments nil :wn ("part%1:09:00"))
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
 
  (W::deficiency
  (SENSES
   ((meta-data :origin cardiac :entry-date 20090408 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::LACK)
    (TEMPL OTHER-RELN-TEMPL)
    (example "a vitamin deficiency")
     )
    )
   )
  (W::shortage
   (SENSES
   ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::LACK)
    (TEMPL OTHER-RELN-TEMPL)
    (example "a shortage of sunshine")
     )
    )
   )
   (W::deficiency
   (SENSES
   ((meta-data :origin trips :entry-date 20090401 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::LACK)
    (TEMPL OTHER-RELN-TEMPL)
    (example "a vitamin deficiency")
     )
    )
   )
   (W::deficit
   (SENSES
   ((meta-data :origin ptb :entry-date 20100701 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::LACK)
    (TEMPL OTHER-RELN-TEMPL)
    (example "a budget deficit")
     )
    )
   )
   (W::incentive
   (SENSES
   ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::motive)
    (TEMPL OTHER-RELN-TEMPL)
    (example "government incentives")
     )
    )
   )
  (W::surplus
   (SENSES
   ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::surplus)
    (TEMPL OTHER-RELN-TEMPL)
    (example "a surplus of sunshine")
     )
    )
   )
  (W::excess
   (SENSES
   ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil :wn ("lack%1:26:00"))
    (LF-PARENT ONT::surplus)
    (TEMPL OTHER-RELN-TEMPL)
    (example "a surplus of sunshine")
     )
    )
   )

 (W::absence
  (SENSES
   ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("absence%1:26:00"))
    (LF-PARENT ONT::LACK)
    (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
 (W::deficiency
  (SENSES
   ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("deficiency%1:26:00"))
    (LF-PARENT ONT::LACK)
    (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::COMMODITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("commodity%1:06:00"))
     (LF-PARENT ONT::COMMODITY)
     )
    )
   )
  (W::flag
   (SENSES
    ((LF-PARENT ONT::flag)
     (meta-data :origin fruitcarts :entry-date 20041103 :change-date nil :comments nil)
     (example "under the flag")
     )
    )
   )
 
   (W::placement
   (SENSES
    ((LF-PARENT ONT::location)
     (meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :wn ("placement%1:07:00") :comments nil)
     (example "the placement of the shape should be closer")
     (templ other-reln-templ)
     )
    )
   )

   (W::dialog
   (SENSES
    ((LF-PARENT ONT::conversation)
     (meta-data :origin plow :entry-date 20050309 :change-date nil :comments nil)
     (example "put the title in the dialog box")
     )
    )
   )
   (W::discourse
   (SENSES
    ((LF-PARENT ONT::conversation)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date 20090505 :comments caloy3)
     )
    )
   )
  (W::conversation
   (SENSES
    ((LF-PARENT ONT::conversation)
     (meta-data :origin plow :entry-date 20050309 :change-date nil :wn ("conversation%1:10:00") :comments nil)
     (example "let's have a conversation about it")
     )
    )
   )
  (W::interview
   (SENSES
    ((LF-PARENT ONT::interview)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date 20070828 :comments caloy3 :wn ("interview%1:10:01"))
     (example "he is going to a job interview")
     )
    )
   )
   (W::consultation
   (SENSES
    ((LF-PARENT ONT::interview)
     (meta-data :origin plot :entry-date 20081024 :change-date nil :comments telephone-consult)
     (example "he is scheduling a telephone consultation")
     )
    )
   )
  (W::ORANGE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("orange%1:13:00"))
     (LF-PARENT ONT::fruit)
     )
    )
   )
  (W::BANANA
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("banana%1:13:00"))
     (LF-PARENT ONT::fruit)
     )
    )
   )
  (W::AVOCADO
   (SENSES
    ((LF-PARENT ONT::fruit)
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("avocado%1:13:00") :comments nil)
     (example "take an avocado")
     )
    )
   )
  (W::pear
   (SENSES
    ((LF-PARENT ONT::fruit)
     (meta-data :origin fruit-carts :entry-date 20050419 :change-date nil :wn ("pear%1:13:00") :comments nil)
     (example "move it next to the pear")
     )
    )
   )
  (W::lime
   (SENSES
    ((LF-PARENT ONT::fruit)
     (meta-data :origin fruit-carts :entry-date 20050419 :change-date nil :wn ("lime%1:13:00") :comments nil)
     (example "move it next to the lime")
     )
    )
   )
  
  ;; Myrosia 2005/06/07
  ;; we specify morph features on individual entries in SYNTAX field to have different morphological variations on the
  ;; same entry. We cannot have 2 different entries because it breaks the lexicon tool.
  (W::GRAPEFRUIT
   (SENSES
    ((LF-PARENT ONT::fruit)
     (syntax (W::morph (:forms (-none))))
     (meta-data :origin fruit-carts :entry-date 20050426 :change-date nil :wn ("grapefruit%1:13:00") :comments nil)
     (example "take two grapefruit")
     (TEMPL COUNT-PRED-3p-TEMPL)
     (PREFERENCE 0.98)
     )
    ((LF-PARENT ONT::fruit)
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("grapefruit%1:13:00") :comments nil)
     (example "take a grapefruit")
     (syntax (W::morph (:forms (-S-3P))))
     )
    )
   )
  
  (W::TOMATO
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::tomatoes))))
   (SENSES
    ((LF-PARENT ONT::fruit) ;; a fruit, but used as a veggie
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("tomato%1:13:00") :comments nil)
     (example "take a tomato")
     )
    )
   )
   (W::tomatos
   (wordfeats (W::morph (:forms NIL)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050803 :change-date 20070809 :comments nil)
     (LF-PARENT ONT::fruit)
     (TEMPL COUNT-PRED-3p-TEMPL)
     (preference .92) ;; prefer correct spelling
     )
    )
   )

  (W::cucumber
   (SENSES
    ((LF-PARENT ONT::vegetable)
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("cucumber%1:13:00") :comments nil)
     (example "take a cucumber")
     )
    )
   )
  (W::carrot
   (SENSES
    ((LF-PARENT ONT::vegetable)
     (meta-data :origin nutrition :entry-date 20050707 :change-date nil :wn ("carrot%1:13:00") :comments nil)
     (example "how many calories are in a serving of carrots")
     )
    )
   )
  (W::BOXCAR
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("boxcar%1:06:00"))
     (LF-PARENT ONT::BOXCAR)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
  (W::CART
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((LF-PARENT ONT::vehicle-container)
     (TEMPL pred-subcat-contents-templ)
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :comments nil)
     (example "put the banana in the cart")
     )
    )
   )
  (W::CAR
 ;;  (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("car%1:06:00"))
     (LF-PARENT ONT::land-vehicle)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("car%1:06:01"))
     (LF-PARENT ONT::BOXCAR)
     (TEMPL pred-subcat-contents-templ)
     (PREFERENCE 0.98)
     )
    )
   )
  (W::taxi
   (SENSES
    ((LF-PARENT ONT::land-vehicle)
     (meta-data :origin calo-ontology :entry-date 20060523 :change-date nil :wn ("taxi%1:06:00") :comments pq0404)
     (example "should I take a taxi from the airport")
     )
    )
   )
   (W::shuttle
   (SENSES
    ((LF-PARENT ONT::land-vehicle)
     (meta-data :origin calo-ontology :entry-date 20060523 :change-date nil :wn ("shuttle%1:06:01") :comments pq0404)
     (example "is there a hotel shuttle from the airport")
     )
    )
   )
  (W::TANKER
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("tanker%1:06:00"))
     (LF-PARENT ONT::TANKER)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
  (W::TANK
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("tank%1:06:02"))
     (LF-PARENT ONT::vehicle-container)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
  (W::VEHICLE
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("vehicle%1:06:00"))
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )
  (W::TRANSPORT
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("transport%1:04:00"))
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )
  (W::TRANSPORTATION
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )
  (W::TRAIN
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("train%1:06:00"))
     (LF-PARENT ONT::vehicle)
     )
    )
   )
  (W::subway
   (SENSES
    ((LF-PARENT ONT::vehicle)
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("subway%1:06:00") :comments plow-req)
     )
    )
   )
   (W::metro
   (SENSES
    ((LF-PARENT ONT::vehicle)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     )
    )
   )
   (W::tram
   (SENSES
    ((LF-PARENT ONT::vehicle)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data :wn ("tram%1:06:02" "tram%1:06:00" "tram%1:06:01"))
     )
    )
   )
  (W::TRUCK
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20111006 :comments nil :wn ("truck%1:06:00"))
     ;; 20111006 changed from ont::vehicle to ont::truck for obtw demo
     (LF-PARENT ONT::truck)
     )
    )
   )
 (W::report
   (SENSES
    ((meta-data :origin obtw :entry-date 20111011)
     (LF-PARENT ONT::communication)
     )
    )
   )
  (W::scout
   (SENSES
    ((meta-data :origin obtw :entry-date 20111006)
     ;; 20111006 added for obtw demo
     (LF-PARENT ONT::scout)
     )
    )
   )
  (W::TOWTRUCK
   (SENSES
    ((meta-data :origin obtw :entry-date 20111006)
     ;; 20111006 added for obtw demo
     (LF-PARENT ONT::tow-truck)
     )
    )
   )
  ((W::TOW w::TRUCK)
   (SENSES
    ((meta-data :origin obtw :entry-date 20111006)
     ;; 20111006 added for obtw demo
     (LF-PARENT ONT::tow-truck)
     )
    )
   )
 ((W::FIRE w::TRUCK)
   (SENSES
    ((meta-data :origin obtw :entry-date 20111016)
     ;; 20111016 added for obtw demo
     (LF-PARENT ONT::fire-truck)
     )
    )
   )
  (W::AUTOMOBILE
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("automobile%1:06:00"))
     (LF-PARENT ONT::land-vehicle)
     )
    )
   )

  (W::BUS
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bus%1:06:00"))
     (LF-PARENT ONT::land-vehicle)
     )
    )
   )
  (W::AMBULANCE
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ambulance%1:06:00"))
     (LF-PARENT ONT::land-vehicle)
     )
    )
   )
  (W::wheelchair
   (SENSES
    ((LF-PARENT ONT::device)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date 20060609 :wn ("wheelchair%1:06:00") :comments plow-req)
     )
    )
   )
  (W::PLANE
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plane%1:06:01"))
     (LF-PARENT ONT::AIR-VEHICLE)
     )
    )
   )
   (W::AIRPLANE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("airplane%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::AIR-VEHICLE)
     )
    )
   )
    (W::AIRCRAFT
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("aircraft%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::AIR-VEHICLE)
     )
    )
   )
    (W::AIRLINE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("airline%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::airline)
     )
    )
   )  
  (W::JET
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("jet%1:06:00"))
     (LF-PARENT ONT::air-VEHICLE)
     )
    )
   )
  (W::HELICOPTER
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("helicopter%1:06:00"))
     (LF-PARENT ONT::air-VEHICLE)
     )
    )
   )
  (W::CHOPPER
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("chopper%1:06:01"))
     (LF-PARENT ONT::air-VEHICLE)
     (LF-FORM W::helicopter)
     )
    )
   )
  (W::HELI
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((LF-PARENT ONT::air-VEHICLE)
     (LF-FORM W::helicopter)
     )
    )
   )
  (W::HELO
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((LF-PARENT ONT::air-VEHICLE)
     (LF-FORM W::helicopter)
     )
    )
   )
  (W::BOAT
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("boat%1:06:00"))
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )
  (W::SHIP
;;   (wordfeats (W::MORPH (:forms (-S-3P -load))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ship%1:06:00"))
     (LF-PARENT ONT::VEHICLE)
     )
    )
   )
  (W::ENGINE
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("engine%1:06:01"))
;     (LF-PARENT ONT::vehicle)
;     )
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::machine)
     (example "an engine is a motor that converts thermal energy to mechanical work")
     )
    )
   )
   (W::motor
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::machine)
     (example "a motor is a machine that converts other forms of energy into mechanical energy and so imparts motion")
     )
    )
   )
   (W::windmill
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::machine) ;; could make this more specific -- wind-generator
      )
    )
   )
   (W::turbine
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::machine) ;; could make this more specific -- wind-generator
      )
    )
   )
  (W::mall
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mall%1:06:01"))
     (LF-PARENT ONT::commercial-facility)
     )
    )
   )
  (W::store
   (SENSES
    ((LF-PARENT ONT::commercial-facility)
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("store%1:06:00") :comments projector-purchasing)
     )
    )
   )
   ((w::coffee W::shop)
   (SENSES
    ((LF-PARENT ONT::coffee-shop)
     (example "let me teach you how to find the nearest Starbucks coffee shop")
     (meta-data :origin sense :entry-date 20091005 :change-date nil :wn ("shop%1:06:00") :comments demo)
     )
    )
   )
  (W::shop
   (SENSES
    ((LF-PARENT ONT::commercial-facility)
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("shop%1:06:00") :comments projector-purchasing)
     )
    )
   )
  (W::bakery
   (SENSES
    ((LF-PARENT ONT::commercial-facility)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::pharmacy
   (SENSES
    ((LF-PARENT ONT::commercial-facility)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::apothecary
   (SENSES
    ((LF-PARENT ONT::commercial-facility)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::OFFICE
   (SENSES
    ((LF-PARENT ONT::business-facility)
     (meta-data :origin calo :entry-date 200312011 :change-date nil :wn ("office%1:06:00") :comments nil)
     )
    )
   )
  (W::lab
   (SENSES
    ((meta-data :origin calo :entry-date 200312011 :change-date nil :wn ("lab%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::research-facility)
     )
    )
   )

  (W::laboratory
   (SENSES
    ((meta-data :origin calo :entry-date 200312011 :change-date nil :wn ("laboratory%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::research-facility)
     )
    )
   )
   (W::pool
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("pool%1:06:00") :comments caloy3)
     (LF-PARENT ONT::athletic-facility)
     (example "does the hotel have a swimming pool")
     )
    )
   )
   (W::gym
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("gym%1:06:00") :comments caloy3)
     (LF-PARENT ONT::athletic-facility)
     (example "does the hotel have a gym")
     )
    )
   )
  (W::WAREHOUSE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("warehouse%1:06:00"))
     (LF-PARENT ONT::storage-facility)
     )
    )
   )
  (W::FACTORY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("factory%1:06:00"))
     (LF-PARENT ONT::production-facility)
     )
    )
   )
  (W::PLANT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plant%1:06:01"))
     (LF-PARENT ONT::production-facility)
     )
    ((LF-PARENT ONT::plant)
     (example "could you water my plants while I'm away")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("plant%1:03:00") :comments Office)
     )
    )
   )
  (W::seedling
   (SENSES
    ((LF-PARENT ONT::plant)
     (example "they sell plants and seedlings")
      (meta-data :origin step :entry-date 20080721 :change-date nil :comments step6 :wn ("seedling%1:20:00"))
     )
    )
   )
   (W::alga
   (SENSES
    ((LF-PARENT ONT::alga)
      (meta-data :origin wn-mappings :entry-date 20100323 :change-date nil :comments nil :wn ("alga%1:05:00::"))
     )
    )
   )
  (W::BUILDING
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("building%1:06:00"))
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::enclosure
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::compound
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("compound%1:06:00"))
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::castle
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::palace
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     (LF-PARENT ONT::structure)
     )
    )
   )
   (W::hut
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     (LF-PARENT ONT::structure)
     )
    )
   )
   (W::shed
   (SENSES
    ((meta-data :origin coordops :entry-date 20070511 :change-date nil :comments nil)
     (LF-PARENT ONT::structure)
     )
    )
   )
   (W::greenhouse
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil)
     (LF-PARENT ont::structure)
     )
    )
   )
   (W::fence
   (SENSES
    ((meta-data :origin step :entry-date 20080827 :change-date nil :comments nil)
     (LF-PARENT ont::structure)
     (example "a 10 foot high fence")
     )
    )
   )
  (W::HOUSE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("house%1:06:00"))
     (LF-PARENT ont::lodging)
     )
    )
   )
  (W::housing
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ont::lodging)
     (meta-data :origin caloy3 :entry-date 20060117 :change-date nil :wn ("housing%1:06:00") :comments meeting-understanding)
     (templ bare-pred-templ)
     (SYNTAX (W::AGR W::3S))
     )
    )
   )
  (W::accomodation
   (SENSES
    ((LF-PARENT ONT::accomodation)
     (meta-data :origin caloy2 :entry-date 20050522 :change-date nil :comments meeting-understanding)
     (templ bare-pred-templ)
     )
    )
   )
   (W::lodging
   (SENSES
    ((LF-PARENT ONT::lodging)
     (meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("lodging%1:06:00") :comments pq)
     (templ bare-pred-templ)
     (SYNTAX (W::AGR W::3S))
     )
    )
   )
   (W::apartment
   (SENSES
    ((LF-PARENT ont::lodging)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("apartment%1:06:00") :comments Office)
     )
    )
   )
   (W::studio
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::lodging)
     )
    )
   )
   (W::condo
   (SENSES
    ((LF-PARENT ont::lodging)
     (meta-data :origin plow :entry-date 20060530 :change-date nil :comments nil :wn ("condo%1:06:00"))
     )
    )
   )
   (W::condominium
   (SENSES
    ((LF-PARENT ont::lodging)
     (meta-data :origin plow :entry-date 20060530 :change-date nil :comments nil :wn ("condominium%1:06:01" "condominium%1:06:00"))
     )
    )
   )
  (W::trailer
   (SENSES
    ((meta-data :origin calo :entry-date 20050419 :change-date nil :wn ("trailer%1:06:00") :comments meeting-understanding)
     (LF-PARENT ont::lodging)
     )
    )
   )
  (W::quarters
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::lodging)
     (example "close quarters")
     (SYNTAX (W::AGR W::3S))
     (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab :wn ("quarters%1:06:00"))
     )
    )
   )
  (W::shelter
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("shelter%1:06:02") :comments s10)
     (LF-PARENT ONT::public-service-facility)
     )
    )
   )
  (W::farm
   (SENSES
   ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
    (LF-PARENT ONT::facility)
    (example "wind energy is used on farms")
    )
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments step6)
    (LF-PARENT ONT::organization)
    (example "the farm made a profit")
     )
    )
   )
  (W::HOME
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::location)
     (TEMPL BARE-PRED-TEMPL)
     (example "he is at home")
     )
    )
   )
  (W::DEPARTMENT
   (SENSES
    ((meta-data :origin calo :entry-date 20041201 :change-date nil :wn ("department%1:14:00") :comments caloy2 :wn-sense (1))
     (LF-PARENT ONT::organization)
     )
    )
   )
  (W::STATION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("station%1:06:00"))
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::terminal
   (SENSES
    ((LF-PARENT ONT::structure)
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("terminal%1:06:00") :comments plow-req)
     (EXAMPLE "going to the bus terminal")
     )
    )
   )
  (W::HEADQUARTERS
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::structure)
     )
    )
   )
  ((W::FIRE W::STATION)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::fire W::stations))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("fire_station%1:06:00"))
     (LF-PARENT ONT::public-service-facility)
     (LF-FORM W::FIRE-STATION)
     )
    )
   )
  ((W::POLICE W::STATION)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::police W::stations))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("police_station%1:06:00"))
     (LF-PARENT ONT::public-service-facility)
     (LF-FORM W::POLICE-STATION)
     )
    )
   )
  ((W::FIRE W::DEPARTMENT)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::fire W::departments))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s7)
     (LF-PARENT ONT::public-service-facility)
     (LF-FORM W::FIRE-DEPARTMENT)
     )
    )
   )
  ((W::POLICE W::DEPARTMENT)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::police W::departments))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments s15)
     (LF-PARENT ONT::public-service-facility)
     (LF-FORM W::POLICE-DEPARTMENT)
     )
    )
   )
  ((W::EMERGENCY W::ROOM)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::emergency W::rooms))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("emergency_room%1:06:00"))
     (LF-PARENT ONT::public-service-facility)
     (LF-FORM W::emergency-room)
     )
    )
   )
 (W::church
   (SENSES
    ((LF-PARENT ONT::public-service-facility)
     (meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("church%1:06:00") :comments caloy3)
     )
    )
   )
  (W::HOSPITAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::public-service-facility)
     (LF-FORM W::hospital)
     )
    )
   )
   (W::clinic
   (SENSES
    ((meta-data :origin plot :entry-date 20081024 :change-date nil :comments nil)
     (LF-PARENT ONT::public-service-facility)
     )
    )
   )
  (W::BRIDGE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bridge%1:06:00"))
     (LF-PARENT ONT::structure)
     (SEM (F::spatial-abstraction (? sabr F::spatial-point F::line)))
     )
    )
   )
  
  (W::COORDINATE
   (SENSES
    ((meta-data :origin lou :entry-date 20040412 :change-date nil :wn ("coordinate%1:09:00") :comments lou)
     (LF-PARENT ONT::coordinate)
     (TEMPL Coordinate-TEMPL)
     )
    )
   )
  (W::geometry
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::discipline)
     )
    )
   )
  (W::biology
   (SENSES
    ((LF-PARENT ONT::discipline) 
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("biology%1:09:00") :comments Office)
     )
    )
   )
  (W::chemistry
   (SENSES
    ((LF-PARENT ONT::discipline) 
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("chemistry%1:09:00") :comments Office)
     )
    )
   )
  (W::neuroscience
   (SENSES
    ((LF-PARENT ONT::discipline)  
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("neuroscience%1:09:00") :comments Office)
     )
    )
   )
   (W::robotics
   (SENSES
    ((LF-PARENT ONT::discipline) 
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("robotics%1:09:00") :comments Office)
     )
    )
   )
   (W::science
   (SENSES
    ((LF-PARENT ONT::discipline) 
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("science%1:09:00") :comments Office)
     )
    )
   )
   
   (W::education
   (SENSES
    ((LF-PARENT ONT::function-object) 
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments Office)
     )
    )
   )
  (w::room
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("room%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::internal-enclosure)
     (example "we need an lcd projector for our conference room")
     )
    )
   )
  (w::suite
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("suite%1:06:00") :comments pq)
     (LF-PARENT ONT::internal-enclosure)
     (example "i'd like a suite")
     )
    ((LF-PARENT ONT::group-object)
     (TEMPL classifier-count-pl-templ)
     (example "a suite of tools")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20090520
		:COMMENTS HTML-PURCHASING-CORPUS))
    )
   )    
  (w::hallway
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date nil :wn ("hallway%1:06:00") :comments meeting-understanding)
     (LF-PARENT ONT::internal-enclosure)
     (example "I ran into him in the hallway")
     )
    )
   )
  (w::hall
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :comments meeting-understanding :wn ("hall%1:06:05" "hall%1:06:02" "hall%1:06:06"))
     (LF-PARENT ONT::internal-enclosure)
     (example "I ran into him in the hall")
     )
    )
   )
   (w::corridor
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("corridor%1:06:00") :comments meeting-understanding)
     (LF-PARENT ONT::internal-enclosure)
     (example "I ran into him in the corridor")
     )
    )
   )
  (w::wing
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("wing%1:06:01") :comments meeting-understanding)
     (LF-PARENT ONT::structural-component)
     (example "his office is in the west wing")
     )
    ((meta-data :origin step :entry-date 20080703 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::social-group)
     (TEMPL classifier-count-pl-templ)
     (example "the military wing of the organization")
     )
    )
   )
   (w::annex
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("annex%1:06:00") :comments meeting-understanding)
     (LF-PARENT ONT::structural-component)
     (example "his office is in the annex")
     )
    )
   )
  (w::shade
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("shade%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::covering)
     (example "close the window shades")
     )
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("shade%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::color)
     (example "available in 40 vibrant shades")
     (TEMPL OTHER-RELN-TEMPL)
     )
    ))

   (w::blind
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("blind%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::covering)
     (example "close the blinds")
     )
    )
   )
    (w::miniblind
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :comments projector-purchasing)
     (LF-PARENT ONT::covering)
     (example "close the blinds")
     )
    )
   )
   (W::chalk
   (SENSES
    ((LF-PARENT ONT::writing-implement) 
     (EXAMPLE "use a ballpoint pen")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("chalk%1:06:00") :comments Office)
     )
    )
   )
   (W::marker
   (SENSES
    ((LF-PARENT ONT::writing-implement) 
     (EXAMPLE "use a ballpoint pen")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("marker%1:06:01") :comments Office)
     )
    )
   )
   (W::pencil
   (SENSES
    ((LF-PARENT ONT::writing-implement) 
     (EXAMPLE "use a ballpoint pen")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("pencil%1:06:00") :comments Office)
     )
    )
   )
   (W::pen
   (SENSES
    ((LF-PARENT ONT::writing-implement) 
     (EXAMPLE "use a ballpoint pen")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("pen%1:06:00") :comments Office)
     )
    )
   )
   (W::planner
   (SENSES
    ((LF-PARENT ONT::info-medium) ;; like calendar
     (EXAMPLE "the new monthly planners are out")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("planner%1:06:00") :comments Office)
     )
    )
   )
   (w::shelving
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments Office)
     (LF-PARENT ont::furnishings)
     (templ mass-pred-templ)
     )
    )
   )
   (w::bathroom
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("bathroom%1:06:01") :comments Office)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (w::restroom
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("restroom%1:06:00") :comments Office)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (w::lavatory
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("lavatory%1:06:00") :comments Office)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (w::loo
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090323 :change-date nil :wn ("lavatory%1:06:00") :comments nil)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (w::shower
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("shower%1:06:00") :comments plow-req)
     (LF-PARENT ONT::fixture)
     )
    ((meta-data :origin asma :entry-date 20111005)
     (LF-PARENT ONT::shower)
     )
    ((LF-PARENT ONT::precipitation)
     (example "scattered showers")
     (meta-data :origin plow :entry-date 20060712 :change-date nil :wn ("shower%1:19:00") :comments plow-req)
     )
    )
   )
  (w::bath
   (SENSES
    ((meta-data :origin asma :entry-date 20111005)
     (LF-PARENT ONT::bath)
     )
    )
   )
   (w::bathtub
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("bathtub%1:06:00") :comments plow-req)
     (LF-PARENT ONT::fixture)
     )
    )
   )
   ((w::bath w::tub)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :comments plow-req)
     (LF-PARENT ONT::fixture)
     )
    )
   )
   (w::sink
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("sink%1:06:00") :comments plow-req)
   ;  (LF-PARENT ONT::fixture)
     (lf-parent ont::sink)
     )
    )
   )
   (w::fixture
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("fixture%1:06:00") :comments plow-req)
     (LF-PARENT ONT::fixture)
     )
    )
   )
   (w::door
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("door%1:06:01") :comments Office)
     (LF-PARENT ONT::structural-opening)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (w::peephole
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("peephole%1:06:00") :comments caloy3)
     (LF-PARENT ONT::structural-opening)
     (example "is there a peephole in the door")
     (templ gen-part-of-reln-templ)
     )
    )
   )
    (w::lock
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("lock%1:06:00") :comments caloy3)
     (LF-PARENT ONT::device)
     (example "are there security locks on the doors")
     (templ count-pred-templ)
     )
    )
   )
  (w::wall 
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("wall%1:06:00") :comments Office)
     (LF-PARENT ONT::structure-internal-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
  (w::ceiling
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("ceiling%1:06:00") :comments Office)
     (LF-PARENT ONT::structure-internal-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (w::floor
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::structure-internal-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (w::roof
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("roof%1:06:00") :comments Office)
     (LF-PARENT ONT::structure-external-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (W::pillar
   (SENSES
    ((LF-PARENT ONT::structural-component)
     (templ gen-part-of-reln-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (w::platform
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("platform%1:06:00") :comments Office)
     (LF-PARENT ONT::structural-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (w::terrace
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("terrace%1:06:00") :comments Office)
     (LF-PARENT ONT::structure-external-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (w::garden
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::structure-external-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )

   (w::balcony
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::structure-external-component)
     (templ gen-part-of-reln-templ)
     )
    )
   )
   (w::garage
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::structure)
     )
    )
   )
   (w::shelf
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("shelf%1:06:00") :comments Office)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::rack
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :comments Office)
     (example "coat rack")
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::cabinet
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments Office)
   ;  (LF-PARENT ont::furnishings)
     (lf-parent ont::cabinet)
     )
    )
   )
  (w::cupboard
   (SENSES
    ((meta-data :origin caet :entry-date 20111220)
   ;  (LF-PARENT ont::furnishings)
     (lf-parent ont::cupboard)
     )
    )
   )
   (w::bookcase
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("bookcase%1:06:00") :comments Office)
     (LF-PARENT ont::furnishings)
     )
    )
   )
 (w::furniture
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("furniture%1:06:00") :comments Office)
     (LF-PARENT ont::furnishings)
     (templ mass-pred-templ)
     )
    )
   )
   (w::curtain
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("curtain%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::covering)
     (example "close the curtains")
     )
    )
   )
   (w::drapes
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ONT::covering)
     (TEMPL COUNT-PRED-3p-TEMPL)
     )
    )
   )
   (w::workstation
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("workstation%1:06:00") :comments nil)
     (LF-PARENT ont::furnishings)
     )
    )
   )
    
   
   (w::desk
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("desk%1:06:00") :comments projector-purchasing)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::table
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("table%1:06:01") :comments projector-purchasing)
  ;   (LF-PARENT ont::furnishings)
     (lf-parent ont::table)
     )
    ((meta-data :origin plow :entry-date 20060303 :change-date nil :wn ("table%1:14:00") :comments pq)
     (LF-PARENT ONT::chart)
;;     (templ other-reln-templ) let it be a mods
     (example "here is the table of results")
     )
    )
   )
   (w::chair
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("chair%1:06:00") :comments projector-purchasing)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::bench
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :comments caloy3)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::couch
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::sofa
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("sofa%1:06:00") :comments nil)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::ottoman
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("ottoman%1:06:01") :comments nil)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::footstool
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("footstool%1:06:00") :comments nil)
     (LF-PARENT ont::furnishings)
     )
    )
   )
   (w::stand
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments nil)
     (LF-PARENT ont::support-stand)
     (example "plant stand")
     )
    ((meta-data :origin caet :entry-date 20111220)
     (lf-parent ont::stand)
     )
    )
   )
  (w::classroom
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("classroom%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::internal-enclosure)
     (example "I would like to use a projector for presentations in the classroom")
     )
    )
   )
  
   (w::procurement
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("procurement%1:04:00") :comments meeting-understanding)
     (LF-PARENT ONT::acquire)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "the staff is behind on procurement")
     )
    )
   )
   (w::acquisition
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :comments meeting-understanding)
     (LF-PARENT ONT::acquire)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (example "the painting is a recent acquisition")
     )
    )
   )
   (w::addition
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :comments meeting-understanding)
     (LF-PARENT ONT::add-include)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::to)))))
     (example "the deck is a recent addition")
     )
    )
   )
   ; :nom
;   (w::supplement
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
;     (LF-PARENT ONT::add-include)
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::to)))))
;     (example "a dietary supplement")
;     )
;    )
;   )
   (W::CONNECTION
   (SENSES
    ((meta-data :origin calo :entry-date 20040421 :change-date nil :comments y1demo)
     (example "I want a fast internet connection")
     (LF-PARENT ONT::ATTACH)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::to)))))
     )
    )
   )
  (W::INTERSECTION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::JUNCTION)
     (TEMPL COUNT-PRED-JUNCTION-TEMPL)
     )
     ((LF-PARENT ONT::loc-def-by-intersection)
     )
    )
   )
  (W::CORNER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::CORNER)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::edge
   (SENSES
    ((LF-PARENT ONT::edge)
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :comments nil)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::BEND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::CORNER)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::CENTER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::CENTER)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )
   (W::CENTRE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::CENTER)
     (TEMPL PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::MIDDLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::pos-midway)
     (p "the middle of the road")
     (TEMPL PART-OF-RELN-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the middle of the meeting/lesson")
     (meta-data :origin cardiac :entry-date 20081005 :change-date nil :comments nil :wn ("middle%1:28:00"))
     (TEMPL GEN-PART-OF-RELN-ACTION-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the middle of the year")
     (meta-data :origin cardiac :entry-date 20081005 :change-date nil :comments nil :wn ("middle%1:28:00"))
     (TEMPL GEN-PART-OF-RELN-INTERVAL-TEMPL)
     )
    )
   )
  (W::MIDPOINT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::waypoint)
     (p "the midpoint of the road")
     (TEMPL PART-OF-RELN-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the midpoint of the meeting/lesson")
     (meta-data :origin cardiac :entry-date 20081005 :change-date nil :comments nil)
     (TEMPL GEN-PART-OF-RELN-ACTION-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the midpoint of the year")
     (meta-data :origin cardiac :entry-date 20081005 :change-date nil :comments nil)
     (TEMPL GEN-PART-OF-RELN-INTERVAL-TEMPL)
     )
    )
   )
  ((W::MID w::POINT)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::waypoint)
     (p "the midpoint of the road")
     (TEMPL PART-OF-RELN-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the midpoint of the meeting/lesson")
     (meta-data :origin cardiac :entry-date 20081005 :change-date nil :comments nil)
     (TEMPL GEN-PART-OF-RELN-ACTION-TEMPL)
     )
    ((LF-PARENT ONT::TIME-POINT)
     (example "the midpoint of the year")
     (meta-data :origin cardiac :entry-date 20081005 :change-date nil :comments nil)
     (TEMPL GEN-PART-OF-RELN-INTERVAL-TEMPL)
     )
    )
   )
  (W::LAKE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("lake%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::OCEAN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ocean%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
   (W::reef
   (SENSES
    ((LF-PARENT ONT::geo-formation)
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("reef%1:17:00") :comments caloy3)
     )
    )
   )
  (W::peak
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
   (W::oasis
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
   (W::summit
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::geo-formation)
     )
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::gathering-event)
     )
    )
   )
   (W::strait
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
   (W::SEA
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sea%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
   (W::icecap
   (SENSES
    ((LF-PARENT ONT::natural-object)
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("icecap%1:17:00") :comments caloy3)
     (example "the polar icecap")
     )
    )
   )
    (W::iceberg
   (SENSES
    ((LF-PARENT ONT::natural-object)
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("iceberg%1:17:00") :comments caloy3)
     )
    )
   )
    (W::tundra
   (SENSES
    ((LF-PARENT ONT::geo-formation)
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("tundra%1:17:00") :comments caloy3)
     )
    )
   )
  (W::LANDSCAPE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("landscape%1:15:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::ENVIRONMENT
   (SENSES
   ; ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
   ;  (LF-PARENT ONT::geo-formation)
   ;  )
    ((meta-data :origin step :entry-date 20080705 :change-date nil :comments step3)
     (LF-PARENT ONT::setting)
     )
    )
   )
   (W::ENVIRONs
   (SENSES
    ((meta-data :origin step :entry-date 20080705 :change-date nil :comments step3)
     (LF-PARENT ONT::setting)
     )
    )
   )
  
  (W::nature
   (SENSES
    ((LF-PARENT ONT::geo-formation)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::ATMOSPHERE
   (SENSES
   ; ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
   ;  (LF-PARENT ONT::geo-object)
   ;  )
     ((meta-data :origin step :entry-date 20080705 :change-date nil :comments step3)
     (LF-PARENT ONT::setting)
     )
    )
   )
  (W::SUN
   (SENSES
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :comments projector-purchasing :wn ("sun%1:17:00" "sun%1:17:01"))
     (LF-PARENT ONT::natural-object)
     (example "the sun comes in very brightly")
     )
    )
   )
  (W::moon
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :comments nil :wn ("moon%1:17:01" "moon%1:17:00"))
     (LF-PARENT ONT::natural-object)
     (example "the phases of the moon")
     )
    )
   )
  (W::BAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bay%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
   (W::LAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("land%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::INLET
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("inlet%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::RIVER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("river%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::bacterium
   (wordfeats (W::morph (:forms (-S-3P) :plur w::bacteria)))
   (SENSES
    ((meta-data :origin step :entry-date 20080627 :change-date nil :comments nil :wn ("bacterium%1:05:00"))
     (LF-PARENT ONT::bacterium)
     (templ mass-pred-templ)
     )
    )
   )
   (W::powder
   (SENSES
    ((meta-data :origin step :entry-date 20080705 :change-date nil :comments step5 :wn ("powder%1:27:00" "powder%1:27:01" "powder%1:06:01"))
     (LF-PARENT ONT::substance) ;like dirt
     (example "the propellant exploded")
     )
    )
   )
  (W::soil
   (SENSES
    ((meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("soil%1:27:01"))
     (LF-PARENT ONT::substance) ;like dirt
     )
    )
   )
  (W::dirt
   (SENSES
    ((meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("dirt%1:27:01" "dirt%1:27:02"))
     (LF-PARENT ONT::substance)
     (example "digging in the dirt")
     )
    )
   )
  (W::CONTINENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("continent%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::planet
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("planet%1:17:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::earth
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments nil)
     (LF-PARENT ONT::geo-formation)
     )
    ((meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("earth%1:27:00" "earth%1:27:01"))
     (LF-PARENT ONT::substance) ;like dirt
     )
    )
   )
  (W::world
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("world%1:17:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::globe
   (SENSES
    ((LF-PARENT ONT::geo-formation)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::universe
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("universe%1:17:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::geo-object)
     )
    )
   )
   (W::sky
   (SENSES
    ((meta-data :origin plow :entry-date 20060712 :change-date nil :wn ("sky%1:17:00") :comments plow-req)
     (LF-PARENT ONT::geo-object)
     (example "clear skies are predicated for tomorrow")
     )
    )
   )
  (W::mountain
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mountain%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::VALLEY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("valley%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::ISLAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("island%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::isle
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("researcher%1:18:00") :comments caloy3-test-data)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::CANYON
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("canyon%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::PLATEAU
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plateau%1:17:00"))
     (LF-PARENT ONT::geo-formation)
     )
    )
   )
  (W::COAST
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("coast%1:17:00"))
     (LF-PARENT ONT::shore)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::SHORE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("shore%1:17:00"))
     (LF-PARENT ONT::shore)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::beach
   (SENSES
    ((LF-PARENT ONT::shore)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("beach%1:17:00") :comments nil)
     (example "is the hotel close to the beach")
     )
    )
   )
  (W::province
   (SENSES
    ((LF-PARENT ONT::district)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("province%1:15:00") :comments nil)
     (example "can you name all the canadian provinces")
     )
    )
   )
  (W::STATE
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("state%1:15:01"))
     (LF-PARENT ONT::state)
     (example "new york state")
     )
    ((LF-PARENT ONT::status)
     (templ other-reln-templ)
     (EXAMPLE "the state of operation, state of health, financial state")
     (meta-data :origin task-learning :entry-date 20050818 :change-date 20081112 :wn ("state%1:03:00") :comments nil)
     )
    )
   )
  (W::COUNTRY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::country)
     )
    )
   )
  (W::COUNTY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::county)
     )
    )
   )
  (W::city
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::city)
     )
    )
   )
  (W::community
   (SENSES
    ((meta-data :origin monroe :entry-date 20031223 :change-date nil :comments s7)
     (LF-PARENT ONT::district)
     )
    )
   )
  (W::town
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::district)
     )
    )
   )
  (W::village
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::district)
     )
    )
   )
  (W::PARK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::district)
     )
    )
   )
   (W::plaza
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     (LF-PARENT ONT::facility)
     )
    )
   )
  (W::DOWNTOWN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("downtown%1:15:00"))
     (LF-PARENT ONT::district)
     (SEM (F::spatial-abstraction (? sa F::spatial-point F::SPATIAL-REGION)))
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  (W::heartland
   (SENSES
    ((LF-PARENT ONT::district)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::AIRPORT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070622 :comments nil :wn ("airport%1:06:00"))
     (LF-PARENT ONT::airport)
;     (preference 1.0)    ;;  quick fix for PLOW demo    JFA 6/7/06
     )
   ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
    (LF-PARENT ONT::computer-card)
    (preference .9)
    )
    )
   )
  (W::AIRFIELD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("airfield%1:06:00"))
     (LF-PARENT ONT::transportation-facility)
     )
    )
   )

  ((W::AIR W::FIELD)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::air W::fields))))
   (SENSES
    ((LF-PARENT ONT::transportation-facility)
     (LF-FORM W::airfield)
     )
    )
   )
   ((W::AIR W::STRIP)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::air W::strips))))
   (SENSES
    ((LF-PARENT ONT::transportation-facility)
     (LF-FORM W::airstrip)
     )
    )
   )
  (W::BASE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("base%1:06:04"))
     (LF-PARENT ONT::transportation-facility)
     )
    ((meta-data :origin fruitcarts :entry-date 20050331 :change-date nil :comments fruitcarts-11-4)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (example "move the avocado to the base of the triangle")
     )
    ((meta-data :origin caet :entry-date 20110803 :change-date nil :comments nil)
   ;  (LF-PARENT ONT::kettle-base)
     (lf-parent ont::base)
     (example "put the kettle on the base")
     )
;    ;; how is this entry different from the above?
;    ((meta-data :origin lam :entry-date 20050425 :change-date nil :comments lam-initial)
;     (LF-PARENT ONT::object-dependent-location)
;     (TEMPL GEN-PART-OF-RELN-TEMPL)
;     (example "base of the power")
;     )
    ))   

 (W::heater
   (SENSES
    ((meta-data :origin caet :entry-date 20111220)
     (lf-parent ont::base)
     )
    )) 

  (W::PAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("pad%1:06:02"))
     (LF-PARENT ONT::transportation-facility)
     )
    )
   )
  ((W::REFUELING W::PORT)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::refueling W::ports))))
   (SENSES
    ((LF-PARENT ONT::transportation-facility)
     (LF-FORM W::refueling_port)
     )
    )
   )
  ((W::TRAIN W::STATION)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::train W::stations))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("train_station%1:06:00"))
     (LF-PARENT ONT::transportation-facility)
     (LF-FORM W::TRAIN-STATION)
     )
    )
   )
  ((W::BUS W::STATION)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::bus W::stations))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bus_station%1:06:00"))
     (LF-PARENT ONT::transportation-facility)
     (LF-FORM W::BUS-STATION)
     )
    )
   )

  (W::Bomb
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bomb%1:06:00"))
     (LF-PARENT ONT::bomb)    
     )
    )
   )
  (W::chain
   (SENSES
    ((LF-PARENT ONT::manufactured-object)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin lam :entry-date 20050425 :change-date nil :comments lam-initial :wn ("chain%1:06:00" "chain%1:06:03" "chain%1:06:04" "chain%1:06:01"))
     )
    ))
   

  (W::DATE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("date%1:28:04"))
     (LF-PARENT ONT::time-point)
     )
    )
   )
  (W::FUTURE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("future%1:28:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::time-span)
     )
    )
   )
  (W::ERA
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::time-unit)
     (templ unit-templ)
     )
    )
   )
   (W::century
   (SENSES
    ((meta-data :origin allison :entry-date 20040921 :change-date nil :wn ("century%1:28:00") :comments caloy2)
     (LF-PARENT ONT::time-unit)
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::PAST
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("past%1:28:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::time-span)
     )
    )
   )
  (W::phase
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :comments nil)
     (LF-PARENT ONT::time-span)
     (example "this phase of the project")
     (templ other-reln-templ)
     )
    )
   )
  (W::DAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("day%1:28:00" "day%1:28:06"))
     (LF-PARENT ONT::time-unit)
     (example "day of 24 hours" "for some days" "a 5-day week")
     (templ unit-templ)
     )

    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::night
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("night%1:28:02"))
     (LF-PARENT ONT::time-unit)
     (example "for some nights" "a 5-night stay")
     (templ unit-templ)
     )

    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("night%1:28:00" "night%1:28:01" "night%1:28:04" "night%1:28:05" "night%1:28:03"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::DEADLINE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("deadline%1:28:00"))
     (LF-PARENT ONT::time-point)
     (templ other-reln-templ (xp (% W::pp (W::ptype (? pt w::for w::of)))))
     )
    )
   )

  (W::HOUR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("hour%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (example "5 hours") ;; quantity terms
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (example "hour of the day")
     (templ time-reln-templ)
     )
    )
   )
  
  (W::INTERVAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("interval%1:28:00"))
     (LF-PARENT ONT::Time-interval)
     (templ time-reln-templ)
     )
    ((meta-data :origin fruit-carts :entry-date 20050427 :change-date nil :wn ("space%1:25:00") :comments fruitcart-11-4)
     (example "distribute the items at even intervals")
     (LF-PARENT ONT::distance)
     (preference .98)
     )
    )
   )
  (W::MINUTE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("minute%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (example "five minutes of silence")
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::MOMENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("moment%1:28:01"))
     (LF-PARENT ONT::Time-unit)
     (example "a moment of silence")
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::MONTH
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  
  (W::SEC
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sec%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (LF-FORM W::second)
     (templ unit-templ)
     )
    )
   )
  (W::s
   (wordfeats (W::morph (:forms (-s-3p) :plur W::s)))
   (SENSES
    ((LF-PARENT ONT::time-unit)
     (LF-FORM W::second)
     (TEMPL UNIT-TEMPL)
     (meta-data :origin step :entry-date 20080711 :change-date nil :comments nil :wn ("s%1:28:00"))
     )
    )
   )
   (W::ms
   (wordfeats (W::morph (:forms (-s-3p) :plur W::ms)))
   (SENSES
    ((LF-PARENT ONT::time-unit)
     (LF-FORM W::millisecond)
     (TEMPL UNIT-TEMPL)
     (meta-data :origin step :entry-date 20080711 :change-date nil :comments nil :wn ("s%1:28:00"))
     )
    )
   )
  (W::SECOND
;   (abbrev w::s)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("second%1:28:00"))
     (LF-PARENT ONT::time-unit)
     (templ unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::MILLISECOND
;   (abbrev w::ms)
   (SENSES
    ((LF-PARENT ONT::time-unit)
     (templ unit-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("millisecond%1:28:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::lumen
   (SENSES
    ((LF-PARENT ONT::luminosity-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (example "find a projector with the lumen rating you need")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20041130 :CHANGE-DATE NIL :wn ("lumen%1:23:00") :COMMENTS caloy2))))
  
  (W::TIMEFRAME
   (SENSES
    ((LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::summer
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("summer%1:28:00"))
     (LF-PARENT ONT::summer)
     (templ time-reln-templ)
     )
    )
   )
  (W::winter
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("winter%1:28:00"))
     (LF-PARENT ONT::winter)
     (templ time-reln-templ)
     )
    )
   )
  (W::autumn
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("autumn%1:28:00"))
     (LF-PARENT ONT::autumn)
     (templ time-reln-templ)
     )
    )
   )
  (W::spring
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("spring%1:28:00"))
     (LF-PARENT ONT::spring)
     (templ time-reln-templ)
     )
    )
   )
  (W::weekend
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("weekend%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::WEEK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::time-unit)
     (templ substance-unit-templ)
     (example "two weeks of work")
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     (example "next week")
     )
    )
   )
  (W::YEAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::time-unit)
     (example "a 3 year warranty")
     (templ substance-unit-templ)
     )
    ((meta-data :origin plow :entry-date 20080117 :change-date nil :comments nil :wn ("month%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (templ time-reln-templ)
     )
    )
   )
  (W::GRAM
 ;  (abbrev w::g)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("gram%1:23:00"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
   (W::MILLIGRAM
;   (abbrev w::mg)
   (SENSES
    ((meta-data :origin cernl :entry-date 20100607 :change-date nil :comments nil :wn ("gram%1:23:00"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
   ((w::m W::g)
    (wordfeats (W::morph (:forms (-s-3p) :plur (W::m w::g))))
   (SENSES
    ((LF-PARENT ONT::weight-unit)
     (LF-FORM W::milligram)
     (TEMPL UNIT-TEMPL)
     (meta-data :origin cernl :entry-date 20100607 :change-date nil :comments nil :wn ("gram%1:23:00"))
     )
    )
   )
  (w::g
   (wordfeats (W::morph (:forms (-s-3p) :plur W::g)))
   (SENSES
    ((LF-PARENT ONT::weight-unit)
     (LF-FORM W::gram)
     (TEMPL UNIT-TEMPL)
     (meta-data :origin cernl :entry-date 20100607 :change-date nil :comments nil :wn ("gram%1:23:00"))
     )
    )
   )
  (w::mg
   (wordfeats (W::morph (:forms (-s-3p) :plur W::mg)))
   (SENSES
    ((LF-PARENT ONT::weight-unit)
     (LF-FORM W::milligram)
     (TEMPL UNIT-TEMPL)
     (meta-data :origin cernl :entry-date 20100607 :change-date nil :comments nil :wn ("gram%1:23:00"))
     )
    )
   )
  (W::OUNCE
;   (abbrev w::oz)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ounce%1:23:02" "ounce%1:23:01"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::oz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::oz)))
   (SENSES
    ((LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (LF-FORM W::ounce)
     )
    )
   )
  (W::POUND
 ;  (abbrev w::lb)
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("pound%1:23:09"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::kilo
;   (abbrev w::kg)
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080215 :change-date nil :comments nil :wn ("kilo%1:23:00"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::kilogram
;   (abbrev w::kg)
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080215 :change-date nil :comments nil :wn ("kilogram%1:23:00"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
   (W::kg
   (wordfeats (W::morph (:forms (-s-3p) :plur W::kg)))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080215 :change-date nil :comments nil :wn ("kilogram%1:23:00"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::LB 
   (wordfeats (W::morph (:forms (-s-3p) :plur W::lb)))
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("lb%1:23:00"))
     (LF-PARENT ONT::weight-unit)     
     (TEMPL substance-UNIT-TEMPL)
     (example "he weighs 5 lb 10 oz")
     (LF-FORM W::pound)
     )
    )
   )
  (W::TON
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ton%1:23:02" "ton%1:23:01"))
     (LF-PARENT ONT::weight-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  
  (W::decibel
;   (abbrev w::db)
   (SENSES
    ((meta-data :origin calo :entry-date 20050308 :change-date nil :wn ("decibel%1:23:00") :comments projector-purchasing)
     (LF-PARENT ONT::acoustic-unit)
     (TEMPL attribute-UNIT-TEMPL)
     (example "it has an audible noise level of 35 decibles")
     )
    )
   )
  
  (W::db 
   (wordfeats (W::morph (:forms (-s-3p) :plur W::db)))
   (SENSES
    ((meta-data :origin calo :entry-date 20050308 :change-date nil :wn ("db%1:23:00") :comments projector-purchasing)
     (LF-PARENT ONT::acoustic-unit)
     (LF-FORM W::decibel)
     (TEMPL attribute-UNIT-TEMPL)
     (example "it has an audible noise level of 35 db")
     )
    )
   )
  (W::CALORIE
   (SENSES
    ((LF-PARENT ONT::temperature-unit) ;; this is not quite right... calorie measures heat, not temperature --wdebeaum
     (TEMPL attribute-unit-TEMPL)
     (example "how many calories are in a serving of carrots")
     (META-DATA :ORIGIN nutrition :ENTRY-DATE 20050707 :CHANGE-DATE NIL
      :COMMENTS nil))))
  (W::WATT
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("watt%1:23:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (example "1 kilowatt is about 1000 watts or 1.34 horsepower")
     )
    )
   )
   (W::megaWATT
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("megawatt%1:23:00") :comments caloy2)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (example "a megawatt of power")
     )
    )
   )
   (W::kw
    (wordfeats (W::morph (:forms (-s-3p) :plur W::kw)))
    (SENSES
     ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("megawatt%1:23:00") :comments caloy2)
     (LF-PARENT ONT::power-unit)
     (lf-form w::kilowatt)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (example "a megawatt of power")
     )
    )
   )
   (W::kiloWATT
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("kilowatt%1:23:00") :comments caloy2)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (example "1 kilowatt is about 1000 watts or 1.34 horsepower")
     )
    )
   )
   ;; need to distinguish betwee mW milliwatt and MW megawatt
   (W::mw
    (wordfeats (W::morph (:forms (-s-3p) :plur W::mw)))
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("milliwatt%1:23:00") :comments caloy2)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (lf-form w::megawatt)
     (example "a milliwatt is about one thousandth of a watt")
     )
    )
   )
  (W::milliWATT
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("milliwatt%1:23:00") :comments caloy2)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (example "a milliwatt is about one thousandth of a watt")
     )
    )
   )
  (W::horsepower
   (SENSES
    ((meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("horsepower%1:23:00") :comments caloy2)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     (example "1 kilowatt is about 1000 watts or 1.34 horsepower")
     )
    )
   )

   (W::joule
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("joule%1:23:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )

   (W::VOLT
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("volt%1:23:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
   
   (W::V
    (wordfeats (W::morph (:forms (-s-3p) :plur W::v)))
    (SENSES
     ((meta-data :origin bee :entry-date 20040805 :change-date nil :wn ("v%1:23:00") :comments portability-followup)
      ;; note that v is plural there, it's equivalent to "5 volts"
      (example "5V")
      (LF-PARENT ONT::power-unit)
      (lf-form w::volt)
      (TEMPL SUBSTANCE-UNIT-TEMPL)
      )
     )
    )
   
   (W::MILLIVOLT
    (abbrev mv)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("millivolt%1:23:00"))     
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
   
   (W::MV
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("m%v1:23:00"))
     (LF-FORM w::millivolt)
     (LF-PARENT ONT::power-unit)
     (TEMPL SUBSTANCE-UNIT-PLURAL-TEMPL)
     )
    )
   )
   (W::percent
    (wordfeats (W::morph (:forms (-s-3p) :plur W::percent)))
   (SENSES
    ((LF-PARENT ONT::percent)
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("percent%1:24:00") :comments caloy2)
     (example "this cpu is 20 percent faster")
     (templ other-reln-theme-templ)
     )
    )
   )
  
  (W::dollar-sign
    (wordfeats (W::morph (:forms (-s-3p) :plur W::dollar-sign)))
   (SENSES
    ((LF-PARENT ONT::money-unit) (LF-FORM W::dollar)
     (meta-data :origin james :entry-date 20041206 :change-date nil)
     (example "I paid $100")
     (SYNTAX (W::punc +))
     (TEMPL pre-UNIT-TEMPL))))
  
   ((W::DEGREES w::celsius)
    (wordfeats (W::morph (:forms (-none))))
    (SENSES
     ((LF-PARENT ONT::temperature-unit)
      (TEMPL ATTRIBUTE-UNIT-TEMPL)
      (meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq)
      (example "five degrees celsius")
      )
     )
    )
   ((W::DEGREES w::fahrenheit)
    (wordfeats (W::morph (:forms (-none))))
    (SENSES
     ((LF-PARENT ONT::temperature-unit)
      (TEMPL ATTRIBUTE-UNIT-TEMPL)
      (meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq)
      (example "five degrees fahrenheit")
      )
     )
    )
  (W::DEGREE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("degree%1:23:03"))
     (LF-PARENT ONT::temperature-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    ((LF-PARENT ONT::angle-unit)
     (meta-data :origin fruitcarts :entry-date 20041117 :change-date nil :wn ("degree%1:23:00") :comments nil)
     (example "move it 45 degrees")
     (TEMPL attribute-UNIT-TEMPL)
     )
    )
   )
  (W::GALLON
   (abbrev w::gal)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090521 :comments nil :wn ("gallon%1:23:01" "gallon%1:23:02"))
     (LF-PARENT ONT::volume-measure-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::LITRE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090521 :comments nil :wn ("litre%1:23:00"))
     (LF-PARENT ONT::volume-measure-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::LITER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090521 :comments nil :wn ("liter%1:23:00"))
     (LF-PARENT ONT::volume-measure-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::QUART
   (abbrev w::qt)
   (SENSES
    ((LF-PARENT ONT::volume-measure-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
      (meta-data :origin foodkb :entry-date 20050809 :change-date 20090521 :comment nil :wn ("quart%1:23:01" "quart%1:23:02" "quart%1:23:03"))
     )
    )
   )
   (W::PINT
    (abbrev w::pt)
    (SENSES
     ((LF-PARENT ONT::volume-measure-unit)
      (TEMPL SUBSTANCE-UNIT-TEMPL)
      (meta-data :origin foodkb :entry-date 20050809 :change-date 20090521 :comment nil :wn ("pint%1:23:02" "pint%1:23:03" "pint%1:23:01"))
      )
     )
    )
  (W::MILLILITER
   (abbrev w::ml)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090521 :comments nil :wn ("milliliter%1:23:00"))
     (LF-PARENT ONT::volume-measure-unit)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )

  (W::ML ;; alternate plural
   (SENSES
    ((meta-data :origin chf :entry-date 20070814 :change-date 20090521 :comments chf-dialogues :wn ("milliliter%1:23:00"))
     (LF-PARENT ONT::volume-measure-unit)
     (TEMPL SUBSTANCE-UNIT-PLURAL-TEMPL)
     (LF-FORM W::milliliter)
     )
    )
   )
   (W::IN ;; alternate plural
   (SENSES
    ((meta-data :origin chf :entry-date 20070814 :change-date 20090520 :comments chf-dialogues :wn ("milliliter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (LF-FORM W::inch)
     (TEMPL ATTRIBUTE-UNIT-PLURAL-TEMPL)
     (example "it is 5 in high")
     (preference .90) ;;don't compete with other senses of w::in
     (syntax (w::abbrev +))
     )
    )
   )

  (W::IN
   (SENSES
    ((meta-data :origin chf :entry-date 20070814 :change-date 20090520 :comments chf-dialogues :wn ("milliliter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (LF-FORM W::inch)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (example "it is 1 in high")
     (preference .90) ;;don't compete with other senses of w::in
     (syntax (w::abbrev +))
     )
    )
   )
  (W::INCH
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("inch%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )

  
(W::punc-quotemark    ;; i.e.,the symbol \"
 (wordfeats (W::morph (:forms (-s-3p) :plur W::punc-quotemark)))
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date 20070516 :comments nil :wn ("inch%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (LF-FORM W::INCH)
      (TEMPL ATTRIBUTE-UNIT-TEMPL)
      (SYNTAX (W::punc +))
     (preference .92) ;; prefer quotation mark sense
     )
    )
   )

(W::FOOT
   (wordfeats (W::morph (:forms (-s-3p) :plur W::feet)))
   (abbrev w::ft)
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("foot%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )

((w::sq W::ft)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin sense :entry-date 20090915 :change-date nil :comments nil :wn ("foot%1:23:00"))
     (LF-PARENT ONT::area-unit)
     (lf-form w::square-foot)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
      )
    )
   )

((w::square W::Feet)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin sense :entry-date 20090915 :change-date nil :comments nil :wn ("foot%1:23:00"))
     (LF-PARENT ONT::area-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (SYNTAX (W::AGR W::3P))
     )
    )
   )
   
((w::square W::FOOT)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin sense :entry-date 20090915 :change-date nil :comments nil :wn ("foot%1:23:00"))
     (LF-PARENT ONT::area-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (SYNTAX (W::AGR W::3S))
     )
    )
   )

(W::YARD
 (abbrev w::yd)
 (SENSES
  ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("yard%1:23:00"))
   (LF-PARENT ONT::length-unit)
   (TEMPL ATTRIBUTE-UNIT-TEMPL)
   (example "he bought three yards of cloth")
   )
  )
 )

(w::yard
 (senses
  ((meta-data :origin calo-ontology :entry-date 20060707 :change-date nil :wn ("yard%1:06:02") :comments nil)
   (LF-PARENT ONT::structure-external-component)
   (templ gen-part-of-reln-templ)
   (example "he worked in the yard all weekend")
   )
  )
 )
  (W::lawn
   (SENSES
    ((LF-PARENT ONT::structure-external-component)
     (example "mow the lawn")
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("lawn%1:15:00") :comment caloy3)
     )
    )
   )
  (W::METER
   (abbrev w::m)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("meter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
 (W::METRE
   (abbrev w::m)
   (SENSES
    ((meta-data :origin step :entry-date 20080711 :change-date nil :comments nil :wn ("meter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::m ;; alternate plural
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (LF-FORM W::meter)
     (TEMPL ATTRIBUTE-UNIT-PLURAL-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("m%1:23:00") :comments nil)
     )
    )
   )
  (W::CENTIMETER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("centimeter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::CENTIMETRE
   (abbrev w::cm)
   (SENSES
    ((meta-data :origin step :entry-date 20080711 :change-date nil :comments nil :wn ("meter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::cm ;; alternate plural
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (LF-FORM W::centimeter)
     (TEMPL ATTRIBUTE-UNIT-PLURAL-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("cm%1:23:00") :comments nil)
     )
    )
   )
  ((W::c w::m)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     )
    )
   )
  (W::millimeter
   (abbrev w::mm)
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("millimeter%1:23:00") :comments nil)
     )
    )
   )
  (W::MILLIMETRE
   (SENSES
    ((meta-data :origin step :entry-date 20080711 :change-date nil :comments nil :wn ("meter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::mm ;; alternate plural
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-PLURAL-TEMPL)
     (LF-FORM W::millimeter)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("mm%1:23:00") :comments nil)
     )
    )
   )
  ((W::m w::m)
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     )
    )
   )
   (W::MICRON
   (SENSES
    ((LF-PARENT ONT::length-unit) (TEMPL attribute-unit-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("micron%1:23:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))

  (W::MILE
   (abbrev w::mi)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mile%1:23:01" "mile%1:23:04" "mile%1:23:05" "mile%1:23:06" "mile%1:23:03" "mile%1:23:02"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::acre
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil :wn ("acre%1:23:00"))
     (LF-PARENT ONT::area-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::KILOMETER
   (abbrev w::km)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("kilometer%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
   (W::KILOMETRE
   (abbrev w::m)
   (SENSES
    ((meta-data :origin step :entry-date 20080711 :change-date nil :comments nil :wn ("meter%1:23:00"))
     (LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  ((W::k w::m)
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     )
    )
   )
  ((W::km) ;; alternate plural
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (LF-FORM W::kilometer)
     (TEMPL ATTRIBUTE-UNIT-PLURAL-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date 20070813 :wn ("km%1:23:00") :comments nil)
     )
    )
   )
 ((W::mi) ;; alternate plural
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (LF-FORM W::mile)
     (TEMPL ATTRIBUTE-UNIT-PLURAL-TEMPL)
     (example "the distance is 2.3 mi")
     (meta-data :origin plow :entry-date 20070709 :change-date 20070813 :comments caloy4)
     )
    )
   )
  (W::hertz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::hertz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("hertz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
 (W::hz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::hz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("khz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (LF-FORM W::hertz)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::mhz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::mhz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mhz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (LF-FORM W::megahertz)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::megahertz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::megahertz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("megahertz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::khz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::khz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("khz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (LF-FORM W::kilohertz)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::kilohertz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::kilohertz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("kilohertz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::ghz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::ghz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ghz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (LF-FORM W::gigahertz)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::gigahertz
   (wordfeats (W::morph (:forms (-s-3p) :plur W::gigahertz)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("gigahertz%1:28:00"))
     (LF-PARENT ONT::speed-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::byte
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("byte%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     )
    )
   )
  (W::kilobyte
   (abbrev w::kb)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("kilobyte%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     )
    )
   )
  (W::megabyte
   (abbrev w::mb)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("megabyte%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     )
    )
   )
  (W::terabyte
   (SENSES
    ((LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
      (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("terabyte%1:23:00")
      :COMMENTS HTML-PURCHASING-CORPUS)
     )
    )
   )

  (W::KB ;; alternate plural
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070813 :comments nil :wn ("mb%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (LF-FORM W::kilobyte)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-plur-TEMPL)
     )
    )
   )

  (W::MB ;; alternate plural
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070813 :comments nil :wn ("mb%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (LF-FORM W::megabyte)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-plur-TEMPL)
     )
    )
   )
 (W::GB ;; alternate plural
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070813 :comments nil :wn ("mb%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (LF-FORM W::gigabyte)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-plur-TEMPL)
     )
    )
   )

  (W::MEG
   (SENSES
    ((LF-PARENT ONT::memory-unit)
     (LF-FORM W::megabyte)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))

 (W::MEG ;; alternate plural
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070813 :comments nil :wn ("mb%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (LF-FORM W::megabyte)
     (example " 5 meg of ram")
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-plur-TEMPL)
     )
    )
   )
(W::MEGABIT
   (SENSES
    ((LF-PARENT ONT::memory-unit)  (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("megabit%1:23:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  
  (W::gigabyte
   (abbrev w::gb)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("gigabyte%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     )
    )
   )

  (W::gig
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::memory-unit)
     (LF-FORM W::gigabyte)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     )
    )
   )

  (W::GIG ;; alternate plural
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070813 :comments nil :wn ("mb%1:23:00"))
     (LF-PARENT ONT::memory-unit)
     (LF-FORM W::gigabyte)
     (example " 5 gig of ram")
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-plur-TEMPL)
     )
    )
   )
    

  (W::SHIPMENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("shipment%1:06:00"))
     (LF-PARENT ONT::CONTAINER-LOAD)
     (TEMPL Classifier-TEMPL)
     )
    )
   )
  (W::LOAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::CONTAINER-LOAD)
     (TEMPL Classifier-TEMPL)
     )
    )
   )
  (W::DOLLAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("dollar%1:23:00"))
     (LF-PARENT ONT::money-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::euro
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("euro%1:23:00"))
     (LF-PARENT ONT::money-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     )
    )
   )
  (W::cent
   (SENSES
    ((LF-PARENT ONT::money-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("cent%1:23:00") :comments naive-subjects)
     )
    )
   )
  (W::gift
   (SENSES
    ((LF-PARENT ONT::giving)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("gift%1:21:00") :comments naive-subjects)
     (example "I am looking for a gift for my mother")
     )
    )
   )
  (W::present
   (SENSES
    ((LF-PARENT ONT::giving)
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("present%1:21:00") :comments naive-subjects)
     (example "I am looking for a gift for my mother")
     (preference 0.97) ;; prefer adjective
     )
    )
   )
  (W::Equipment
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("equipment%1:06:00"))
     (LF-PARENT ONT::Functional-phys-object)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

  (W::SUPPLIES
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::Functional-phys-object)
     (TEMPL COUNT-PRED-3p-TEMPL)
     )
    )
   )
  (W::grocery
   (SENSES
    ((LF-PARENT ONT::functional-phys-object)
     (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab)
     )
    )
   )
  (W::GOODS
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::Functional-phys-object)
     (TEMPL count-PRED-3p-TEMPL)
     )
    )
   )
  (W::board
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s11)
     (LF-PARENT ONT::Functional-phys-object)
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
  (W::pole
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :wn ("pole%1:06:00") :comments nil)
     (LF-PARENT ONT::Functional-phys-object)
     (example "put it at the base of the pole")
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
  (W::flagpole
   (SENSES
    ((LF-PARENT ONT::functional-phys-object)
     (meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :wn ("flagpole%1:06:00") :comments nil)
     (example "next to the flagpole")
     )
    )
   )
 (W::area
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("area%1:07:00"))
     (LF-PARENT ONT::area)
     (example "the area of the room")
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin sense :entry-date 20091027 :change-date nil :comments nil :wn ("area%1:07:00"))
     (LF-PARENT ONT::area)
     (example "the area of 200 sq meters")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    ((LF-PARENT ONT::loc-as-area)
     (example "the house is in a nice area")
     )
    )
   )
  (W::WEIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("weight%1:07:00"))
     (LF-PARENT ONT::WEIGHT)
     (example "the weight of the truck")
     (TEMPL OTHER-RELN-MASS-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("weight%1:07:00"))
     (LF-PARENT ONT::WEIGHT)
     (example "the weight of five pounds")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
   (W::heaviness
   (SENSES
    ((LF-PARENT ONT::weight)
     (TEMPL OTHER-RELN-MASS-TEMPL)
     (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab :wn ("heaviness%1:07:00"))
     )
    )
   )
  (W::MILEAGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("mileage%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::domain)
     (templ other-reln-mass-templ)
     )
    )
   )
  (W::HEIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("height%1:07:00"))
     (LF-PARENT ONT::height)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("height%1:07:00"))
     (LF-PARENT ONT::height)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::VOLUME
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("volume%1:23:00"))
     (LF-PARENT ONT::VOLUME)
     (TEMPL OTHER-RELN-MASS-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("volume%1:23:00"))
     (LF-PARENT ONT::VOLUME)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::TEMPERATURE
   (abbrev w::temp)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("temperature%1:07:00"))
     (LF-PARENT ONT::TEMPERATURE)
     (TEMPL OTHER-RELN-MASS-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("temperature%1:07:00"))
     (LF-PARENT ONT::TEMPERATURE)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::heat
   (SENSES
    ((LF-PARENT ONT::TEMPERATURE)
     (example "oppressive heat is forecast for today")
     (meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather :wn ("heat%1:07:01" "heat%1:09:00"))
     (templ mass-pred-templ)
     )
    )
   )
  (W::cold
   (SENSES
    ((LF-PARENT ONT::TEMPERATURE)
     (example "severe cold is forecast for today")
     (meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather :wn ("cold%1:07:00" "cold%1:09:00"))
     (TEMPL OTHER-RELN-TEMPL)
     (templ mass-pred-templ)
     )
    )
   )
  (W::humidity
   (SENSES
    ((LF-PARENT ONT::humidity)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("humidity%1:26:00") :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

  (W::visibility
   (SENSES
    ((LF-PARENT ONT::perceptibility)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("visibility%1:07:00") :comments caloy3)
     )
    )
   )
    (W::invisibility
   (SENSES
    ((LF-PARENT ONT::perceptibility)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("invisibility%1:07:00") :comments caloy3)
     )
    )
   )
     (W::tangibility
   (SENSES
    ((LF-PARENT ONT::perceptibility)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("tangibility%1:07:00") :comments caloy3)
     )
    )
   )
  (W::intangibility
   (SENSES
    ((LF-PARENT ONT::perceptibility)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("intangibility%1:07:00") :comments caloy3)
     )
    )
   )
  (W::VOLTAGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date 20081202 :comments html-purchasing-corpus :wn ("voltage%1:19:02"))
     (LF-PARENT ONT::VOLTAGE)
     (SYNTAX (W::MASS W::BARE))
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20031229 :change-date 20081202 :comments html-purchasing-corpus :wn ("voltage%1:19:02"))
     (LF-PARENT ONT::VOLTAGE)
     (SYNTAX (W::MASS W::BARE))
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::SIZE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("size%1:07:00"))
     (LF-PARENT ONT::size)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("size%1:07:00"))
     (LF-PARENT ONT::size)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::magnitude
   (SENSES
    ((LF-PARENT ONT::size)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  
  (W::COLOR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::color)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

  (W::COLOUR
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::color)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::TEXTURE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::texture)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::SHAPE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus :wn ("shape%1:07:00" "shape%1:03:00"))
     (LF-PARENT ONT::shape)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::CONNECTIVITY
   (SENSES
    ((meta-data :origin calo :entry-date 20050522 :change-date nil :wn ("connectivity%1:07:00") :comments caloy2)
     (LF-PARENT ONT::attach)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::to)))))
     )
    )
   )
  (W::FEATURE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("feature%1:09:00") :comments caloy2)
     (LF-PARENT ont::attribute)
     (example "compare the features of this computer")
     (TEMPL count-pred-TEMPL)
     )
    )
   )
  (W::skill
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("skill%1:09:01") :comments ma-request)
     (LF-PARENT ont::attribute)
     )
    )
   )
  (W::expertise
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("expertise%1:09:00") :comments ma-request)
     (LF-PARENT ont::attribute)
     )
    )
   )
  (W::moisture
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("moisture%1:26:00") :comments nil)
     (LF-PARENT ont::attribute)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::aspect
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments caloy2 :wn ("aspect%1:07:02" "aspect%1:07:01"))
     (LF-PARENT ont::attribute)
     (example "this plan differs in one aspect") ;; like feature
      )
    ((meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq :wn ("aspect%1:09:00" "aspect%1:09:01"))
     (LF-PARENT ONT::mental-object) ;; like perspective
     )
    )
   )

   (W::convenience
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :comments projector-purchasing :wn ("convenience%1:26:00" "convenience%1:07:00"))
     (LF-PARENT ont::attribute)
     (example "the convenience of an installment plan")
     )
    )
   )
   (W::characteristic
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments caloy2 :wn ("characteristic%1:07:00" "characteristic%1:07:01"))
     (LF-PARENT ont::attribute)
     (example "compare the characteristics of this computer")
      )
    )
   )
;  (W::STATUS
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
;     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
;     (TEMPL OTHER-RELN-TEMPL)
;     )
;    )
;   )
  (W::truth
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::pride
   (SENSES
    ((LF-PARENT ONT::psychological-property-val)
     (meta-data :origin chf :entry-date 20070810 :change-date nil :comments chf-dialogues)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt W::in)))))
     (example "I take pride in it")
     )
    )
   )
   (W::happiness
   (SENSES
    ((LF-PARENT ONT::emotional-property-val)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
    (W::sadness
     (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT  ONT::emotional-property-val)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
     (W::kindness
   (SENSES
    ((LF-PARENT ONT::emotional-property-val)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::loneliness
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT  ONT::emotional-property-val)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
     (W::craziness
      (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT  ONT::emotional-property-val)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::SUCCESS
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus :wn ("success%1:11:00"))
     (LF-PARENT ONT::outcome)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
   (W::RESULT
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date 20070521 :comments html-purchasing-corpus)
     (LF-PARENT ONT::result)
     (example "here is the list of results")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
;   (W::finding
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050509 :change-date nil :comments projector-purchasing)
;     (LF-PARENT ONT::find)
;     (TEMPL OTHER-RELN-THEME-TEMPL)
;     (preference .98) ;; prefer verb
;     )
;    )
;   )
   (W::outcome
   (SENSES
    ((meta-data :origin calo :entry-date 20050509 :change-date nil :comments projector-purchasing :wn ("outcome%1:11:00"))
     (LF-PARENT ONT::outcome)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
   (W::finding
   (SENSES
    ((meta-data :origin calo :entry-date 20110311 :change-date nil :comments cernl :wn ("outcome%1:11:00"))
     (LF-PARENT ONT::clinical-finding)
     (TEMPL OTHER-RELN-TEMPL)
     (preference .98) ;; prefer verb
     )
    )
   )
   (W::FAILURE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus :wn ("failure%1:11:00"))
     (LF-PARENT ONT::outcome)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::AVAILABILITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("availability%1:07:00"))
     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::priority
   (SENSES
    ((LF-PARENT ONT::importance)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "change the priority of the calendar item")
     (meta-data :origin task-learning :entry-date 20050822 :change-date nil :wn ("priority%1:26:00") :comments nil)
     )
    )
   )
  (W::RANGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date 20070523 :comments html-purchasing-corpus)
     (LF-PARENT ONT::range)
     (example "this is the date range")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::domain
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
   (W::bracket
   (SENSES
    ((meta-data :origin allison :entry-date 20041021 :change-date nil :wn ("bracket%1:14:00") :comments caloy2)
     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  
  
   (W::SPECTRUM
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::grouping)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
   (W::VARIETY
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::grouping)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::ASSORTMENT
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20090520 :wn ("assortment%1:14:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::collection)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::SERIES
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20090520 :comments html-purchasing-corpus)
     (LF-PARENT ONT::sequence)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::SEQUENCE
   (SENSES
    ((meta-data :origin calo :entry-date 20050418 :change-date 20090520 :comments html-purchasing-corpus)
     (LF-PARENT ONT::sequence)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::NEED
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("need%1:26:00" "need%1:17:00"))
     (LF-PARENT ONT::REQUIREMENTS)
     (PREFERENCE 0.92) ;; prefer the verb sense
     )
    )
   )
  (W::criterion
   (wordfeats (W::morph (:forms (-S-3P) :plur W::criteria)))
   (SENSES
    ((LF-PARENT ONT::REQUIREMENTS)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20050425 :change-date nil :comments projector-purchasing)
     )
    )
   )
  (W::REQUIREMENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("requirement%1:17:00" "requirement%1:09:00"))
     (LF-PARENT ONT::REQUIREMENTS)
     )
    )
   )
  (W::standard
   (SENSES
    ((LF-PARENT ONT::REQUIREMENTS)
     (TEMPL OTHER-RELN-TEMPL)
     (example "I don't know if it meets the european standard")
     (meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("standard%1:10:00") :comments projector-purchasing)
     )
    )
   )
;  (W::arrangement
;   (SENSES
;    ((LF-PARENT ONT::arranging)
;     (TEMPL count-pred-TEMPL)
;     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("arrangement%1:09:01") :comments caloy3)
;     )
;    )
;   )

  (W::backlog
   (SENSES
    ((LF-PARENT ONT::hindering)
     (TEMPL other-reln-effect-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("backlog%1:14:00") :comments meeting-understanding)
     )
    )
   )
  (W::jam
   (SENSES
    ((LF-PARENT ONT::problem)
     (TEMPL count-pred-TEMPL)
     (example "I'm in a jam")
     (meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :wn ("jam%1:26:00") :comments meeting-understanding)
     )
    )
   )
  (W::bottleneck
   (SENSES
    ((LF-PARENT ONT::hindering)
     (TEMPL other-reln-effect-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060126 :change-date nil :comments meeting-understanding)
     )
    )
   )
;   (W::specification
;   (SENSES
;    ((LF-PARENT ONT::REQUIREMENTS)
;     (TEMPL OTHER-RELN-TEMPL)
;     (meta-data :origin calo :entry-date 20031205 :change-date nil :wn ("specification%1:10:00") :comments calo-y1script)
;     )
;    )
;   )
  (W::spec
   (SENSES
    ((LF-PARENT ONT::REQUIREMENTS)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20031205 :change-date nil :wn ("spec%1:10:00") :comments calo-y1script )
     )
    )
   )   
  (W::obligation
   (SENSES
    ((LF-PARENT ONT::RESPONSIBILITY)
     (meta-data :origin boudreaux :entry-date 20031024 :change-date nil :comments nil)
     )
    )
   )
  (W::responsibility
   (SENSES
    ((LF-PARENT ONT::RESPONSIBILITY)
     (meta-data :origin boudreaux :entry-date 20031024 :change-date nil :comments "related to obligation")
     )
    )
   )
  (W::RESOURCE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070511 :comments coordops :wn ("resource%1:21:00"))
     (LF-PARENT ONT::resource)
     )
    )
   )
  
  (W::TOTAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("total%1:06:00"))
     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("total%1:06:00") :comments caloy3)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
   (W::SUM
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("sum%1:06:00") :comments caloy3)
     (example "the whole is the sum of its parts")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
   (W::aggregate
   (SENSES
    ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("aggregate%1:06:00") :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )

   (W::PRODUCT
    (SENSES
     ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
      (meta-data :origin leam :entry-date 20070504 :change-date nil :comments nil)
      (example "the product of A and B")
      (TEMPL OTHER-RELN-TEMPL)
      )
     )
    )

   (W::QUOTIENT
    (SENSES
     ((LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
      (meta-data :origin leam :entry-date 20070504 :change-date nil :comments nil)
      (example "the quotient of A and B")
      (TEMPL OTHER-RELN-TEMPL)
      )
     )
    )

    (W::max
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060413 :change-date nil :wn ("max%1:06:00") :comments nil)
     (LF-PARENT ONT::maximize)
     (TEMPL OTHER-RELN-theme-TEMPL)
     )
    )
   )
  (W::min
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060413 :change-date nil :wn ("min%1:28:00") :comments nil)
     (LF-PARENT ONT::minimize)
     (TEMPL OTHER-RELN-theme-TEMPL)
     )
    )
   )

   (W::quality
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("quality%1:07:02") :comments html-purchasing-corpus)
     (LF-PARENT ONT::domain)
     (SEM (F::scale F::any-scale))
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::LENGTH
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("length%1:07:00"))
     (LF-PARENT ONT::length)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("length%1:07:00"))
     (LF-PARENT ONT::length)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )

  (W::WIDTH
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("width%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::width)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("width%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::width)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::DEPTH
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("depth%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::depth)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("depth%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::depth)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )

  (W::THICKNESS
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("thickness%1:07:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::thickness)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("thickness%1:07:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::thickness)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
 (W::BRIGHTNESS
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("brightness%1:07:00" "brightness%1:07:02") :comments projector-purchasing)
     (LF-PARENT ONT::Luminosity-val)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("brightness%1:07:00" "brightness%1:07:02") :comments projector-purchasing)
     (LF-PARENT ONT::luminosity-val)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  
  (W::BANDWIDTH
   (SENSES
    ((LF-PARENT ONT::RATE) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("bandwidth%1:23:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    
  (W::POPULATION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("population%1:23:00"))
     (LF-PARENT ONT::POPULATION)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::DURATION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("duration%1:28:02"))
     (LF-PARENT ONT::DURATION)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("duration%1:28:02"))
     (LF-PARENT ONT::TIME-interval)
     (example "a duration of five hours")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::PLACE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("place%1:15:00" "place%1:15:04"))
     (LF-PARENT ONT::PLACE)
     )
    )
   )
  (W::online
   (SENSES
    ((LF-PARENT ONT::place)
     (example "buy it at our online store")
     (templ bare-pred-templ)
     (meta-data :origin calo-ontology :entry-date 20060417 :change-date nil :comments nil)
     )
    )
   )
  (W::LOCATION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("location%1:03:00"))
     (LF-PARENT ONT::LOCATION)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("location%1:03:00"))
     (LF-PARENT ONT::PLACE)
     )
    )
   )

  (W::vicinity
   (SENSES
    ((LF-PARENT ONT::location)
     (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab)
     )
    )
   )
  (W::neighborhood
   (SENSES
    ((LF-PARENT ONT::district)
     (example "is this hotel in a safe neighborhood")
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("neighborhood%1:15:00") :comments nil)
     )
    )
   )
  (W::AREA
   (SENSES
    ((meta-data :origin lou :entry-date 20060803 :change-date nil :comments nil :wn ("area%1:15:01"))
     (LF-PARENT ONT::LOCATION)
     (example "search this area for mines")
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((LF-PARENT ONT::discipline)
     (example "that's not my area of expertise")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("area%1:09:00") :comments nil)
     (preference .92)
     )
    )
   )
   (W::plot
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil)
     (LF-PARENT ONT::area-def-by-use)
     (example "a plot of land")
     )
    )
   )
  (W::TERRITORY
   (SENSES
    ((LF-PARENT ONT::area-def-by-use) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("territory%1:15:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::region
   (SENSES
    ((LF-PARENT ONT::area-def-by-use) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("region%1:15:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::heaven
   (SENSES
    ((LF-PARENT ONT::location)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::hell
   (SENSES
    ((LF-PARENT ONT::location)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::SECTION
   (SENSES
    ((meta-data :origin monroe :entry-date 20031223 :change-date nil :wn ("section%1:15:01") :comments s7)
     (LF-PARENT ONT::area-def-by-use)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("section%1:09:00" "section%1:06:00") :comments nil)
     (LF-PARENT ONT::part)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::branch
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051224 :change-date nil :comments nil)
     (LF-PARENT ONT::part)
     (TEMPL OTHER-RELN-TEMPL)
     (example "what branch of medicine are you studying")
     )
    )
   )
  (W::SITE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("site%1:15:02" "site%1:15:00" "site%1:10:00"))
     (LF-PARENT ONT::area-def-by-use)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::venue
   (SENSES
    ((LF-PARENT ONT::area-def-by-use)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("venue%1:15:01" "venue%1:15:00") :comments pq0392)
     )
    )
   )
  (W::SCENE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("scene%1:15:00"))
     (LF-PARENT ONT::area-def-by-use)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::DIRECTION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::LOCATION)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((LF-PARENT ONT::direction)
     (example "turn the other direction")
     (meta-data :origin fruitcarts :entry-date 20050427 :change-date nil :wn ("direction%1:15:00") :comments nil)
     )
    )
   )
  (W::DISTRICT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("district%1:15:00"))
     (LF-PARENT ONT::district)
      )
    )
   )
  (W::LOT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("lot%1:15:00"))
     (LF-PARENT ONT::area-def-by-use)
     )
    )
   )
  ((w::parking W::LOT)
   (SENSES
    ((meta-data :origin navigation :entry-date 20080905 :change-date nil :comments nil :wn ("lot%1:15:00"))
     (LF-PARENT ONT::facility)
     )
    )
   )
  (W::MAP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("map%1:06:00"))
     (LF-PARENT ONT::MAP)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::DIAGRAM
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("diagram%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::chart)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::CHART
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("chart%1:10:00"))
     (LF-PARENT ONT::chart)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::GRAPH
   
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("graph%1:10:00"))
     (LF-PARENT ONT::chart)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::PHOTO
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("photo%1:06:00"))
     (LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::PHOTOGRAPH
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("photograph%1:06:00"))
     (LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::negative
   (SENSES
    ((LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("negative%1:06:00") :comments nil)
     )
    )
   )
  (W::PICTURE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::VIEW
   (SENSES
;    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("view%1:09:01" "view%1:06:00") :comments calo-y1script)
;     (LF-PARENT ONT::IMAGE)
;     (TEMPL OTHER-RELN-TEMPL)
;     )
    ((lf-parent ont::mental-object)
     (example "he has strong views about that")
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("view%1:09:04") :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL)
     )	   
    )
   )
  (W::PERSPECTIVE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("perspective%1:09:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::mental-object)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
;  (W::decision
;   (SENSES
;    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("decision%1:09:00") :comments meeting-understanding)
;     (LF-PARENT ONT::mental-object)
;     (example "make a decision about it")
;     )
;    )
;   )
;   (W::objection
;   (SENSES
;    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments meeting-understanding)
;     (LF-PARENT ONT::mental-object)
;     (example "he had no objection")
;     )
;    )
;   )
   (W::reservation
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("reservation%1:09:00") :comments meeting-understanding)
     (LF-PARENT ONT::mental-object)
     (example "i recommend him with no reservations")
     )
    ((LF-PARENT ONT::reserve)
     (example "he made a reservation for 6pm")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("reservation%1:10:01" "reservation%1:09:01") :comments Office)
     )
    )
   )
   (W::ticket
   (SENSES
    ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("ticket%1:10:01" "ticket%1:10:00") :comments pq)
     (LF-PARENT ONT::official-document)
     (example "do you have a ticket")
     )
    )
   )
;  (W::judgement
;   (SENSES
;    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("judgement%1:09:04") :comments meeting-understanding)
;     (LF-PARENT ONT::event)
;     (example "make a judgement about it")
;     )
;    )
;   )
  (W::viewpoint
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("viewpoint%1:09:00") :comments projector-purchasing)
     (LF-PARENT ONT::mental-object)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  
  (W::INTEREST
   (SENSES
;    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("interest%1:09:00") :comments html-purchasing-corpus)
;     (LF-PARENT ONT::mental-object)
;     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt W::in)))))
;     )
     ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (example "mortgage interest")
     (meta-data :origin windenergy :entry-date 20080521 :change-date nil :wn ("tax%1:21:00") :comments nil)
     )
    )
   )
  (W::PATIENCE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("patience%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::mental-object)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt W::with)))))
     )
    )
   )
;  (W::INTENTION
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("intention%1:09:00" "intention%1:09:01"))
;     (LF-PARENT ONT::mental-object)
;     (TEMPL OTHER-RELN-TEMPL)
;     )
;    )
;   )
;  (W::NOTATION
;   (SENSES
;    ((meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("notation%1:10:00") :comments lam-initial)
;     (example "notation used in class")
;     (LF-PARENT ONT::mental-object)
;     (TEMPL count-pred-templ)
;     )
;    ))   
  (W::precedence
   (SENSES
    ((meta-data :origin lam :entry-date 20050425 :change-date nil :comments lam-initial)
     (example "operation precedence")
     (LF-PARENT ONT::mental-object)
     (TEMPL count-pred-templ)
     )
    ))
  (W::GRAPHIC
   (SENSES
    ((meta-data :origin calo :entry-date 20031205 :change-date nil :wn ("graphic%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::image)
     )
    )
   )
  (W::DESKTOP
   (SENSES
    ((meta-data :origin calo :entry-date 20040408 :change-date nil :comments calo-y1v4)
     (LF-PARENT ONT::computer-type)
     )
    )
   )
  (W::handheld
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::device)
     (example "Create a mobile lifestyle with your Palm handheld")
     )
    )
   )
  ((W::hand w::held)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::hand W::helds))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::device)
     (example "Create a mobile lifestyle with your Palm hand held")
     )
    )
   )
  (W::TOP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("top%1:15:00" "top%1:15:01" "top%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::SURFACE
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("surface%1:15:00" "surface%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::STEM
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :wn ("stem%1:10:01") :comments nil)
     (LF-PARENT ONT::plant-part)
     (example "move it so the stem is facing down")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::BOTTOM
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::SIDE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::hypotenuse
   (SENSES
    ((LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("hypotenuse%1:25:00") :comments nil)
     )
    )
   )
  (W::vertex
   (SENSES
    ((LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin fruit-carts :entry-date 20060215 :change-date nil :wn ("vertex%1:09:00" "vertex%1:15:00") :comments nil)
     )
    )
   )
  (W::FRONT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("front%1:15:00" "front%1:06:00" "front%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::BACK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("back%1:06:00" "back%1:15:02"))
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::rear
   (SENSES
    ((LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("rear%1:15:00" "rear%1:15:01" "rear%1:06:00") :comments plow-req)
     )
    )
   )
  ;; to the right/left are handled in the grammar as adverbials, same as "move right/left", to cut down on
  ;; ambiguity 
  (W::RIGHT
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20060803 :change-date nil :comments nil :wn ("right%1:15:00"))
     (LF-PARENT ont::right-loc);ONT::object-dependent-location)
     (example "to the right of the building")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     ;; enforced subcat to reduce ambiguity, but prevents "on the right" unless we add another grammar rule
;;     (TEMPL other-reln-subcat-required-templ)
     )
    )
   )
  (W::LEFT
   (SENSES
    ((meta-data :origin fruitcarts :entry-date 20060803 :change-date nil :comments nil :wn ("left%1:15:00"))
     (LF-PARENT ont::left-loc);ONT::object-dependent-location)
     (example "to the left of the building")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     ;; enforced subcat to reduce ambiguity, but prevents "on the left" unless we add another grammar rule
;;     (TEMPL other-reln-subcat-required-templ)
     )
    )
   )
   (w::north
   (SENSES
    ((meta-data :origin coordops :entry-date 20070516 :change-date nil :comments nil)
     (LF-PARENT ONT::cardinal-point)
     (example "turn right to north")
     (TEMPL other-reln-TEMPL)
     )
    )
   )
  (w::south
   (SENSES
    ((meta-data :origin coordops :entry-date 20070516 :change-date nil :comments nil)
     (LF-PARENT ONT::cardinal-point)
     (example "turn right to south")
     (TEMPL other-reln-TEMPL)
     )
    )
   )
  (w::east
   (SENSES
    ((meta-data :origin coordops :entry-date 20070516 :change-date nil :comments nil)
     (LF-PARENT ONT::cardinal-point)
     (example "turn right to east")
     (TEMPL other-reln-TEMPL)
     )
    )
   )
  (w::west
   (SENSES
    ((meta-data :origin coordops :entry-date 20070516 :change-date nil :comments nil)
     (LF-PARENT ONT::cardinal-point)
     (example "turn right to west")
     (TEMPL other-reln-TEMPL)
     )
    )
   )
  (W::DESTINATION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("destination%1:15:00"))
     (LF-PARENT ont::loc-def-by-goal) ;ONT::destination)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::ORIGIN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("origin%1:15:00"))
     (LF-PARENT ONT::ORIGIN)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::line-dependent-location)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::START
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ont::pos-start-of-trajectory); ONT::LINE-DEPENDENT-LOCATION)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::BEGINNING
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ont::pos-start-of-trajectory) ;ONT::LINE-DEPENDENT-LOCATION)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::BOUND)
     (example "the beginning of the range ")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (preference 0.97)
     )
    ; nominalization of the verb
;    ((LF-PARENT ONT::TIME-POINT)
;     (example "the beginning of the meeting")
;     (meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("beginning%1:28:00"))
;     (TEMPL GEN-PART-OF-RELN-ACTION-TEMPL)
;     )
;    ((LF-PARENT ONT::TIME-POINT)
;     (example "the beginning of the year")
;     (meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("beginning%1:28:00"))
;     (TEMPL GEN-PART-OF-RELN-INTERVAL-TEMPL)
;     )
    )
   )
  (W::END
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("end%1:15:00"))
     (LF-PARENT ont::pos-end-of-trajectory);ONT::LINE-DEPENDENT-LOCATION)
     (example "the end of the line")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::BOUND)
     (example "the end of the range ")
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     ;; Myrosia lowered the preference slightly so that when "the end of the line" parses, it is given preference
     (preference 0.97)
     )
    ;; nominalizations of the verb 
;    ((LF-PARENT ONT::TIME-POINT)
;     (example "the end of the meeting/lesson")
;     (meta-data :origin newbeegle :entry-date 20050211 :change-date nil :wn ("end%1:28:00") :comments nil)
;     (TEMPL GEN-PART-OF-RELN-ACTION-TEMPL)
;     )
;    ((LF-PARENT ONT::TIME-POINT)
;     (example "the end of the year")
;     (meta-data :origin step :entry-date 20080623 :change-date nil :wn ("end%1:28:00") :comments nil)
;     (TEMPL GEN-PART-OF-RELN-INTERVAL-TEMPL)
;     )
    )
   )
  (W::ROUTE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("route%1:06:00"))
     (LF-PARENT ONT::route)
     (prototypical-word t)
     (SEM (F::information F::information-content))
     )
    ((meta-data :origin ralf :entry-date 20040802 :change-date nil :wn ("route%1:15:00") :comments nil)
     (LF-PARENT ONT::ROUTE)
     (example "the route of the truck")
     (TEMPL OTHER-RELN-of-for-TEMPL)
     (prototypical-word t)
     )
    )
   )
  (W::PATH
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("path%1:06:00"))
     (LF-PARENT ONT::ROUTE)
     )
    ((meta-data :origin ralf :entry-date 20040802 :change-date nil :wn ("path%1:17:00") :comments nil)
     (LF-PARENT ONT::ROUTE)
     (example "the flight path of delta 968")
     (TEMPL OTHER-RELN-of-for-TEMPL)
     )
    )
   )
  (W::ROAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("road%1:06:00"))
     (LF-PARENT ONT::route)
     )
    )
   )
  (W::PASSAGEWAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("passageway%1:06:00"))
     (LF-PARENT ONT::structure)
     )
    )
   )
   (W::thoroughfare
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("street%1:06:00" "street%1:06:01"))
     (LF-PARENT ONT::thoroughfare)
     )
    )
   )
  (W::STREET
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("street%1:06:00" "street%1:06:01"))
     (LF-PARENT ONT::thoroughfare)
     )
    )
   )
  (W::AVENUE
   (abbrev w::ave)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("avenue%1:06:00"))
     (LF-PARENT ONT::thoroughfare)
     )
    )
   )
  (W::HIGHWAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("highway%1:06:00"))
     (LF-PARENT ONT::highway)
     )
    )
   )
  (W::THRUWAY
   (SENSES
    ((LF-PARENT ONT::thruway)
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("thruway%1:06:00") :comments plow-req)
     )
    )
   )

  (W::turnpike
   (SENSES
    ((LF-PARENT ONT::thruway)
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("thruway%1:06:00") :comments plow-req)
     )
    )
   )
  (W::EXPRESSWAY
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("expressway%1:06:00") :comments s11)
     (LF-PARENT ONT::highway)
     )
    )
   )

   (W::WAYS
    (wordfeats (W::morph (:forms (-none))))
    (SENSES
     ((LF-PARENT ONT::distance)
      (SYNTAX (W::AGR W::3S))
      (example "it is a long ways to the next oasis")
      (meta-data :origin navigation :entry-date 20080904 :change-date nil :comments nil)
      )
     )
    )

  (W::WAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::procedure)
     (templ other-reln-templ)
     (example "this is the way to paint a house")
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("way%1:06:00"))
     (LF-PARENT ONT::ROUTE)
     (example "do you know the way to calderon")
     )
    ((LF-PARENT ONT::direction)
     (example "orient the camera this way")
     (meta-data :origin calo-ontology :entry-date 20051209 :change-date nil :wn ("way%1:15:00") :comments Orient)
     )
     ((LF-PARENT ONT::distance)
     (example "it is a long way to the next oasis")
     (meta-data :origin navigation :entry-date 20080903 :change-date nil :comments nil)
     )
    )
   )
   (W::LANE
   (SENSES
    ((meta-data :origin lou :entry-date 20040311 :change-date nil :wn ("lane%1:06:01" "lane%1:06:00") :comments lou-sent-entry)
     (LF-PARENT ONT::lane)
     )
    )
   )
   (w::smartboard
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     (LF-PARENT ONT::DISPLAY)
     )
    )
   )
   (W::WHITEBOARD
   (SENSES
    ((meta-data :origin calo :entry-date 20050522 :change-date nil :comments meeting-understanding)
     (LF-PARENT ONT::DISPLAY)
     )
    )
   )
   (W::BLACKBOARD
   (SENSES
    ((meta-data :origin calo :entry-date 20050522 :change-date nil :wn ("blackboard%1:06:00") :comments meeting-understanding)
     (LF-PARENT ONT::DISPLAY)
     )
    )
   )
  (W::DISPLAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("display%1:06:01"))
     (LF-PARENT ONT::DISPLAY)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  (W::output
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::DISPLAY)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  (W::SCREEN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::DISPLAY)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  (W::ID
   (SENSES
      ;; physical form of id
     ((LF-PARENT ONT::symbolic-representation) (TEMPL other-reln-templ)
      (META-DATA :ORIGIN PLOT :ENTRY-DATE 20080505 :CHANGE-DATE NIL
      :COMMENTS NIL))
     ;; abstract
    ((LF-PARENT ONT::identification) (TEMPL other-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20050113 :wn ("id%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ))
  ((W::I w::D)
   (SENSES
    ;; physical form of id
     ((LF-PARENT ONT::symbolic-representation) (TEMPL other-reln-templ)
      (META-DATA :ORIGIN PLOT :ENTRY-DATE 20080505 :CHANGE-DATE NIL
      :COMMENTS NIL))
     ;; abstract
     ((LF-PARENT ONT::identification) (TEMPL other-reln-templ)
      (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20050113
      :COMMENTS HTML-PURCHASING-CORPUS))
    ))
  (W::identification
   (SENSES
    ((LF-PARENT ONT::symbolic-representation) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040113 :CHANGE-DATE NIL :wn ("identification%1:10:01")
								   :COMMENTS calo-y2))))
  
  (W::IDEA
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("idea%1:09:00" "idea%1:09:01" "idea%1:09:03" "idea%1:09:02"))
     (LF-PARENT ONT::mental-object)
     (TEMPL COUNT-PRED-SUBCAT-TEMPL (xp (% W::np (W::sort W::wh-desc))))
     )
    )
   )
  (w::concept
   (senses
    ((lf-parent ont::mental-object)
     (example "enter the concept in the ontology")
     (meta-data :origin calo-ontology :entry-date 20060124 :change-date nil :wn ("concept%1:09:00") :comments caloy3)
     )	   	   	   
    ))
  (W::ASSUMPTION
   (SENSES
    ((meta-data :origin monroe :entry-date 20031223 :change-date nil :wn ("assumption%1:09:00" "assumption%1:10:00") :comments s7)
     (LF-PARENT ONT::mental-object)
     (TEMPL COUNT-PRED-SUBCAT-TEMPL (xp (% W::np (W::sort W::wh-desc))))
     )
    )
   )
  
 (W::DOT
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (example "there's a dot on the triangle")
     (meta-data :origin fruitcarts :entry-date 20050401 :change-date nil :wn ("dot%1:25:00") :comments fruitcarts-03-3)
     )
    )
   )

   (W::POINT
   (SENSES
    ((LF-PARENT ONT::shape)
     (example "the flag with the point on it")
     (meta-data :origin fruitcarts :entry-date 20050401 :change-date nil :wn ("point%1:25:02") :comments fruitcarts-03-3)
     )
    ((LF-PARENT ONT::referential-sem)
     (example "a five point scale")
     (meta-data :origin plow :entry-date 20060523 :change-date nil :comments pq)
     (preference .96)
     )
    )
   )

   (W::mark
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (example "it's a question mark")
     (meta-data :origin plow :entry-date 20050922 :change-date nil :comments nil)
     )
    )
   )

  (W::check
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (example "click on the check box")
     (meta-data :origin plow :entry-date 20070918 :change-date nil :comments nil)
     (preference .97)
     )
     ((LF-PARENT ONT::scrutiny)
     (example "a lab check")
     (meta-data :origin cernl :entry-date 20100701 :change-date nil :comments nil)
     )
    )
   )

  (W::LINE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::grouping)
     (example "a product line" "a line of housewares")
     (templ other-reln-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("line%1:10:01"))
     (LF-PARENT ONT::graphic-symbol)
     (example "the red line on the map")
     )
    )
   )
  
 (W::SEGMENT
   (SENSES
     ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s3)
      (LF-PARENT ONT::graphic-symbol))
     ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s3)
      (LF-PARENT ONT::part)) ;; generalizing from ont::route
    )
   )
;  (W::continuation
;   (SENSES
;     ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s7)
;      (LF-PARENT ONT::ACTION)  ;; generalizing from ont::route
;      )
;     )
;   )
  (W::GROUND
   (SENSES
     ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("ground%1:17:00" "ground%1:27:00" "ground%1:17:01") :comments s3)
      (LF-PARENT ONT::geo-formation)
      )
     )
   )

 (W::source
   (SENSES
     ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s3)
      (LF-PARENT ONT::source)
      (templ other-reln-of-for-templ)
      )
     )
   )
 (W::BASICS
    (wordfeats (W::morph (:forms (-none))))
    (SENSES
     ((LF-PARENT ONT::source) (TEMPL other-reln-TEMPL)
      (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
		 :COMMENTS HTML-PURCHASING-CORPUS))))
   
  (W::basis
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
     ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
      (LF-PARENT ONT::source)
      (templ other-reln-templ)
      )
     )
   )
  (W::CHOICE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("choice%1:09:02"))
     (LF-PARENT ont::option)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("choice%1:09:02"))
     (LF-PARENT ont::option)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::OPTION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("option%1:09:00"))
     (LF-PARENT ont::option)
     )
    )
   )

   (W::alternative
   (SENSES
    ((meta-data :origin calo :entry-date 20031205 :comments calo-y1script :wn ("alternative%1:09:00"))
     (LF-PARENT ONT::option)
     )
    )
   )
; nom
;   (W::replacement
;   (SENSES
;    ((LF-PARENT ont::replacement)
;     (meta-data :origin calo :entry-date 20050527 :comments projector-purchasing)
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::for)))))
;     (example "I'm looking for a replacement for my old projector")
;     )
;    )
;   )
   (W::substitute
   (SENSES
    ((LF-PARENT ont::replacement)
     (meta-data :origin calo :entry-date 20050527 :comments projector-purchasing)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::for)))))
     (example "I'm looking for a substitute for my old projector")
     )
    )
   )
   (W::life
    (wordfeats (W::morph (:forms (-s-3p) :plur w::lives)))
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050816 :comments lf-restructuring)
     (LF-PARENT ONT::life-process)
     )
    )
   )
   (W::preference
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("preference%1:09:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::comparison)
     )
    )
   )
   (W::selection
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("selection%1:09:00") :comments html-purchasing-corpus)
     (LF-PARENT ont::option)
     )
    )
   )
;   (W::comparison
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
;     (LF-PARENT ONT::comparison)
;     )
;    )
;   )
;   (W::contrast
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
;     (LF-PARENT ONT::comparison)
;     )
;    )
;   )
   (W::composite
   (SENSES
    ((LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20040418 :change-date nil :wn ("composite%1:09:00") :comments projector-purchasing)
     )
    )
   )
   (W::complex
   (SENSES
    ((LF-PARENT ONT::facility)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("complex%1:09:00" "complex%1:06:00") :comments Office)
     (example "an office complex")
     )
    )
   )
  (W::PART
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("part%1:24:00"))
     (LF-PARENT ONT::part)
     (TEMPL other-reln-TEMPL)
     )
    )
   )
  (W::module
   (SENSES
    ((LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20041206 :change-date nil :comments caloy2)
     (example "one module in one chip")
     )
    )
   )
  (W::installment
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("installment%1:21:00" "installment%1:10:00" "installment%1:10:01"))
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
   (W::increment
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("increment%1:07:00"))
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::accessory
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("accessory%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::member
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s11)
     (LF-PARENT ONT::member)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::PIECE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::REST
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("rest%1:24:00"))
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("rest%1:24:00"))
     (LF-PARENT ONT::PART)
     )
    )
   )
  (W::SUGGESTION
   (SENSES
    ((LF-PARENT ONT::proposal)
     (meta-data :origin calo :entry-date 20031229 :change-date 20050817 :comments lf-restructuring)
     )
    )
   )
  (W::advice
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date 20050817 :wn ("advice%1:10:00") :comments lf-restructuring)
     (LF-PARENT ONT::proposal)
     )
    )
   )
   (W::recommendation
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date 20050817 :wn ("recommendation%1:10:00") :comments lf-restructuring)
     (LF-PARENT ONT::proposal)
     )
    )
   )
  (W::clue
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("clue%1:10:00" "clue%1:10:01") :comments s14)
     (LF-PARENT ONT::information)
     )
    )
   )
  (W::hint
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("hint%1:10:01" "hint%1:10:02") :comments s14)
     (LF-PARENT ONT::information)
     )
    )
   )
   (W::evidence
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :comments s14 :wn ("evidence%1:10:00"))
     (LF-PARENT ONT::information)
     )
    )
   )
   (W::bug
   (SENSES
    ((meta-data :origin allison :entry-date 20041021 :change-date nil :wn ("bug%1:26:00") :comments caloy2)
     (LF-PARENT ONT::problem)
     )
    )
   )  
  (W::MISTAKE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mistake%1:04:00"))
     (LF-PARENT ONT::problem)
     )
    )
   )
  (W::slip
   (SENSES
    ((LF-PARENT ONT::problem)
     (meta-data :origin lam :entry-date 20050422 :change-date nil :wn ("slip%1:04:05") :comments lam-initial)
     )
    ))
  (W::error
   (SENSES
    ((LF-PARENT ONT::problem)
     (meta-data :origin lam :entry-date 20050422 :change-date nil :comments lam-initial)
     )
    ))   
  (W::DAMAGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("damage%1:11:00"))
     (LF-PARENT ONT::trouble)
     )
    )
   )
  (W::TRANSIT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("transit%1:04:00"))
     (LF-PARENT ONT::voyage)
     )
    )
   )
  (W::PASSAGE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("passage%1:04:00"))
     (LF-PARENT ONT::voyage)
     )
    )
   )
  (W::TRIP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("trip%1:04:00"))
     (LF-PARENT ONT::TRIP)
     )
    )
   )
  (W::TOUR
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("tour%1:04:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::tour)
     )
    )
   )
  (W::jaunt
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("jaunt%1:04:00") :comments s11)
     (LF-PARENT ONT::jaunt)
     )
    )
   )
  (W::journey
   (SENSES
    ((meta-data :origin trips :entry-date 20090401 :change-date nil :wn  ("trip%1:04:00") :comments s11)
     (LF-PARENT ONT::TRIP)
     )
    )
   )
  ((W::ROUND W::TRIP)
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("round_trip%1:04:00"))
     (LF-PARENT ONT::round-TRIP)
     (example "he made a round trip in eight hours")
     (preference .98) ;; prefer the adj sense
     )
    )
   )
  (W::FLIGHT
   (SENSES
    ((LF-PARENT ONT::flight)
     (example "show me all flights before five pm")
     (meta-data :origin ralf :entry-date 20040809 :change-date nil :wn ("flight%1:04:02") :comments nil)
     )
    ((LF-PARENT ONT::group-object)
     (example "a flight of stairs")
     (meta-data :origin asma :entry-date 20111005)
     (templ other-reln-templ)
     )
    ((LF-PARENT ONT::air-vehicle)
     (example "the flight departed")
     (meta-data :origin ralf :entry-date 20040809 :change-date nil :comments nil)
     (preference .96)
     )
    )
   )
   (W::RACE
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060406 :change-date nil :wn ("race%1:11:01") :comments nil)
     (LF-PARENT ONT::gathering-event)
     )
    )
   )
; nom
;  (W::MOTION
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
;     (LF-PARENT ONT::event-type)
;     )
;    )
;   )
;  (W::ZOOM
;   (SENSES
;    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :comments projector-purchasing)
;     (LF-PARENT ONT::event-type)
;     (example "a zoom lens")
;     )
;    )
;   )
;  (W::submission
;   (SENSES
;    ((meta-data :origin plow :entry-date 20060524 :change-date nil :comments nil)
;     (LF-PARENT ONT::event-type)
;     (example "what is the submission deadline")
;     )
;    )
;   )
  (W::shift
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date nil :wn ("shift%1:11:00") :comments projector-purchasing)
     (LF-PARENT ONT::adjust)
     (example "a shift in perspective")
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
     )
    )
   )
  (W::change
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050425 :change-date nil :wn ("change%1:11:00") :comments projector-purchasing)
     (LF-PARENT ONT::adjust)
     (example "there was a change in the weather")
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
     )
    )
   )
;  (W::variation
;   (SENSES
;    ((meta-data :origin caloy2 :entry-date 20050425 :change-date 20090504 :wn ("variation%1:11:01") :comments projector-purchasing)
;     (LF-PARENT ONT::fluctuate)
;     (example "variation in color")
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
;  (W::fluctuation
;   (SENSES
;    ((meta-data :origin caloy2 :entry-date 20050425 :change-date nil :wn ("fluctuation%1:11:00") :comments projector-purchasing)
;     (LF-PARENT ONT::adjust)
;     (example "voltage fluctuation")
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
;  (W::modification
;   (SENSES
;    ((LF-PARENT ONT::adjust)
;     (TEMPL OTHER-RELN-THEME-TEMPL)
;     (EXAMPLE "make modifications")
;     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :wn ("modification%1:04:00") :comments nil)
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
;  (W::rise
;   (SENSES
;    ((meta-data :origin plow :entry-date 20060802 :change-date 20090504 :wn ("rise%1:11:00") :comments weather)
;     (LF-PARENT ONT::increase)
;     (example "a rise in atmospheric pressure")
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
;  (W::increase
;   (SENSES
;    ((meta-data :origin plow :entry-date 20060802 :change-date 20090504 :comments weather :wn ("increase%1:04:00"))
;     (LF-PARENT ONT::increase)
;     (example "a increase in atmospheric pressure")
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
;   (W::decrease
;   (SENSES
;    ((meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather :wn ("decrease%1:04:00"))
;     (LF-PARENT ONT::adjust)
;     (example "a increase in atmospheric pressure")
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
;   (W::distortion
;   (SENSES
;    ((meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather :wn ("decrease%1:04:00"))
;     (LF-PARENT ONT::shape-change)
;     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
;     )
;    )
;   )
  (W::decline
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090407 :change-date nil :comments weather :wn ("decrease%1:04:00"))
     (LF-PARENT ONT::adjust)
     (example "he experienced a decline")
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::in)))))
     )
    )
   )
;  (W::modulation
;   (SENSES
;    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("modulation%1:10:00") :comments nil)
;     (LF-PARENT ONT::event-type)
;     (example "signal modulation")
;     )
;    )
;   )

  (W::release
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("release%1:10:00") :comments projector-purchasing)
     (LF-PARENT ONT::gathering-event)
     (example "a press release")
     )
    )
   )
;  (W::LAUNCH
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("launch%1:04:00") :comments html-purchasing-corpus)
;     (LF-PARENT ONT::event-type)
;     )
;    )
;   )
;  (W::expiration
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("expiration%1:28:00") :comments html-purchasing-corpus)
;     (LF-PARENT ONT::event-type)
;     )
;    )
;   )
  (W::MIGRATION
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("migration%1:04:00" "migration%1:11:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::migration)
     )
    )
   )
  (W::VOYAGE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("voyage%1:04:01" "voyage%1:04:00"))
     (LF-PARENT ONT::voyage)
     )
    )
   )
    (W::vacation
   (SENSES
    (  (meta-data :origin calo :entry-date 20031211 :comments calo-y1script)
     (LF-PARENT ONT::vacation)
     )
    )
   )

(W::leave
   (SENSES
    (  (meta-data :origin calo :entry-date 20031211 :comments calo-y1script)
     (LF-PARENT ONT::vacation)
     (example "he is on leave this month")
     )
    )
   )

  (W::holiday
   (SENSES
    (  (meta-data :origin calo :entry-date 20031211 :comments calo-y1script)
     (LF-PARENT ONT::vacation)
     )
    )
   )
  (W::sale
   (SENSES
    ((meta-data :origin calo :entry-date 20050324 :comments caloy2)
     (LF-PARENT ONT::located-event)
     )
    )
   )
  (W::SITUATION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::event-type)
     )
    )
   )
   (W::SCENARIO
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("scenario%1:10:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::event-type)
     )
    )
   )
   (W::OCCASION
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::event-type)
     )
    )
   )
  (W::POSSIBILITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090427 :comments nil)
     (LF-PARENT ONT::likelihood)
     )
    )
   )
  (W::OPPORTUNITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("opportunity%1:26:00"))
     (LF-PARENT ONT::event-type)
     )
    )
   )
 
  (W::channel
   (SENSES
    ;; a communication path -- should we create a specialized lf for that?
    ((LF-PARENT ONT::communication-channel)
     (example "the weather channel")
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :comments caloy3)
     )
    )
   )
;  (W::QUESTION
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("question%1:10:03"))
;     (LF-PARENT ONT::questioning)
;     )
;    )
;   )
;  (W::query
;   (SENSES
;    ((LF-PARENT ONT::questioning)
;     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
;     )
;    )
;   )
;  (W::DELAY
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("delay%1:28:00"))
;     (LF-PARENT ONT::situation)
;     )
;    )
;   )
  (W::PROBLEM
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::PROBLEM)
     )
    )
   )
;  (W::disturbance
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090403 :change-date nil :comments nil)
;     (LF-PARENT ONT::PROBLEM)
;     (example "sleep disturbances")
;     )
;    )
;   )

  (W::issue
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("issue%1:09:01" "issue%1:09:00") :comments s11)
     (LF-PARENT ONT::situation)
     )
    )
   )

 (W::matter
   (SENSES
    ((meta-data :origin text-processing :entry-date 20091216 :change-date nil :wn ("issue%1:09:01" "issue%1:09:00") :comments nil)
     (LF-PARENT ONT::situation)
     (example "see what is the matter; talk about the matter")
     )
    )
   )
  
  (W::concern
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("concern%1:09:01") :comments projector-purchasing)
     (LF-PARENT ONT::trouble)
     )
    )
   )
  (W::TASK
   (SENSES
    ((LF-PARENT ONT::procedure)
     (meta-data :origin trips :entry-date unknown :change-date  20050817 :comments lf-restructuring)
     )
    )
   )
  (W::challenge
   (SENSES
    ((LF-PARENT ONT::PROBLEM)
     (meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("challenge%1:26:00") :comments lam-initial)
     )
    ))
   
  (W::CONDITION
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("condition%1:10:02"))
     (LF-PARENT ONT::requirements)
     (example "one condition for the purchase is approval")
     )
    ((LF-PARENT ONT::condition)
     (example "what are the weather conditions for tomorrow" "what is the patient's condition")
     (meta-data :origin plow :entry-date 20050425 :change-date nil :wn ("condition%1:26:00") :comments plow-req)
     )
    )
   )
  (W::SUBTASK
   (SENSES
    ((LF-PARENT ONT::procedure)
     (meta-data :origin caloy2 :entry-date 20040622 :change-date  20050817 :comments lf-restructuring)
     )
    )
   )
  (W::ASSIGNMENT
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050817 :comments lf-restructuring)
     (LF-PARENT ONT::proposal)
     )
    )
   )
  (W::Allocation
   (SENSES
    ((meta-data :origin plow :entry-date 20060524 :change-date nil :comments pq0266)
     (LF-PARENT ONT::proposal)
     )
    )
   )
  (W::DIFFICULTY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("difficulty%1:04:00"))
     (LF-PARENT ONT::trouble)
     (TEMPL mass-PRED-TEMPL)
     )
    ((LF-PARENT ONT::trouble)
     (example "he has difficulty doing that")
     (meta-data :origin calo :entry-date 20031130 :change-date nil :wn ("difficulty%1:04:00") :comments caloy2)
     (TEMPL mass-PRED-assoc-with-TEMPL  (XP (% W::vp (W::vform W::ing))))
     )
    )
   )
  (W::TROUBLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("trouble%1:04:02"))
     (LF-PARENT ONT::trouble)
     (TEMPL mass-PRED-TEMPL)
     )
    ((LF-PARENT ONT::trouble)
     (example "he has trouble doing that")
     (meta-data :origin calo :entry-date 20031130 :change-date nil :wn ("trouble%1:04:02") :comments caloy2)
     (TEMPL mass-PRED-assoc-with-TEMPL  (XP (% W::vp (W::vform W::ing))))
     )
    )
   )
  (W::risk
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn ("trouble%1:04:02"))
     (LF-PARENT ONT::trouble)
     (TEMPL count-PRED-TEMPL)
     )
    )
   )

   (W::danger
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn ("trouble%1:04:02"))
     (LF-PARENT ONT::trouble)
     (TEMPL mass-PRED-TEMPL)
     )
    )
   )
  (W::SHAME
   (SENSES
    ((LF-PARENT ONT::trouble)
     (example "that's a shame")
     (meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("shame%1:11:00") :comments projector-purchasing)
     (templ bare-pred-templ)
     )
    )
   )
   (W::distress
   (SENSES
    ((LF-PARENT ONT::trouble)
     (meta-data :origin calo :entry-date 20090403 :change-date nil :comments nil)
     (templ mass-pred-templ)
     )
    )
   )
  (W::SNOWSTORM
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("snowstorm%1:19:00"))
     (LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     )
    )
   )
  (W::ICESTORM
   (SENSES
    ((LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     (meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("snowstorm%1:19:00"))
     )
    )
   )
  (W::THUNDERSTORM
   (SENSES
    ((LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("thunderstorm%1:19:00") :comments plow-req)
     )
    )
   )
   (W::rainSTORM
   (SENSES
    ((LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("rainstorm%1:19:00") :comments plow-req)
     )
    )
   )
  (W::hailSTORM
   (SENSES
    ((LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("hailstorm%1:19:00") :comments plow-req)
     )
    )
   )
  (W::STORM
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("storm%1:19:00"))
     (LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     )
    )
   )
  (W::HURRICANE
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("hurricane%1:19:00"))
     (LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     )
    )
   )
   (W::tornado
   (SENSES
    ((LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("tornado%1:19:00") :comments caloy3)
     )
    )
   )
   (W::cyclone
   (SENSES
    ((LF-PARENT ont::ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("cyclone%1:19:00" "cyclone%1:26:00") :comments caloy3)
     )
    )
   )
  (W::steam
   (SENSES
    ((LF-PARENT ONT::cloud-object)
     (templ mass-pred-templ)
     (meta-data :origin mobius :entry-date 20060712 :change-date nil :comments engine-texts)
     )
    )
   )
   (W::smoke
   (SENSES
    ((LF-PARENT ONT::cloud-object)
     (templ mass-pred-templ)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("smoke%1:19:00" "smoke%1:22:00") :comments caloy3)
     )
    )
   )
   (W::smog
   (SENSES
    ((LF-PARENT ONT::cloud-object)
     (templ mass-pred-templ)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("smog%1:26:00") :comments caloy3)
     )
    )
   )
   (W::haze
   (SENSES
    ((LF-PARENT ONT::cloud-object)
     (templ mass-pred-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::pollution
   (SENSES
    ((LF-PARENT ONT::pollution)
     (templ mass-pred-templ)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("pollution%1:26:00") :comments caloy3)
     )
    )
   )
   (W::fog
   (SENSES
    ((LF-PARENT ONT::cloud-object)
     (templ mass-pred-templ)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("fog%1:19:00") :comments caloy3)
     )
    )
   )
   (W::cloud
   (SENSES
    ((LF-PARENT ONT::cloud-object)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("cloud%1:19:01" "cloud%1:17:00") :comments caloy3)
     )
    )
   )
   ((W::funnel w::cloud)
   (SENSES
    ((LF-PARENT ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :comments caloy3)
     )
    )
   )
   (W::twister
   (SENSES
    ((LF-PARENT ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("twister%1:19:00") :comments caloy3)
     )
    )
   )
   (W::tsunami
   (SENSES
    ((LF-PARENT natural-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("tsunami%1:11:00") :comments nil)
     )
    )
   )
  (W::monsoon
   (SENSES
    ((LF-PARENT atmospheric-phenomenon)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::thunder
   (SENSES
    ((LF-PARENT ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("thunder%1:11:00" "thunder%1:11:01") :comments nil)
     )
    )
   )
   (W::lightning 
   (SENSES
    ((LF-PARENT ATMOSPHERIC-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     )
    )
   )
   ((W::tidal w::wave)
   (SENSES
    ((LF-PARENT natural-PHENOMENON)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("tidal_wave%1:11:01") :comments nil)
     )
    )
   )
   (w::wave
   (SENSES
    ((LF-PARENT ONT::EVENT)
     (example "the east coast is experiencing a heat wave")
     (meta-data :origin plow :entry-date 20060802 :change-date nil :wn ("wave%1:19:00") :comments weather)
     )
    )
   )
   (w::explosion
   (SENSES
    ((LF-PARENT ONT::explode)
     (example "the explosion drives the piston downward")
     (meta-data :origin mobius :entry-date 20080728 :change-date 20090507 :comments engine texts)
     (templ other-reln-theme-templ)
     )
    )
   )
   (W::earthquake
   (SENSES
    ((LF-PARENT ONT::natural-phenomenon)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("earthquake%1:11:00") :comments nil)
     )
    )
   )

  (W::DISASTER
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("disaster%1:11:00"))
     (LF-PARENT ONT::located-event)
     )
    )
   )
  (W::WEATHER
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("weather%1:19:00"))
     (LF-PARENT ONT::weather)
     )
    )
   )
  (W::prediction
   (SENSES
    ((LF-PARENT ONT::predict)
     (example "click here for the forecast")
     (meta-data :origin task-learning :entry-date 20051109 :change-date nil :wn ("prediction%1:10:00") :comments zipcode-dialog)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::about)))))
     )
    )
   )
  (W::forecast
   (SENSES
    ((LF-PARENT ONT::predict)
     (example "click here for the forecast")
     (meta-data :origin task-learning :entry-date 20051109 :change-date nil :wn ("forecast%1:10:00") :comments zipcode-dialog)
     (templ other-reln-theme-templ)
     )
    )
   )
  (W::LIGHT
   (SENSES
    ((LF-PARENT ONT::light)
     (example "we had to close the curtains to keep out the light")
     (meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("light%1:19:00") :comments projector-purchasing)
     (templ mass-pred-templ)
     )
    )
   )
   (W::DARK
   (SENSES
    ((LF-PARENT ONT::light)
     (example "they were sitting in the dark")
     (meta-data :origin calo :entry-date 20050811 :change-date nil :wn ("dark%1:15:00") :comments nil)
     (templ mass-pred-templ)
     )
    )
   )
   (W::SUNLIGHT
   (SENSES
    ((LF-PARENT ONT::light)
     (example "we had to close the curtains to keep out the sunlight")
     (meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("sunlight%1:19:00") :comments projector-purchasing)
     (templ mass-pred-templ)
     )
    )
   )
   (W::precipitation
   (SENSES
    ((LF-PARENT ONT::precipitation)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("precipitation%1:19:00") :comments caloy3)
     (TEMPL MASS-PRED-TEMPL)
     (example "what is the chance of precipitation")
     )
    )
   )
  (W::rain
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("rain%1:19:00"))
     (LF-PARENT ONT::precipitation)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::wind
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("wind%1:19:00"))
     (LF-PARENT ONT::air-current)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::gale
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("wind%1:19:00"))
     (LF-PARENT ONT::air-current)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::snow
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("snow%1:19:00"))
     (LF-PARENT ONT::precipitation)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::sleet
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sleet%1:19:00"))
     (LF-PARENT ONT::precipitation)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::hail
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("hail%1:19:00"))
     (LF-PARENT ONT::precipitation)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::ice
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("ice%1:27:00"))
     (LF-PARENT ONT::substance)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::lava
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("lava%1:27:00"))
     (LF-PARENT ONT::substance)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::FACT
   (SENSES
    ((LF-PARENT ONT::FACT)
     (example "the fact that he left")
     (templ count-subcat-that-optional-templ)
     (meta-data :origin trips :entry-date unknown :change-date 20041201 :wn ("fact%1:09:01") :comments caloy2)
     )
    )
   )

  (W::REASON
   (SENSES
    ((LF-PARENT ONT::motive)
     (example "the reason that he left")
     (templ count-subcat-that-optional-templ)
     (meta-data :origin trips :entry-date unknown :change-date 20041201 :wn ("reason%1:16:00") :comments caloy2)
     (preference .98) ;; prefer subcat for
     )
     ((LF-PARENT ONT::motive)
     (example "the reason for the appointment")
     (templ count-subcat-purpose-templ)
     (meta-data :origin plot :entry-date 20081204 :change-date nil :wn ("reason%1:16:00") :comments caloy2)
     )
    )
   )

  (W::motivation
   (SENSES
    ((LF-PARENT ONT::motive)
     (example "what is the motivation for this proposal")
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype W::for))))
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("motivation%1:03:00") :comments nil)
     )
    )
   )
  (W::EVENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("event%1:03:00"))
     (LF-PARENT ONT::EVENT)
     )
    )
   )
  (W::SHOW
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::presentation)
     (preference .92)
     )
    )
   )
  (W::presentation
   (SENSES
    ((LF-PARENT ONT::presentation)
     (meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("presentation%1:04:00") :comment caloy2)
     (example "I need an lcd projector for my presentations")
     )
    )
   )
 (W::projection
   (SENSES
    ((LF-PARENT ONT::EVENT)
     (meta-data :origin calo :entry-date 20050425 :change-date nil :comment projector-purchasing)
     (example "I need it for slide projection")
     )
    )
   )
  
  (W::colloquium
   (wordfeats (W::morph (:forms (-S-3P) :plur W::colloquia )))
   (SENSES
    ((LF-PARENT ONT::presentation)
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("colloquium%1:14:00" "colloquium%1:10:00") :comment projector-purchasing)
     (example "I need an lcd projector for our colloquium series")
     )
    )
   )
  (W::demo
   (SENSES
    ((LF-PARENT ONT::presentation)
     (meta-data :origin calo :entry-date 20041203 :change-date nil :wn ("demo%1:10:00") :comment caloy2)
     (example "I need an lcd projector for the demo")
     )
    )
   )
;  (W::demonstration
;   (SENSES
;    ((LF-PARENT ONT::presentation)
;     (meta-data :origin calo :entry-date 20041203 :change-date nil :wn ("demonstration%1:04:00") :comment caloy2)
;     (example "I need an lcd projector for the system demonstration")
;     )
;    )
;   )
;  (W::iteration
;   (SENSES
;    ((LF-PARENT ONT::EVENT)
;     (meta-data :origin calo :entry-date 20060516 :change-date nil :wn ("iteration%1:04:00") :comment pqs)
;     (example "we're done with the iteration")
;     )
;    )
;   )
;  (W::repetition
;   (SENSES
;    ((LF-PARENT ONT::EVENT)
;     (meta-data :origin calo :entry-date 20060516 :change-date nil :wn ("repetition%1:11:00") :comment pqs)
;     (example "we're done with the repetition")
;     )
;    )
;   )
   (W::talk
   (SENSES
    ((LF-PARENT ONT::presentation)
     (meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("talk%1:10:02") :comment caloy2)
     (example "I need an lcd projector for my talk")
     )
    )
   )
   (W::lecture
   (SENSES
    ((LF-PARENT ONT::presentation)
     (meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("lecture%1:10:00") :comment caloy2)
     (example "I need an lcd projector for my lecture")
     )
    )
   )
;; still here until :nom lists implemented -- right now "act" is the :nom for w::act (v)
  (W::ACTION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("action%1:04:02" "action%1:04:03" "action%1:04:01" "action%1:04:04" "action%1:04:00"))
     (LF-PARENT ONT::ACTING)
     (templ other-reln-cause-templ)
     )
    )
   )

;; adding (reinstating) this as ont::act for gloss
 (W::ACT
   (SENSES
    ((meta-data :origin jr :entry-date 20120426 :comment gloss-variant)
     (LF-PARENT ONT::ACT)
     (templ other-reln-templ)
     )
    )
   )

  (W::PLAN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plan%1:09:00"))
     (EXAMPLE "let's make a plan")
     (LF-PARENT ONT::procedure)
     )
    ; nom
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("plan%1:09:00"))
;     (EXAMPLE "Cancel this plan -- meaning cancel the actions connected with the plan")
;     (LF-PARENT ONT::ACTION)
;     )
    )
   )
   (W::CONTRACT
   (SENSES
    ((EXAMPLE "Does it have a service contract")
     (meta-data :origin calo :entry-date 20040504 :change-date 20050901 :wn ("contract%1:10:00") :comments calo-y1variants)
     (LF-PARENT ONT::official-document)
     )
    )
   )
  (W::ALGORITHM
   (SENSES
    ((meta-data :origin lou :entry-date 20040311 :change-date nil :wn ("algorithm%1:09:00") :comments lou-sent-entry)
     (EXAMPLE "use the css search algorithm")
     (LF-PARENT ONT::algorithm)
     )
    )
   )

;  (W::SEARCH
;   (SENSES
;    ((meta-data :origin lou :entry-date 20040311 :change-date nil :wn ("search%1:22:00") :comments lou-sent-entry)
;     (EXAMPLE "use the search algorithm")
;     (LF-PARENT ONT::search)
;     )
;    )
;   )
; nom
;  (W::investigation
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050419 :change-date 20090522 :comments meeting-understanding)
;     (LF-PARENT ONT::analytic-action)
;     )
;    )
;   )
  
  (W::PROGRAM
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050816 :comments lf-restructuring)
     (LF-PARENT ONT::algorithm)
     )
;    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus :wn ("program%1:04:00"))
;     (example "execute the program")
;     (LF-PARENT ONT::ACTION)
;     )
    )
   )
  (W::PROJECT
   (SENSES
    ((meta-data :origin calo :entry-date 20040113 :change-date 20050817 :wn ("project%1:09:00") :comments lf-restructuring)
     (LF-PARENT ONT::objective)
     )
    )
   )
  (W::OBJECTIVE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050817 :wn ("objective%1:09:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::objective)
     )
    )
   )
  (W::GOAL
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050817 :wn ("goal%1:09:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::objective)
     )
    )
   )
  (W::LANGUAGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("language%1:10:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )
  (W::SENTENCE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sentence%1:10:00"))
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )
 (W::utterance
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )
  (W::WORD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("word%1:10:00"))
     (LF-PARENT ONT::LINGUISTIC-OBJECT)
     )
    )
   )
   (W::punctuation
   (SENSES
    ((LF-PARENT ONT::punctuation)
     (templ mass-pred-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::noun
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("noun%1:10:00"))
     )
    )
   )
   (W::verb
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("verb%1:10:00"))
     )
    )
   )
  (W::pronoun
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("pronoun%1:10:00"))
     )
    )
   )
  (W::adjective
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("adjective%1:10:00"))
     )
    )
   )
  (W::adverb
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("adverb%1:10:00"))
     )
    )
   )
;  (W::SOUND
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sound%1:10:00"))
;     (example "the sound wave")
;     (LF-PARENT ONT::AUDIO))
;    )
;   )
   (W::NOISE
   (SENSES
    ((LF-PARENT ONT::make-sound)
     (example "there is noise in the signal")
     (meta-data :origin calo :entry-date 20050215 :change-date nil :wn ("noise%1:11:00") :comments caloy2)
     )
    )
   )
   (W::signal
   (SENSES
    ((LF-PARENT ONT::message)
     (meta-data :origin calo :entry-date 20050405 :change-date nil :wn ("signal%1:10:00") :comments projector-purchasing)
     )
    )
   )
;  (W::prompt
;   (SENSES
;    ((LF-PARENT ONT::provoke)
;     (meta-data :origin plot :entry-date 20080604 :change-date 20090508 :wn ("signal%1:10:00") :comments nil)
;     (example "this is the \"stop\" prompt")
;     )
;    )
;   )

  (W::ACOUSTICS
   (wordfeats (W::morph (:forms (-s-3p) :plur W::acoustics)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("acoustics%1:09:00"))
     (LF-PARENT ONT::AUDIO))
    )
   )
  (W::TEXT
   (SENSES
    ((LF-PARENT ONT::text-representation)
     (meta-data :origin calo :entry-date 20040406 :change-date 20050325 :wn ("text%1:10:00") :comments y1v5)
     )
    )
   )
  (W::transcription
   (SENSES
    ((LF-PARENT ONT::text-representation)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("transcription%1:10:00") :comments ma-request)
     )
    )
   )
  (W::print
   (SENSES
    ((LF-PARENT ONT::text-representation)
     (example "in print" "print server")
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("print%1:10:00") :comments nil)
     )
    )
   )
  (W::FILE
   (SENSES
    ( ;; 20050325 changed from info-function-object to info-medium
     (LF-PARENT ONT::info-medium)
     (meta-data :origin calo :entry-date 20040406 :change-date 20050325 :wn ("file%1:10:00") :comments y1v6)
     )
    )
   )
  (W::FORMAT
   (SENSES
    (
     (LF-PARENT ONT::info-holder)
     (meta-data :origin calo :entry-date 20050404 :change-date nil :wn ("format%1:10:00") :comments nil)
     )
    )
   )
  (W::representation
   (SENSES
    (
     (LF-PARENT ONT::info-holder)
     (meta-data :origin calo :entry-date 20050404 :change-date nil :wn ("representation%1:06:00") :comments nil)
     )
    )
   )
  (W::DOCUMENT
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (meta-data :origin calo :entry-date 20040622 :change-date 20050325 :wn ("document%1:06:00" "document%1:10:01") :comments y2)
     )
    )
   )
  (W::printout
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("printout%1:10:00") :comments y3)
     )
    )
   )
  (W::PAGE
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (meta-data :origin calo :entry-date 20041025 :change-date 20050325 :wn ("page%1:10:00") :comments y2)
     )
    )
   )
  (W::BOOK
   (SENSES
    ((LF-PARENT ONT::book)
     (templ count-pred-subcat-originator-optional-templ)
     (example "a book by hemingway")
     (meta-data :origin calo :entry-date 20040716 :change-date 20070517 :wn ("book%1:06:00" "book%1:10:00") :comments y2)
     )
    )
   )
  (W::atlas
   (SENSES
    ((LF-PARENT ONT::map)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::isbn
   (SENSES
    ((LF-PARENT ONT::id-number) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040113 :CHANGE-DATE NIL
      :COMMENTS calo-y2))))
  ((W::isbn w::number)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::isbn W::numbers))))
   (SENSES
    ((LF-PARENT ONT::id-number) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040113 :CHANGE-DATE NIL
		:COMMENTS calo-y2))))
  (W::paperback
   (SENSES
    ((meta-data :origin plow :entry-date 20050927 :change-date nil :wn ("paperback%1:06:00") :comments naive-subjects)
     (LF-PARENT ONT::book)
     (example "I will get the new paperback")
     )
    )
   )
  (W::hardcover
   (SENSES
    ((meta-data :origin calo :entry-date 20040716 :change-date nil :wn ("hardcover%1:06:00") :comments y2)
     (LF-PARENT ONT::book)
     )
    )
   )
   (W::softcover
   (SENSES
    ((meta-data :origin calo :entry-date 20040716 :change-date nil :comments y2)
     (LF-PARENT ONT::book)
     )
    )
   )
   (W::record
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("record%1:10:03") :comments naive-subjects)
     (LF-PARENT ONT::info-medium)
     (example "Keep a record of the proceedings")
     )
    )
   )
   (W::transcript
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("transcript%1:10:01") :comments ma-request)
     (LF-PARENT ONT::text-representation)
     (example "make a transcript of the proceedings")
     )
    )
   )
; :nom
;   (W::indication
;   (SENSES
;    ((meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("indication%1:10:00") :comments naive-subjects)
;     (LF-PARENT ONT::information)
;     (example "That is an indication of how serious the problem is")
;     )
;    )
;   )
   (W::textbook
   (SENSES
    ((meta-data :origin plow :entry-date 20050927 :change-date nil :wn ("textbook%1:10:00") :comments naive-subjects)
     (LF-PARENT ONT::publication)
     )
    )
   )
  (W::publication
   (SENSES
    ((LF-PARENT ONT::publication)
     (templ count-pred-subcat-originator-optional-templ)
     (meta-data :origin calo :entry-date 20040716 :change-date nil :wn ("publication%1:10:00") :comments y2)
     )
    )
   )
  (W::DATA
   (SENSES
    ((LF-PARENT ONT::information)
     (templ mass-pred-templ)
     (meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("data%1:14:00") :comments y1v6)
     )
    )
   )
  (W::space
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20050427 :change-date nil :wn ("space%1:25:00") :comments fruitcart-11-4)
     (example "put more space between the bananas")
     (LF-PARENT ONT::SHAPE)
     )
     ((example "type space")
     (LF-PARENT ONT::letter-symbol)
     )
    )
   )
  (W::MAIL
   (SENSES
    ((LF-PARENT ONT::mail) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MALFUNCTION
   (SENSES
    ((LF-PARENT ONT::problem) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("malfunction%1:11:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PRINTER
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("printer%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PROGRAMMER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("programmer%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PURCHASER
   (SENSES
    ((LF-PARENT ONT::consumer) 
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20060831 :wn ("purchaser%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::buyer
   (SENSES
    ((LF-PARENT ONT::consumer)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20060831 :CHANGE-DATE NIL :wn ("purchaser%1:18:00")
      :COMMENTS calo-cps))))
  (W::LETTER
   (SENSES
    ((LF-PARENT  ONT::linguistic-object)
     (example "what are the letters of the alphabet")
     )
    ((LF-PARENT ONT::info-medium)
     (example "he wrote a letter to his friend")
     (meta-data :origin calo :entry-date 20041103 :change-date nil :wn ("letter%1:10:00") :comments y2)
     )
    )
   )
  (W::initial
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "enter the initials for the city")
     (meta-data :origin plow :entry-date 20060706 :change-date nil :wn ("initial%1:10:00") :comments pq)
     )
    )
   )
  ((W::LETTER W::HEAD)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::info-medium)
     )
    )
   )
  (W::VELOCITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("velocity%1:28:00"))
     (LF-PARENT ONT::RATE)
     (TEMPL other-reln-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("velocity%1:28:00"))
     (LF-PARENT ONT::RATE)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::SPEED
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("speed%1:28:00"))
     (LF-PARENT ONT::RATE)
     (TEMPL other-reln-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("speed%1:28:00"))
     (LF-PARENT ONT::RATE)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )
  (W::RATE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::RATE)
     (TEMPL other-reln-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::RATE)
     (example "he drove at a rate of 5 mph")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    ((meta-data :origin plow :entry-date 20070510 :change-date nil :comments nil)
     (LF-PARENT ONT::charge-per-unit)
     (example "the per diem rate")
     (TEMPL other-reln-templ)
     )
    )
   )
  ((W::CLOCK W::SPEED)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::clock W::speeds))))
   (SENSES
    ((LF-PARENT ONT::CLOCK-SPEED)
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    ((LF-PARENT ONT::CLOCK-SPEED)
     (TEMPL other-reln-TEMPL)
     )
    )
   )
  (W::DISTANCE
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("distance%1:07:00"))
     (LF-PARENT ONT::DISTANCE)
     (example "the distance to the hotel")
;     (TEMPL OTHER-RELN-THEME-TEMPL (xp (% W::pp (W::ptype (? ptp W::to W::from)))))
     (templ other-reln-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("distance%1:07:00"))
     (LF-PARENT ONT::DISTANCE)
     (example "a distance of five miles")
     (TEMPL reln-subcat-of-units-TEMPL)
     )
    )
   )

  (W::COST
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("cost%1:21:00"))
     (LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::charge
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (example "there is an extra charge for gift wrapping")
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("charge%1:21:02") :comments naive-subjects)
     )
    ((lf-parent ont::physical-phenomenon)
     (example "the charge in the cylinder ignites")
     (meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil))
    )
   )
  (W::VALUE
   (SENSES
    ((LF-PARENT ONT::value-cost) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("value%1:07:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))

 (W::profit
   (SENSES
    ((LF-PARENT ONT::value-cost)
     (META-DATA :ORIGIN step :ENTRY-DATE 20080721 :CHANGE-DATE NIL :COMMENTS step6))))

 (W::revenue
   (SENSES
    ((LF-PARENT ONT::value-cost)
     (META-DATA :ORIGIN step :ENTRY-DATE 20080721 :CHANGE-DATE NIL :COMMENTS step6))))
 
  (W::expense
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("expense%1:21:00"))
     (LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::expenditure
   (SENSES
    ((meta-data :origin quicken :entry-date 20071129 :change-date nil :comments nil)
     (LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (w::reimbursement
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("reimbursement%1:21:00") :comments nil)
     )
    )
   )
   ((W::PER w::diem)
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("per_diem%1:21:00") :comments nil)
     )
    )
   )

  (W::PRICE
   (SENSES
    ((LF-PARENT ONT::price)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20031206 :change-date nil :comments calo-y1script )
     )
    )
   )
  
  (W::fare
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin plow :entry-date 20060707 :change-date nil :wn ("fare%1:21:00") :comments pq )
     )
    )
   )
  (W::airfare
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin plow :entry-date 20060707 :change-date nil :wn ("airfare%1:21:00") :comments pq )
     )
    )
   )
  (W::tax
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (example "hotel tax")
     (meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("tax%1:21:00") :comments naive-subjects)
     )
    )
   )
  (W::PAYMENT
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20050324 :change-date nil :wn ("payment%1:21:00") :comments caloy2)
     )
    )
   )

  (W::refund
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20050324 :change-date nil :wn ("refund%1:21:00") :comments caloy2)
     )
    )
   )

   (W::rebate
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20050324 :change-date nil :wn ("rebate%1:21:00") :comments caloy2)
     )
    )
   )

   (W::discount
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20050324 :change-date nil :wn ("discount%1:21:02" "discount%1:21:00") :comments caloy2)
     )
    )
   )
  
  (W::statement
   (SENSES
    ((LF-PARENT ONT::statement)
     (example "make a statement")
     (meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("statement%1:10:00") :comments caloy2 :wn-sense (1 2))
     )
    )
   )
 (W::estimate
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (example "get an estimate of how much it will cost")
     (meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("estimate%1:09:00") :comments caloy2 :wn-sense (4))
     )
    )
   )
 (W::estimation
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (example "what will it cost in your estimation")
     (meta-data :origin chf :entry-date 20070827 :change-date nil :wn ("estimate%1:09:00") :comments chf-dialogues :wn-sense (4))
     )
    )
   )
  (W::STEEL
   (SENSES
    ((LF-PARENT ONT::MAterial) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("steel%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SUBSCRIBER
   (SENSES
    ((LF-PARENT ONT::person)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SUBSTANCE
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL count-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("substance%1:03:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SUPERCOMPUTER
   (SENSES
    ((LF-PARENT ONT::computer-type) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("supercomputer%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SUPPLY
   (SENSES
    ((LF-PARENT ONT::source) (TEMPL other-reln-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("supply%1:23:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TAR
   (SENSES
    ((LF-PARENT ONT::Material) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("tar%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TECHNICIAN
   (abbrev w::tech)
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("technician%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::THEFT
   (SENSES
    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("theft%1:04:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
      (W::TITANIUM
   (SENSES
    ((LF-PARENT ONT::MAterial) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("titanium%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TONER
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("toner%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::TOOLBAR
   (SENSES
    ((LF-PARENT ONT::information-function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::TOOLKIT
   (SENSES
    ((LF-PARENT ONT::computer-software) (TEMPL count-pred-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TOUCHPAD
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::TRADEMARK
   (SENSES
    ((LF-PARENT ONT::information-function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("trademark%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
;  (W::TRANSACTION
;   (SENSES
;    ((LF-PARENT ONT::action) (TEMPL COUNT-PRED-TEMPL)
;     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("transaction%1:04:00")
;      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TRANSITION
   (SENSES
    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("transition%1:11:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
;  (W::TRANSMISSION
;   (SENSES
;    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
;     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("transmission%1:10:00")
;      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::TRAY
   (SENSES
    ((LF-PARENT ONT::small-container) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("tray%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))

  (W::TRIO
   (SENSES
    ((LF-PARENT ONT::quantity)
     (TEMPL substance-unit-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20090520 :wn ("trio%1:14:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::UPGRADE
   (SENSES
    ((LF-PARENT ONT::MANUFACTURED-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("upgrade%1:10:00" "upgrade%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::URL
    (SENSES
     ((EXAMPLE "click on the url")
      (meta-data :origin calo :entry-date 20041004 :change-date nil :wn ("url%1:10:00") :comments caloy2)
      (LF-PARENT ONT::symbolic-representation)
      )
     )
    )
    ((W::U w::R w::L)
    (SENSES
     ((EXAMPLE "click on the url")
      (meta-data :origin calo :entry-date 20041004 :change-date nil :comments caloy2)
      (LF-PARENT ONT::symbolic-representation)
      )
     )
    )
     (w::theater
   (SENSES
    ((EXAMPLE "I want it for my home theater system")
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("theater%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::entertainment)
     )
    )
   )
   (w::theatre
   (SENSES
    ((EXAMPLE "I want it for my home theatre system")
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("theatre%1:06:00") :comments projector-purchasing)
     (LF-PARENT ONT::entertainment)
     )
    )
   )
  (W::USER
   (SENSES
    ((LF-PARENT ONT::user) (TEMPL count-pred-templ)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("user%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::caller
   (SENSES
    ((LF-PARENT ONT::communication-party) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060609 :CHANGE-DATE NIL :wn ("caller%1:18:01")
      :COMMENTS plow-req))))
 
  (W::VIDEOTAPE
   (SENSES
    ((LF-PARENT ONT::data-storage-medium) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("videotape%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::VIDEOCASSETTE
   (SENSES
    ((LF-PARENT ONT::data-storage-medium) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("videocassette%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CASSETTE
   (SENSES
    ((LF-PARENT ONT::data-storage-medium) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("cassette%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::VIRUS
   (SENSES
    ;; changed from ont::problem to ont::harmful-agency
    ((LF-PARENT ONT::harmful-agency) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20080705 :wn ("virus%1:05:00" "virus%1:26:00" "virus%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((W::WALK w::THROUGH)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::walk W::throughs))))
   (SENSES
    ((LF-PARENT ONT::INFORMATION-FUNCTION-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((W::FIRE W::WALL)
   (SENSES
    ((LF-PARENT ONT::computer-software)
     (LF-FORM W::fire-wall)
     (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WARRANTY
   (SENSES
    ((LF-PARENT ONT::information-function-OBJECT) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("warranty%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WEALTH
   (SENSES
    ((LF-PARENT ONT::function-OBJECT) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WEB
   (SENSES
    ((LF-PARENT ONT::COMPUTER-NETWORK) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("web%1:06:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WEBMASTER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("webmaster%1:18:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WEBPAGE
   (SENSES
    ((LF-PARENT ont::website) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("webpage%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::HOMEPAGE
   (SENSES
    ((LF-PARENT ont::website) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("homepage%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WEBSITE
   (SENSES
    ((LF-PARENT ont::website) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("website%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::WORKPLACE
   (SENSES
    ((LF-PARENT ONT::business-facility) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("workplace%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::WORKSPACE
   (SENSES
    ((LF-PARENT ONT::business-facility) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("workspace%1:15:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
      (W::broadband
    (wordfeats (W::morph (:forms (-none))))
    (SENSES
     ((EXAMPLE "I want a wireless broadband router")
      (LF-PARENT ONT::bandwidth-VAL) ;; need a more specific lf, but I don't know what it should be. Try to get more exemplars
      (SEM (F::GRADABILITY F::-))
      (meta-data :origin calo :entry-date 20040504 :change-date nil :comments calo-y1variants)
      )
     )
    )
  (W::SWITCH
   (SENSES
    ((meta-data :origin caet :entry-date 20120102 :change-date nil :comments nil)
     (example "press the switch to turn it on")
 ;    (LF-PARENT ONT::device-component)
     (lf-parent ont::switch)
     )
    )
   )

  (W::BUTTON
   (SENSES
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
     (example "click on the button in the corner of the browser")
     (LF-PARENT ONT::icon)
     )
    ((meta-data :origin caet :entry-date 20110803 :change-date nil :comments nil)
     (example "press the button to turn it on")
 ;    (LF-PARENT ONT::operating-switch)
     (lf-parent ont::button)
     )
    )
   )
  (W::TAB
   (SENSES
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
     (example "click on the tab in the corner of the browser")
     (LF-PARENT ONT::icon)
     )
    )
   )
  (W::arrow
   (SENSES
    ((meta-data :origin plow :entry-date 20050318 :change-date nil :wn ("arrow%1:10:00") :comments nil)
     (example "click on the arrow in the corner of the browser")
     (LF-PARENT ONT::icon)
     )
    )
   )
  ((w::web W::PAGE)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::web W::pages))))
   (SENSES
    ((LF-PARENT ont::website)(TEMPL COUNT-PRED-TEMPL)
     (meta-data :origin calo :entry-date 20041025 :change-date nil :wn ("web_page%1:10:00") :comments y2)
     )
    )
   )
 
  ((w::web W::site)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::web W::sites))))
   (SENSES
    ((LF-PARENT ont::website)
     (meta-data :origin calo :entry-date 20041025 :change-date nil :wn ("web_site%1:10:00") :comments y2)
     )
    )
   )

   ((w::home W::PAGE)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::home W::pages))))
   (SENSES
    ((LF-PARENT ont::website)
     (meta-data :origin calo :entry-date 20041025 :change-date nil :wn ("home_page%1:10:00") :comments y2)
     )
    )
   )
    (W::link
     (SENSES
      ((EXAMPLE "click on the link to my homepage")
      (meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
      (LF-PARENT ONT::link)
      )
     )
    )
;    (W::link
;     (SENSES
;      ((EXAMPLE "click on the link to my homepage")
;      (meta-data :origin plow :entry-date 20050318 :change-date nil :comments nil)
;      (LF-PARENT ONT::icon)
;      )
;     )
;    )
;  (W::quote
;   (SENSES
;    ((LF-PARENT ONT::annotation)
;     (example "there is a famous quote about reality being a persistent illusion")
;     (meta-data :origin calo :entry-date 20050901 :change-date nil :wn ("quote%1:10:01") :comments caloy3)
;     )
;    )
;   )

  (W::quotation
   (SENSES
    ((LF-PARENT ONT::annotation)
     (example "there is a famous quotation about reality being a persistent illusion")
     (meta-data :origin calo :entry-date 20050901 :change-date nil :wn ("quotation%1:10:00") :comments caloy3)
     )
    )
   )
;  (W::citation
;   (SENSES
;    ((LF-PARENT ONT::annotation)
;     (example "what is the reference for this citation")
;     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("citation%1:10:03") :comments nil)
;     )
;    )
;   )
  
  (W::FEE
   (SENSES
    ((LF-PARENT ONT::value-COST)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo :entry-date 20031206 :change-date nil :wn ("fee%1:21:00") :comments calo-y1script )
     )
    ((LF-PARENT ONT::value-COST)
     (TEMPL reln-subcat-of-units-TEMPL)
     (meta-data :origin calo :entry-date 20031206 :change-date nil :wn ("fee%1:21:00") :comments calo-y1script )
     )
    )
   )
  (W::TIME
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("time%1:28:06"))
     (LF-PARENT ONT::TIME-point)
     (example "what time did it arrive")
     (templ other-reln-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("time%1:28:05" "time%1:28:00" "time%1:28:03" "time%1:28:01"))
     (LF-PARENT ONT::TIME-INTERVAL)
     (example "how much time does it take")
     (SEM (F::time-scale F::interval))
     (TEMPL MASS-PRED-TEMPL)
     )
    #||  this is not a time unit, it's the duration sense  JFA 1/10
    ((meta-data :origin step :entry-date 20081013 :change-date nil :comments step2)
     (LF-PARENT ONT::TIME-UNIT)
     (example "that has been know for some time")
     (TEMPL substance-unit-templ)
     )||#

    ;; what's the example for this one?
;    ((LF-PARENT ONT::TIME-INTERVAL)
;     (SEM (F::time-scale F::interval))
    ; (example "a time of five minutes")
;     (TEMPL reln-subcat-of-units-TEMPL)
;     )
    )
   )
  (W::stretch
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("stretch%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (example "they waited a long stretch")
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::period
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("period%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::span
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("span%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::term
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("term%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (example "use the short term parking")
     (TEMPL other-reln-templ)
     )
    ((LF-PARENT ONT::Mathematical-term)
     (TEMPL count-pred-templ)
     (meta-data :origin lam :entry-date 20050706 :change-date nil :wn ("term%1:09:00" "term%1:10:01") :comments nil)
     )
    ((LF-PARENT ONT::requirements)
     (TEMPL count-pred-3p-TEMPL)
     (syntax (W::morph (:forms (-none))))
     (example "he agreed to the terms of the contract")
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("term%1:10:02") :comments caloy3)
     )
    ))
  
 (W::factor
   (SENSES
    ((LF-PARENT ONT::Mathematical-term)
     (TEMPL count-pred-templ)
     (meta-data :origin lam :entry-date 20050707 :change-date nil :wn ("factor%1:23:01") :comments nil)
     )
  ))
	 
  (W::SPELL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("spell%1:28:01"))
     (LF-PARENT ONT::time-interval)
     (TEMPL other-reln-templ)
     )
    )
   )

  (W::while
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date nil :wn ("while%1:28:00") :comments s11)
     (LF-PARENT ONT::time-interval)
     (example "they waited a long while")
     (TEMPL count-pred-templ)
     )
    )
   )
   
  (W::interim
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("interim%1:28:00"))
     (LF-PARENT ONT::time-interval)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::ANSWER
   (SENSES
     ((meta-data :origin trips :entry-date 20060803 :change-date 20090506 :comments nil :wn ("answer%1:10:01"))
      (LF-PARENT ONT::response)
     )
    )
   )
  (W::response
   (SENSES
    ((LF-PARENT ONT::information) ;; this is a proposition -- so you can't "get an answer"
     (meta-data :origin lam :entry-date 20050422 :change-date nil :wn ("response%1:10:01") :comments lam-initial)
     )
    ((LF-PARENT ONT::response)
     (meta-data :origin lam :entry-date 20050422 :change-date 20090508 :wn ("response%1:10:01") :comments lam-initial)
     )
    )
   )

   (W::solution
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :wn ("solution%1:10:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::information-function-object)
     )
    ((meta-data :origin cardiac :entry-date 20090402 :change-date nil :comments nil)
     (LF-PARENT ONT::liquid-substance)
     )
    )
   )
   (W::syrup
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090402 :change-date nil :comments nil)
     (LF-PARENT ONT::liquid-substance)
     (example "cough syrup")
     )
    )
   )
    (W::extract
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090408 :change-date nil :comments nil)
     (LF-PARENT ONT::liquid-substance)
     )
    )
   )
   (W::correction
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("correction%1:04:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::event)
     )
    )
   )
   (W::notice
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("notice%1:10:00" "notice%1:10:01" "notice%1:10:02" "notice%1:10:03") :comments html-purchasing-corpus)
     (LF-PARENT ONT::information)
     )
    )
   )
   (W::list
   (SENSES
    ((meta-data :origin calo :entry-date 20040107 :change-date 20070521 :wn ("list%1:10:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::list)
     (example "here is the list of results")
     )
    )
   )

   (W::milestone
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051209 :change-date nil :comments nil)
    (LF-PARENT ONT::information)
     )
    )
   )
   (W::ballpark
   (SENSES
    ((meta-data :origin allison :entry-date 20040908 :change-date nil :wn ("ballpark%1:07:00") :comments caloy2)
    (LF-PARENT ONT::information)
     )
    )
   )
  (W::GUESS
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("guess%1:09:00" "guess%1:10:00"))
     (LF-PARENT ONT::information)
     )
    )
   )
  (W::DIRECTIONS
   (wordfeats (W::MORPH (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::recipe)
     (TEMPL COUNT-PRED-3p-TEMPL)
     (meta-data :origin task-learning :entry-date unknown :change-date 20050824 :comments lf-restructuring)
     )
    )
   )
  (W::INSTRUCTIONS
   (wordfeats (W::MORPH (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::recipe)
     (TEMPL COUNT-PRED-3p-TEMPL)
     (meta-data :origin task-learning :entry-date unknown :change-date 20050824 :wn ("instructions%1:10:00") :comments lf-restructuring)
     )
    )
   )
;  (W::COMMAND
;   (SENSES
;    ( (meta-data :origin lou :entry-date 20040311 :change-date nil :wn ("command%1:10:01" "command%1:10:00") :comments lou-sent-entry)
;     (LF-PARENT ONT::request)
;     (example "your wish is my command")
;     )
;    )
;   )
  (W::relation
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("relation%1:03:00") :comments projector-purchasing)
     (lf-parent ont::relation)
     (example "the relation between those entities")
     (templ reln-between-theme-templ)
     )
    )
   )
  (W::ratio
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("ratio%1:24:01") :comments projector-purchasing)
    (lf-parent ont::quantitative-relation)
    (example "the ratio of cars to trucks")
    (templ reln-theme-co-theme-templ)
     )
    )
   )
  ;; miles per hour
  (W::mph
   (SENSES
    ( (meta-data :origin calo :entry-date 20050522 :change-date nil :wn ("mph%1:28:01" "mph%1:28:00") :comments caloy2)
      (lf-parent ont::rate-unit)
      (templ bare-pred-templ)
     )
    )
   )
    ((W::m w::p w::h)
   (SENSES
    ( (meta-data :origin calo :entry-date 20050522 :change-date nil :comments caloy2)
      (lf-parent ont::rate-unit)
      (templ bare-pred-templ)
     )
    )
   )
  ;; miles per gallon
   (W::mpg
   (SENSES
    ( (meta-data :origin calo :entry-date 20050522 :change-date nil :comments caloy2)
      (lf-parent ont::rate-unit)
      (templ bare-pred-templ)
     )
    )
   )
      ((W::m w::p w::g)
   (SENSES
    ( (meta-data :origin calo :entry-date 20050522 :change-date nil :comments caloy2)
      (lf-parent ont::rate-unit)
      (templ bare-pred-templ)
     )
    )
   )
  (W::relationship
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date nil :wn ("relationship%1:24:00") :comments projector-purchasing)
     (lf-parent ont::relation)
     (example "the reltaionship bewteen them")
     (templ reln-between-theme-templ)
     )
    )
   )

  (W::COMMS
   (wordfeats (W::MORPH (:forms (-none))))
   (SENSES
    ( (meta-data :origin lou :entry-date 20040311 :change-date nil :comments lou-sent-entry)
     (LF-PARENT ONT::communication)
     (TEMPL COUNT-PRED-3p-TEMPL)
     )
    )
   )
  (W::COMMUNICATION
   (SENSES
    ((meta-data :origin lou :entry-date 20040311 :change-date 20090505 :wn ("communication%1:10:01") :comments lou-sent-entry)
     (LF-PARENT ONT::communication)
     )
    )
   )
  (W::contact
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051209 :change-date 20090508 :wn ("contact%1:10:01") :comments Break-Contact)
     (example "he cut off contact with the other team")
     (LF-PARENT ONT::establish-communication)
     )
    )
   )
  (W::DOCUMENTATION
   (wordfeats (W::MORPH (:forms (-none))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("documentation%1:10:00" "documentation%1:10:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Information-function-object)
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
  (W::NEWS
   (wordfeats (W::MORPH (:forms (-none))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("news%1:10:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::information)
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )

  (W::CARGO
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("cargo%1:06:00"))
     (LF-PARENT ONT::COMMODITY)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::BAGGAGE
   (wordfeats (W::morph NIL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("baggage%1:06:00"))
     (LF-PARENT ONT::Functional-phys-object)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::luggage
   (wordfeats (W::morph NIL))
   (SENSES
    ((LF-PARENT ONT::Functional-phys-object)
     (TEMPL MASS-PRED-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("luggage%1:06:00") :comments plow-req)
     )
    )
   )
  (W::FOOD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("food%1:03:00"))
     (LF-PARENT ONT::FOOD)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::dairy
   (SENSES
    ((LF-PARENT ONT::dairy)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     (templ mass-pred-templ)
     )
    )
   )
  (W::JUICE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("juice%1:13:00"))
     (LF-PARENT ONT::FOOD)
     (SEM (F::form F::liquid))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::OJ
   (SENSES
    ((LF-PARENT ONT::FOOD)
     (LF-FORM W::ORANGE-JUICE)
     (SEM (F::form F::liquid))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::FUEL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("fuel%1:27:00"))
     (LF-PARENT ONT::LIQUID-SUBSTANCE)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::GAS
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("gas%1:27:02"))
     (LF-PARENT ONT::liquid-substance)
     (SEM (F::form F::liquid))
     (TEMPL MASS-PRED-TEMPL)
     )
    ;; a noxious gas
    )
   )
  (W::GASOLINE
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("gasoline%1:27:00"))
     (LF-PARENT ONT::LIQUID-SUBSTANCE)
     (SEM (F::form F::liquid))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::INFORMATION
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060803 :change-date nil :comments nil :wn ("information%1:10:00")) 
     (LF-PARENT ONT::INFORMATION)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::INFO
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("info%1:10:00"))
     (LF-PARENT ONT::INFORMATION)
     (LF-FORM W::information)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

  (W::demographics
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin plot :entry-date 20081023 :change-date nil :comments nil)
     (LF-PARENT ONT::INFORMATION)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::birth
   (SENSES
    ((meta-data :origin plot :entry-date 20081023 :change-date nil :comments nil)
     (LF-PARENT ONT::lifecycle-event)
     )
    )
   )
  (W::MONEY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("money%1:21:00"))
     (LF-PARENT ONT::MONEY)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::CASH
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("cash%1:21:00"))
     (LF-PARENT ONT::MONEY)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::antacid
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("antacid%1:27:00"))
     (LF-PARENT ONT::MEDICATION)
     (SEM (F::form (? frm F::solid F::liquid)))
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )

  (W::WATER
   (SENSES
     ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("water%1:27:01" "water%1:27:00"))
      (LF-PARENT ONT::water)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::liquid
   (SENSES
     ((LF-PARENT ONT::liquid-substance)
     (TEMPL MASS-PRED-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("liquid%1:27:04" "liquid%1:27:00") :comments nil)
     )
    )
   )
  (W::dew
   (SENSES
     ((LF-PARENT ONT::natural-liquid-substance)
     (TEMPL MASS-PRED-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("dew%1:27:00") :comments nil)
     )
    )
   )
  (W::oil
   (SENSES
     ((LF-PARENT ONT::natural-liquid-substance)
     (TEMPL MASS-PRED-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments nil)
     (example "an oil well")
     )
     ((LF-PARENT ONT::fats-oils)
     (TEMPL BARE-PRED-TEMPL)
     (meta-data :origin foodkb :entry-date 20060425 :change-date nil :comments nil)
     (example "sesame is a popular cooking oil")
     )
    )
   )
   (W::AIR
   (SENSES
    ((LF-PARENT ONT::natural-substance)
     (SEM (F::form F::gas))
     (TEMPL MASS-PRED-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("air%1:27:00") :comments nil)
     )
    )
   )
   (W::ozone
   (SENSES
    ((LF-PARENT ONT::natural-substance)
     (SEM (F::form F::gas))
     (TEMPL MASS-PRED-TEMPL)
     (example "the ozone layer")
     (meta-data :origin plow :entry-date 20060802 :change-date nil :wn ("ozone%1:27:00") :comments weather)
     )
    )
   )
   (w::layer
    (senses
     ((lf-parent ont::sheet)
      (example "the ozone layer" "a layer cake") 
      (templ classifier-templ)
      (meta-data :origin plow :entry-date 20060802 :change-date nil :wn ("layer%1:06:00") :comments weather)
      )
     )
    )
   (w::slice
    (senses
     ((lf-parent ont::sheet)
      (example "a slice of pie") 
      (templ classifier-templ)
      (meta-data :origin plow :entry-date 20060802 :change-date nil :wn ("slice%1:13:00") :comments weather)
      )
     )
    )
   (W::SAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sand%1:27:00"))
     (LF-PARENT ONT::substance)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::glass
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("glass%1:06:00"))
    ; (LF-PARENT ONT::tableware)
     (lf-parent ont::glass)
     (TEMPL pred-subcat-contents-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("glass%1:27:00"))
     (LF-PARENT ONT::solid-substance)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::bottle
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bottle%1:06:00" "bottle%1:06:01"))
     (LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
  (W::jar
   (SENSES
    ((meta-data :origin trips :entry-date 20081212 :change-date nil :comments nil :wn ("bottle%1:06:00" "bottle%1:06:01"))
     (LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
   (W::urn
   (SENSES
    ((LF-PARENT ONT::small-container)
     (templ pred-subcat-contents-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::jigger
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("jigger%1:06:00"))
     (LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
  (W::pan
   (SENSES
    ((LF-PARENT ONT::cookware)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     (preference .85) ;; need very low preference to allow preferred coordops interp: "red pan camera full left
     )
    )
   )
   (W::pot
   (SENSES
    (;(LF-PARENT ONT::cookware)
     (lf-parent ont::pot)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
(W::kettle
   (SENSES
    (
     (lf-parent ont::kettle)
     (meta-data :origin caet :entry-date 20111220)
     )
    )
   )
(W::lid
   (SENSES
    (
     (lf-parent ont::lid)
     (meta-data :origin caet :entry-date 20111220)
     )
    )
   )
(W::cover
   (SENSES
    (
     (lf-parent ont::covering)
     (meta-data :origin caet :entry-date 20111220)
     )
    )
   )
  (W::dish
   (SENSES
    ((LF-PARENT ONT::tableware)
     (TEMPL pred-subcat-contents-templ)
     (example "a dish of food")
     (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("dish%1:06:00") :comment nil)    
     )
    )
   )
   (W::plate
   (SENSES
    ((LF-PARENT ONT::tableware)
     (TEMPL pred-subcat-contents-templ)
     (example "a plate of food")
     (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("plate%1:06:00") :comment nil)
     )
    )
   )
   (W::knife
    (wordfeats (W::morph (:forms (-S-3P) :plur w::knives)))
    (SENSES
     ((LF-PARENT ont::cutlery)
      (TEMPL count-pred-templ)
      (example "cut it with a knife")
      (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("knife%1:06:00") :comment nil)
      )
     )
    )
   (W::fork
   (SENSES
    ((LF-PARENT ont::cutlery)
     (TEMPL count-pred-templ)
     (example "eat the cake with a fork")
     (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("fork%1:06:00") :comment nil)
     )
    )
   )
   (W::spoon
   (SENSES
    (;(LF-PARENT ont::cutlery)
     (lf-parent ont::spoon)
     (TEMPL count-pred-templ)
     (example "eat the soup with a spoon")
     (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("spoon%1:06:00") :comment nil)
     )
    )
   )
   (W::bowl
   (SENSES
    ((LF-PARENT ONT::tableware)
     (TEMPL pred-subcat-contents-templ)
     (example "a bowl of soup")
     (meta-data :origin calo-ontology :entry-date 20060630 :change-date nil :wn ("bowl%1:06:00" "bowl%1:06:01") :comment nil)
     )
    )
   )
  (W::container
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("container%1:06:00"))
     (LF-PARENT ONT::container)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )
  (W::bed
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bed%1:06:00"))
     (LF-PARENT ont::furnishings)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )
  (W::stretcher
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("stretcher%1:06:00"))
     (LF-PARENT ONT::stretcher)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )

  (W::NAME
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("name%1:10:00"))
     (EXAMPLE "My name is Chester")
     (LF-PARENT ONT::NAME)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

   (W::signature
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((EXAMPLE "before you get approval you need to get the manager's signature")
      (meta-data :origin caloy2 :entry-date 20040707 :change-date nil :wn ("signature%1:10:00") :comments plan-modifications)
     (LF-PARENT ONT::signature)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
   
  (W::title
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((EXAMPLE "what is the title of the book")
     (meta-data :origin calo :entry-date 20040622 :change-date nil :wn ("title%1:10:01" "title%1:10:00") :comments y2)
     (LF-PARENT ONT::TITLE)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  

  (W::difference
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("difference%1:07:00"))
     (EXAMPLE "It makes no difference")
     (LF-PARENT ONT::COMPARISON)
     )
    )
   )
  

  (W::equivalence
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
     ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("equivalence%1:26:00"))
      (LF-PARENT ONT::COMPARISON)
     )
    )
   )
  (W::similarity
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("similarity%1:07:00"))
     (LF-PARENT ONT::COMPARISON)
     )
    )
   )
 (W::subclass
   (SENSES
    ((EXAMPLE "search all subclasses")
     (meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :wn ("subclass%1:14:00") :comments caloy3)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::superclass
   (SENSES
    ((EXAMPLE "search all subclasses")
     (meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :wn ("superclass%1:14:00") :comments caloy3)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::class
   (SENSES
    ((EXAMPLE "fcc class b")
     (meta-data :origin calo :entry-date 20050418 :change-date nil :wn ("class%1:14:00") :comments projector-purchasing)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("class%1:04:00") :comments caloy3)
     (LF-PARENT ONT::instruction-event)
     (example "take a class")
     )
    )
   )
  (W::code
   (SENSES
   ((EXAMPLE "put the airport code here")
     (meta-data :origin calo :entry-date 20050816 :change-date nil :comments pq0404)
     (LF-PARENT ONT::identification)
     )
    ((EXAMPLE "write some code")
     (meta-data :origin calo :entry-date 20050816 :change-date nil :wn ("code%1:10:02") :comments html-purchasing-corpus)
     (LF-PARENT ONT::computer-software)
     (TEMPL mass-pred-TEMPL)
     (preference .94)
     )
    )
   )
  (W::classification
   (SENSES
    ((EXAMPLE "document classification")
     (meta-data :origin integrated-learning :entry-date 20050816 :change-date nil :wn ("classification%1:04:00" "classification%1:14:00") :comments lf-restructure)
     (LF-PARENT ONT::grouping) ;; and/or ont::analytic-event?
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::category
   (SENSES
    ((EXAMPLE "category of information")
     (meta-data :origin integrated-learning :entry-date 20050816 :change-date nil :wn ("category%1:14:00") :comments lf-restructure)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::breed
   (SENSES
    ((EXAMPLE "a new breed of computers")
     (meta-data :origin integrated-learning :entry-date 20050816 :change-date 20090217 :wn ("breed%1:09:00") :comments lf-restructure)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::genre
   (SENSES
    ((EXAMPLE "books in all genres")
     (meta-data :origin integrated-learning :entry-date 20050816 :change-date nil :wn ("genre%1:09:00") :comments lf-restructure)
     (LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     )
    )
   )
   (W::kind
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("kind%1:09:00"))
     (EXAMPLE "What kind of surgery is it?")
     (LF-PARENT ONT::KIND)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::style
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("style%1:09:01"))
     (LF-PARENT ONT::version)
    (TEMPL GEN-PART-OF-RELN-TEMPL)
    )
    )
   )

  (W::EDITION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ont::version)
     (templ other-reln-templ)
     )
    )
   )
  (W::variant
   (SENSES
    ((LF-PARENT ont::version)
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("variant%1:09:01") :comments nil)
     (templ other-reln-templ)
     )
    )
   )
   (W::release
   (SENSES
    ((LF-PARENT ont::version)
     (example "a new software release")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("release%1:06:00") :comments nil)
     (templ other-reln-templ)
     )
    )
   )
  (W::version
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
     ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("version%1:09:01"))
      (LF-PARENT ONT::version)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

   (W::sort
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((EXAMPLE "What sort of networking options are available?")
     (meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("sort%1:09:00") :comments calo-y1variants)
     (LF-PARENT ONT::KIND)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
   (W::type
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((EXAMPLE "What type of networking options are available?")
     (meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("type%1:09:00") :comments calo-y1variants)
     (LF-PARENT ONT::KIND)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

  (W::transfer
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("transfer%1:04:00"))
     (EXAMPLE "It's a brain transfer")
     (LF-PARENT ONT::transfer-event)
     )
    )
   )
  (W::constraint
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((EXAMPLE "there is a scheduling constraint (that you must take this before meals)")
     (meta-data :origin medadvisor :entry-date 20020610 :change-date 20041201 :comments nil :wn ("constraint%1:04:00"))
     (LF-PARENT ONT::CONSTRAINT)
     (templ count-subcat-that-optional-templ)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("constraint%1:04:00"))
     (EXAMPLE "Is there a constraint on taking celebrex?")
     (LF-PARENT ONT::CONSTRAINT)
     (TEMPL COUNT-PRED-SUBCAT-TEMPL (XP (% W::PP (W::PTYPE W::on))))
     )
    )
   )
  (W::timeline
   (SENSES
    ((EXAMPLE "the timeline for the project")
     (LF-PARENT ONT::commitment)
     (TEMPL OTHER-RELN-of-for-TEMPL)
     (meta-data :origin trips :entry-date unknown :change-date 20050817 :wn ("timeline%1:10:00") :comments lf-restructuring)
     )
    )
   )
;  (W::SCHEDULE
;   (SENSES
;    ((EXAMPLE "My schedule is thrown off")
;     (meta-data :origin medadvisor :entry-date unknown :change-date 20050817 :wn ("schedule%1:09:00") :comments lf-restructuring)
;     (LF-PARENT ONT::commitment)
;     )
;    )
;   )
  (W::itinerary
   (SENSES
    ((EXAMPLE "what is your travel itinerary")
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("itinerary%1:09:00") :comments pq0106)
     (LF-PARENT ONT::commitment)
     )
    )
   )
  (W::CAMPAIGN
   (SENSES
    ((LF-PARENT ONT::commitment) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20050817 :comments lf-restructuring)
     )
    ))
   (W::agenda
   (SENSES
    ((EXAMPLE "what is the agenda for the meeting")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("agenda%1:09:00" "agenda%1:10:00") :comments nil)
     (LF-PARENT ONT::commitment)
     )
    ((LF-PARENT ONT::info-medium) ;; like calendar
     (EXAMPLE "let me write it in my agenda")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments Office)
     )
    )
   )
  (W::appointment
   (wordfeats (W::MORPH (:forms (-S-3P))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050817 :wn ("appointment%1:14:00") :comments lf-restructuring)
     (LF-PARENT ONT::gathering-event)
     ("confirm the appointment" "go to the appointment")
     )
    )
   )
   ((W::check w::up)
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090407 :change-date 20050817 :wn ("appointment%1:14:00") :comments nil)
     (LF-PARENT ONT::gathering-event)
     ("confirm the appointment" "go to the appointment")
     )
    )
   )
   (W::BENEFIT
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("benefit%1:07:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     )
    )
   )
   (W::ADVANTAGE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("advantage%1:07:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     )
    )
   )
   (W::DISADVANTAGE
    (SENSES
     ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("disadvantage%1:07:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      )
     )
    )
   (W::GUIDANCE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("guidance%1:10:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::FUNCTION-OBJECT)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::competence
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("competence%1:07:00") :comments caloy3)
     (LF-PARENT ONT::FUNCTION-OBJECT)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::ABILITY
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL count-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("ability%1:07:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::CAPABILITY
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040908 :CHANGE-DATE NIL
      :COMMENTS caloy2))))
   (W::autofocus
    (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain) (TEMPL MASS-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20060711 :CHANGE-DATE NIL :wn ("autofocus%1:06:00")
      :COMMENTS caloy3))))
   (W::SERVICE
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::FUNCTION-OBJECT)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::MOVIE
   (SENSES
    ((meta-data :origin calo :entry-date 20040406 :change-date nil :wn ("movie%1:10:00") :comments y1v5)
     (LF-PARENT ONT::ENTERTAINMENT)
     )
    )
   )
   (W::entertainment
   (SENSES
    ((meta-data :origin calo :entry-date 20050817 :change-date nil :wn ("entertainment%1:04:00") :comments nil)
     (LF-PARENT ONT::ENTERTAINMENT)
     )
    )
   )
   (W::MUSIC
   (SENSES
    ((meta-data :origin calo :entry-date 20040406 :change-date nil :wn ("music%1:10:00") :comments y1v5)
     (LF-PARENT ONT::music)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::HYDRANT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("hydrant%1:06:00"))
     (LF-PARENT ONT::MANUFACTURED-OBJECT)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )

  (W::TV
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("tv%1:06:00"))
     (LF-PARENT ONT::device)
     (templ bare-pred-templ)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )
   ((W::T w::V)
   (SENSES
    ((LF-PARENT ONT::device)
     (templ bare-pred-templ)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )
  (W::television
   (SENSES
    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("television%1:06:01"))
     (LF-PARENT ONT::device)
     (templ bare-pred-templ)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )
  (W::telephone
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("telephone%1:06:00") :comments caloy2)
     (example "this company offers telephone support")
;     (preference .98) ;; prefer compounds for plot
     )
    )
   )
  (W::phone
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("phone%1:06:00") :comments caloy2)
     (example "this company offers phone support")
;     (preference .98) ;; prefer compounds for plot
     )
    )
   )
 (W::ipod
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("phone%1:06:00") :comments caloy2)
      )
    )
   )
  (W::blackberry
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("phone%1:06:00") :comments caloy2)
      )
    )
   )
   ((w::cell W::phone)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::cell W::phones))))
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :comments caloy2)
     (example "can I access it from my cell phone")
     )
    )
   )
   ((w::mobile W::phone)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::mobile W::phones))))
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("mobile_phone%1:06:00") :comments caloy2)
     (example "can I access it from my mobile phone")
     )
    )
   )
  (w::mobile
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :comments caloy2)
     (example "can I access it from my mobile")
     )
    )
   )
   (w::cell
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("cell%1:06:04") :comments caloy2)
     (example "can I access it from my cell")
     )
    )
   )
   ((w::all w::in w::one)
    (wordfeats (W::MORPH (:forms (-S-3P) :plur (w::all w::in w::ones))))
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments concept-learning)
     (example "I want to buy an all in one")
     )
    )
   )
   ;; common abbreviation for all in one
  (w::aio
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :comments concept-learning)
     (example "I want to buy an all in one")
     )
    )
   )
  (W::speakerphone
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("speakerphone%1:06:00") :comments plow-req)
     (example "I want to buy a speakerphone")
     )
    )
   )
  (W::intercom
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("intercom%1:06:00") :comments plow-req)
     (example "Use the intercom")
     )
    )
   )
  (W::filter
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("filter%1:06:00") :comments plow-req)
     (example "put the water through the filter")
     )
    )
   )
  (W::grinder
   (SENSES
    ((LF-PARENT ONT::device)
     (SEM (F::mobility F::non-self-moving))
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :wn ("grinder%1:06:01") :comments plow-req)
     (example "built-in coffee grinder")
     )
    )
   )
   
  (W::GENERATOR
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("generator%1:06:02" "generator%1:06:00" "generator%1:06:01"))
     (LF-PARENT ONT::machine)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )
  (W::BATTERY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("battery%1:06:00"))
     (LF-parent ont::device)
     (SEM (F::mobility F::non-self-moving))
     )
    )
   )
  (W::academic
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("academic%1:18:00") :comments nil)
     (LF-PARENT ONT::PROFESSIONAL)
     )
    )
   )
 (W::trainer
   (SENSES
    ((meta-data :origin cardiac :entry-date 20081212 :change-date nil :comments LM-vocab)
     (example "personal trainer" "dog trainer")
     (LF-PARENT ONT::PROFESSIONAL)
     )
    )
   )
  (W::BUSINESSMAN
   (wordfeats (W::MORPH (:forms (-S-3P) :plur W::businessmen)))
   (SENSES
    ((meta-data :origin allison :entry-date 20041021 :change-date nil :wn ("businessman%1:18:00") :comments caloy2)
     (LF-PARENT ONT::PROFESSIONAL)
     )
    )
   )
  
  (W::POLICEMAN
   (wordfeats (W::MORPH (:forms (-S-3P) :plur W::policemen)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("policeman%1:18:00"))
     (LF-PARENT ONT::PROFESSIONAL)
     )
    )
   )
  (W::POLICE
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::PROFESSIONAL)
     (TEMPL COUNT-PRED-3p-TEMPL)
     )
    )
   )
  (W::EMERGENCY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("emergency%1:11:00"))
     (LF-PARENT ONT::EVENT)
     )
    )
   )
  (W::fire
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20111005 :comments nil :wn ("fire%1:11:00"))
     ;; changed for obtw demo from ont::located-event to ont::fire
     (LF-PARENT ONT::fire)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  (W::ACCIDENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("accident%1:11:01"))
     (LF-PARENT ONT::located-EVENT)
     )
    )
   )
;  (W::COOPERATION
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("cooperation%1:04:01"))
;     (LF-PARENT ONT::ACTION)
;     )
;    )
;   )
;  (W::LANDING
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("landing%1:04:01"))
;     (LF-PARENT ONT::ACTION)
;     )
;    )
;   )
;  (W::orbit
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
;     (LF-PARENT ONT::ACTION)
;     (example "successful earth orbit")
;     )
;    )
;   )
;  (W::EXPERIMENT
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("experiment%1:09:00" "experiment%1:04:00" "experiment%1:04:01"))
;     (LF-PARENT ONT::ACTION)
;     )
;    )
;   )
  (W::JOB
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("job%1:04:00"))
     (LF-PARENT ONT::working)
     )
    )
   )
  (W::profession
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("profession%1:04:00"))
     (LF-PARENT ONT::working)
     )
    )
   )
  (W::TREATMENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("treatment%1:04:00"))
     (LF-PARENT ONT::treatment)
     )
    )
   )
;   (W::vaccination
;   (SENSES
;    ((LF-PARENT ont::treatment)
;     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("vaccination%1:04:00") :comments nil)
;     (example "sparky had his vaccination in june")
;     )
;    )
;   )
;   (W::inoculation
;   (SENSES
;    ((LF-PARENT ont::treatment)
;     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("vaccination%1:04:00") :comments nil)
;     (example "sparky had his vaccination in j::une")
;     )
;    )
;   )
; nom
;   (W::prevention
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil :wn ("prevention%1:04:00"))
;     (LF-PARENT ONT::treatment)
;     (TEMPL BARE-PRED-TEMPL)
;     (example "the prevention of heart disease")
;     )
;    )
;   )
;  (W::intervention
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil :wn ("intervention%1:04:00" "intervention%1:04:03" "intervention%1:04:01" "intervention%1:04:02"))
;     (LF-PARENT ONT::treatment)
;     (TEMPL BARE-PRED-TEMPL)
;     (example "labored breathing is a medical emergency that requires intervention")
;     )
;    )
;   )
  (W::THERAPY
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("therapy%1:04:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::treatment)
     )
    )
   )
   (W::rehab
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090403 :change-date nil)
     (LF-PARENT ONT::treatment)
     )
    )
   )

  (W::rehabilitation
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090403 :change-date nil)
     (LF-PARENT ONT::treatment)
      )
    )
   )

 (W::complaint
   (SENSES
    ((LF-PARENT ONT::announce)
     (templ count-subcat-that-optional-templ)
     (meta-data :origin chf :entry-date 20070809 :change-date 20090506 :comments nil :wn ("complaint%1:10:02" "complaint%1:10:03" "complaint%1:10:04"))
     )
    )
   )
  (W::call
   (SENSES
    ((LF-PARENT ONT::conversation)
     (example "give him a call at the office")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090505 :wn ("call%1:10:01") :comments Office)
     )
    )
   )
  (W::MESSAGE
   (SENSES
    ((LF-PARENT ONT::message)
     (example "the message that he couldn't come")
     (templ count-subcat-that-optional-templ)
     (meta-data :origin calo :entry-date 20041130 :change-date nil :wn ("message%1:10:00") :comments caloy2 :wn-sense (1 2))
     )
    )
   )
   (W::criticism
   (SENSES
    ((LF-PARENT ONT::message)
     (templ count-subcat-that-optional-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
 (W::announcement
   (SENSES
    ((LF-PARENT ONT::message)
     (templ count-subcat-that-optional-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
 (W::notice
   (SENSES
    ((LF-PARENT ONT::message)
     (templ count-subcat-that-optional-templ)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::reminder
   (SENSES
    ((LF-PARENT ONT::message)
     (example "he sent a reminder about the meeting")
     (templ count-pred-templ)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("reminder%1:10:00") :comments pq0082)
     )
    )
   )
   (W::mailing
   (SENSES
    ((LF-PARENT ONT::message)
     (example "generate a mailing")
     (templ count-pred-templ)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("mailing%1:14:00") :comments pq)
     )
    )
   )

  (W::minutes
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::chronicle)
     (example "the minutes of the meeting")
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("minutes%1:10:00") :comments pq0134)
     (templ count-pred-3p-templ)
     )
    )
   )
  (W::memo
   (SENSES
    ((LF-PARENT ONT::message)
     (example "he left a memo")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("memo%1:10:00") :comments Office)
     )
    )
   )
  (W::memorandum
   (SENSES
    ((LF-PARENT ONT::message)
     (example "send a memorandum to the department")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("memorandum%1:10:00") :comments Office)
     )
    )
   )
  (W::dossier
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20031217 :change-date nil :wn ("dossier%1:10:00") :comments nil)
     (LF-PARENT ONT::chronicle)
     (example "prepare a dossier on him")
     (templ other-reln-templ (xp (% W::pp (W::ptype (? ptp W::for W::on)))))
     )
    )
   )
  (W::memoir
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("memoir%1:10:00") :comments naive-subjects)
     (LF-PARENT ONT::information-function-object)
     (example "he wrote a memoir about his adventures")
     )
    )
   )
  (W::story
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :comments naive-subjects)
     (LF-PARENT ONT::information-function-object)
     (example "he wrote a story about his adventures")
     )
    )
   )
  (W::biography
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("biography%1:10:00") :comments naive-subjects)
     (LF-PARENT ONT::information-function-object)
     (example "he wrote a biography")
     )
    )
   )
  (W::autobiography
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date nil :wn ("autobiography%1:10:00") :comments naive-subjects)
     (LF-PARENT ONT::information-function-object)
     (example "he wrote an autobiography")
     )
    )
   )
  (W::cc
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments iris)
     (example "what is the cc address")
     (LF-PARENT ONT::copy)
     )
    )
   )
    ((W::c w::c)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments iris)
     (example "what is the cc address")
     (LF-PARENT ONT::copy)
     )
    )
   )
    (W::bcc
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments iris)
     (example "what is the bcc address")
     (LF-PARENT ONT::copy)
     )
    )
   )
    ((w::b W::c w::c)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :comments iris)
     (example "what is the cc address")
     (LF-PARENT ONT::copy)
     )
    )
   )
   (W::photocopy
    (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("photocopy%1:06:00") :comments Office)
     (example "make a photocopy")
     (LF-PARENT ONT::phys-representation)
     )
    )
   )
  (W::duplicate
   (SENSES
    ((meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("duplicate%1:06:00") :comments calo-y1variants)
     (example "make a duplicate")
     (LF-PARENT ONT::phys-representation)
     )
    )
   )
  (W::NOTE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("note%1:10:02" "note%1:10:03" "note%1:10:00"))
     (LF-PARENT ONT::annotation)
     (templ other-reln-theme-templ)
     )
    )
   )
  (W::annotation
   (SENSES
    ((LF-PARENT ONT::annotation)
     (TEMPL OTHER-RELN-theme-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060424 :change-date nil :wn ("annotation%1:10:00") :comments iris)
     )
    )
   )
  (W::SEAT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("seat%1:15:01"))
     (LF-PARENT ONT::VEHICLE-PART)
     )
    )
   )
  (W::PURPOSE
   (SENSES
    ((LF-PARENT ONT::utility)
     (meta-data :origin original :entry-date unknown :change-date 20050817 :wn ("purpose%1:07:00") :comments lf-restructuring)
     (example "the function of this program is to optimize performance")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::role
   (SENSES
    ((LF-PARENT ONT::utility)
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :wn ("role%1:07:00") :comments nil)
     (example "the role of this program is to optimize performance")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
   (W::FUNCTION
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date 20050817 :wn ("function%1:07:00") :comments lf-restructuring)
     (LF-PARENT ONT::utility)
     (example "the function of this program is to optimize performance")
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::SYMBOL
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("symbol%1:10:00"))
     (LF-PARENT ONT::icon)
     )
    )
   )
  (W::ICON
   (SENSES
    ((LF-PARENT ONT::icon) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("icon%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
 
  (W::IDEAL
   (SENSES
    ((LF-PARENT ONT::function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("ideal%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::IMPERFECTION
   (SENSES
    ((LF-PARENT ONT::problem) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("imperfection%1:26:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::INK
   (SENSES
    ((LF-PARENT ONT::liquid-substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("ink%1:27:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::INPUT
   (SENSES
    ((LF-PARENT ONT::information) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("input%1:10:00" "input%1:09:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
     (W::IRIDIUM
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("iridium%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))

  (W::KEYBOARD
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE  20051214 :wn ("keyboard%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::KEYPAD
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE  20051214 :wn ("keypad%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TRACKPAD
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE  20051214
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TRACKBALL
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE  20051214 :wn ("trackball%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::KEYSTROKE
   (SENSES
    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::KEYWORD
   (SENSES
    ((LF-PARENT ONT::information-function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
;  (W::KICK
;   (SENSES
;    ((LF-PARENT ONT::event) (TEMPL COUNT-PRED-TEMPL)
;     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
;      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::LASER
   (SENSES
    ((LF-PARENT ONT::optical-device) (TEMPL COUNT-PRED-TEMPL)
     (meta-data :origin html-purchasing-corpus :entry-date 20040204 :change-date 20070511 :comment coordops))))
  (W::sonar
   (SENSES
    ((LF-PARENT ONT::acoustic-device) (TEMPL COUNT-PRED-TEMPL)
     (meta-data :origin coordops :entry-date 20070511 :change-date nil :comment nil))))
  (W::LITHIUM
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("lithium%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::LOGO
   (SENSES
    ((LF-PARENT ONT::icon) (TEMPL count-pred-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("logo%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MAGNESIUM
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("magnesium%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::MEDIA
   (SENSES
    ((LF-PARENT ONT::info-medium) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MENU
   (SENSES
    ((LF-PARENT ONT::symbolic-representation) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("menu%1:10:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   ((w::pop w::up W::MENU)
    (wordfeats (W::MORPH (:forms (-S-3P) :plur (w::pop w::up w::menus))))
   (SENSES
    ((LF-PARENT ONT::symbolic-representation) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN plow :ENTRY-DATE 20050310 :CHANGE-DATE NIL
      :COMMENTS nil))))
   ((w::popup W::MENU)
    (wordfeats (W::MORPH (:forms (-S-3P) :plur (w::popup w::menus))))
   (SENSES
    ((LF-PARENT ONT::symbolic-representation) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN plow :ENTRY-DATE 20050310 :CHANGE-DATE NIL
      :COMMENTS nil))))
    (W::MICROPHONE
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("microphone%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MICROPROCESSOR
   (SENSES
    ((LF-PARENT ONT::computer-processor) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("microprocessor%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MIKE
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("mike%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MINIJACK
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MINITOWER
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MINUS
   (SENSES
    ((LF-PARENT ONT::acceptability-val) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("minus%1:04:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MISHAP
   (SENSES
    ((LF-PARENT ONT::problem) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("mishap%1:11:00" "mishap%1:19:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MISUSE
   (SENSES
    ((LF-PARENT ONT::problem) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("misuse%1:04:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MODEL
   (SENSES
    ((LF-PARENT ONT::product-model) (TEMPL gen-part-of-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("model%1:09:03")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MODEM
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("modem%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MONITOR
   (SENSES
    ((LF-PARENT ONT::computer-monitor) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("monitor%1:06:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MOTHERBOARD
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::MOUSE
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20051214 :wn ("mouse%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::TOWER
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TRACKBALL ;; duplicate -- wdebeaum
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("trackball%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::TRACKPAD
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))

    (W::NET
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("net%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::NETWORK
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("network%1:06:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((W::daisy w::chain)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::daisy W::chains))))
   (SENSES
    ((LF-PARENT ONT::COMPUTER-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN caloy2 :ENTRY-DATE 20050522 :CHANGE-DATE NIL
		:COMMENTS meeting-understanding))))
    (W::ADSL
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::DSL
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040421 :CHANGE-DATE NIL :wn ("dsl%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::NETWORKER
   (SENSES
    ((LF-PARENT ONT::professional) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::NEWSPAPER
   (SENSES
    ((LF-PARENT ONT::publication) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("newspaper%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::magazine
   (SENSES
    ((LF-PARENT ONT::publication)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::feed
   (SENSES
    ((LF-PARENT ONT::feed)
     (example "show me the feeds")
     ;; changed to newly created ont::feed for AKRL
     (meta-data :origin obtw :entry-date 20110914 :change-date 20110926 :comments demo)
     )
    )
   )
   (W::bulletin
   (SENSES
    ((LF-PARENT ONT::publication)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::NOTEBOOK
   (SENSES
    ((LF-PARENT ONT::computer-type) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("notebook%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS)
     )
    ((LF-PARENT ONT::info-medium) ;; like folder
     (EXAMPLE "write it in your notebook")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("notebook%1:10:00") :comments Office)
     )
    ))
  (W::NOTEPAD
   (SENSES
    ((LF-PARENT ONT::computer-model) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::NOTICE
   (SENSES
    ((LF-PARENT ONT::information-function-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PAPER
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL mass-PRED-TEMPL)
     (example "a paper airplane")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("paper%1:27:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ((LF-PARENT ONT::info-medium) ;; like newspaper
     (EXAMPLE "i read it in the paper")
     (meta-data :origin calo-ontology :entry-date 20060423 :change-date nil :wn ("paper%1:10:03") :comments nil)
     )
    ))
  (W::PERIPHERAL
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("peripheral%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PHOTO
   (SENSES
    ((LF-PARENT ONT::image) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("photo%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PIC
   (SENSES
    ((LF-PARENT ONT::image) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("pic%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::POLYCARBONATE
   (SENSES
    ((LF-PARENT ONT::substance) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::PORT
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("port%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::POSITION
   (SENSES
    ((LF-PARENT ONT::location) (TEMPL other-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL
      :COMMENTS HTML-PURCHASING-CORPUS))))
    
      (W::RADIO
   (SENSES
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("radio%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::RECORDER
   (SENSES
    ((LF-PARENT ONT::recording-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("recorder%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
   (W::ROCK
   (SENSES
    ((LF-PARENT ONT::natural-object) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("rock%1:17:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ROM
   (SENSES
    ((LF-PARENT ont::internal-computer-storage) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("rom%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::ROUTER
   (SENSES
    ((LF-PARENT ONT::computer-part) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("router%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
    (W::RPM
   (SENSES
    ((LF-PARENT ONT::rate-unit) (TEMPL other-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("rpm%1:28:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((W::SCREEN W::SAVER)   
   (SENSES
    ((LF-PARENT ONT::computer-software) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("screen_saver%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::SCANNER
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE  20051214 :wn ("scanner%1:06:02")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((w::flatbed W::SCANNER)
   (SENSES
    ((LF-PARENT ONT::computer-input-device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20060711 :CHANGE-DATE  nil
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::CIRCLE
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("circle%1:25:00") :comments nil)
     (example "take the circle with the heart on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
  (W::SQUARE
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("square%1:25:00") :comments nil)
     (example "take the square with the heart on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
  (W::triangle
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("triangle%1:25:00") :comments nil)
     (example "take the triangle with the heart on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
  (W::DIAMOND
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :comments nil)
     (example "take the square with the diamond on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
  (W::star
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("star%1:25:00") :comments nil)
     (example "take the square with the star on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
   (W::gist
   (SENSES
    ((example "the gist of the problem")
     (LF-PARENT ONT::gist)
     )
    )
   )
  (W::heart
   (SENSES
    ((meta-data :origin fruit-carts :entry-date 20041103 :change-date nil :wn ("heart%1:25:00") :comments nil)
     (example "take the square with the heart on the side")
     (LF-PARENT ONT::SHAPE-OBJECT)
     (preference .98) ;; prefer body part
     )
    ((LF-PARENT ONT::internal-body-part)
     (meta-data :origin medadvisor :entry-date nil :change-date 20041103 :wn ("heart%1:08:00") :comments nil)
     (example "I have an irregular heart beat")
     (templ body-part-reln-templ)
     )
    )
   )
  (W::cross
   (SENSES
    ((meta-data :origin newbeegle :entry-date 20050211 :change-date nil :wn ("cross%1:07:00") :comments nil)
     (example "the red cross on a battery means it is in a short circuit")
     (LF-PARENT ONT::SHAPE-OBJECT)
     )
    )
   )
  
  (W::LOOP
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("loop%1:25:00"))
     (LF-PARENT ONT::graphic-symbol)
     )
    )
   )
  (W::SQUIGGLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("squiggle%1:10:00"))
     (LF-PARENT ONT::graphic-symbol)
     )
    )
   )
  (W::DISABILITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("disability%1:26:00"))
     (LF-PARENT ONT::disorders-and-conditions)
     )
    )
   )
  (W::obesity
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments nil)
     (LF-PARENT ONT::disorders-and-conditions)
     )
    )
   )
  (W::OXYGEN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("oxygen%1:27:00"))
     (LF-PARENT ONT::substance)
     (SEM (F::form F::gas))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  ((W::POWER w::supply)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::power W::supplies))))
   (SENSES
    ((meta-data :origin calo :entry-date 20050308 :change-date nil :comments projector-purchasing)
     (LF-PARENT ONT::device)
     (TEMPL count-PRED-TEMPL)
     )
    )
   )
  (W::POWER
   (SENSES
    (;; changed from ont::substance to newly created ont::power for AKRL in OBTW demo
     (meta-data :origin trips :entry-date 20060803 :change-date 20110926 :comments nil)
     (LF-PARENT ONT::power)
     (TEMPL MASS-PRED-TEMPL)
     )
; 20111016 removing this sense to avoid competition w/ obtw demo sense ont::power
;    ((meta-data :origin calo :entry-date 20050308 :change-date nil :wn ("power%1:19:00") :comments ;projector-purchasing)
;     (LF-PARENT ONT::intensity)
;     (TEMPL mass-PRED-TEMPL)
;     )
    )
   )
  (W::ENERGY
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("energy%1:19:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::substance)
     (SEM (f::form f::wave))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::RUBBER
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("rubber%1:27:00" "rubber%1:27:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::FIBER
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("fiber%1:06:01" "fiber%1:27:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::METAL
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("metal%1:27:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::crystal
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("crystal%1:27:00") :comments nil)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::LEATHER
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("leather%1:27:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::CLOTH
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("cloth%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::FABRIC
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("fabric%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::MATERIAL
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("material%1:06:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::PLASTIC
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("plastic%1:27:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::PAPER
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("paper%1:27:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20050325 :change-date nil :comments caloy2)
     (LF-PARENT ONT::info-medium)
     (example "they wrote a paper about it")
     )
    )
   )
  (W::press
   (SENSES
    ((meta-data :origin calo :entry-date 20050325 :change-date nil :wn ("press%1:10:00") :comments caloy2)
     (LF-PARENT ONT::info-medium)
     (example "he saw a press release")
     )
    )
   )
 (W::article
   (SENSES
    ((meta-data :origin calo :entry-date 20050325 :change-date nil :wn ("article%1:10:00") :comments caloy2)
     (LF-PARENT ONT::article)
     (templ count-pred-subcat-originator-optional-templ)
     (example "they wrote an article about it")
     )
    )
   )

  (W::newspaper
   (SENSES
    ((meta-data :origin calo :entry-date 20050325 :change-date nil :wn ("newspaper%1:10:00") :comments caloy2)
     (LF-PARENT ONT::info-medium)
     (example "i read it in the newspaper")
     )
    )
   )

  (W::magazine
   (SENSES
    ((meta-data :origin calo :entry-date 20050325 :change-date nil :wn ("magazine%1:10:00") :comments caloy2)
     (LF-PARENT ONT::info-medium)
     (example "i read it in a magazine")
     )
    )
   )
  (W::journal
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("journal%1:10:00") :comments nil)
     (LF-PARENT ONT::info-medium)
     (example "a journal publication")
     )
    )
   )
  (W::proceedings   
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("proceedings%1:10:00") :comments nil)
     (LF-PARENT ONT::info-medium)
     (example "conference proceedings")
     (TEMPL COUNT-PRED-3p-TEMPL)
     )
    )
   )
  (W::poster
   (SENSES
    ((meta-data :origin calo :entry-date 20050325 :change-date nil :wn ("poster%1:10:00") :comments caloy2)
     (LF-PARENT ONT::info-medium)
     (example "i saw the poster for it")
     )
    )
   )
  
  (W::ELECTRICITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("electricity%1:19:01"))
     (LF-PARENT ONT::substance)
     (SEM (f::form f::wave))
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::CURRENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("current%1:19:01"))
     (LF-PARENT ONT::substance)
     (SEM (f::form f::wave))
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
  (W::UTILITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::utility)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

 ;; reclassifying this from the more specific ont::pathology
 (W::stroke
   (SENSES
    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
     (LF-PARENT ONT::EVENT)
     (example "heat stroke" "piston stroke")
     )
    )
   )
 (W::spell
  (SENSES
    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
     (LF-PARENT ONT::EVENT)
     )
    )
   )
;  (W::shock
;   (SENSES
;    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
;     (LF-PARENT ONT::EVENT)
;     )
;    )
;   )
; ((W::check w::in)
;   (SENSES
;    ((meta-data :origin plow :entry-date 20071009 :change-date nil :comments plow-travel :wn ("arrival%1:04:01"))
;     (LF-PARENT ONT::EVENT)
;     (TEMPL OTHER-RELN-TEMPL)
;     (example "the check in date")
;     (preference .97) ;; prefer verb sense
;     )
;    )
;   )
;((W::check w::out)
;   (SENSES
;    ((meta-data :origin plow :entry-date 20071009 :change-date nil :comments plow-travel :wn ("departure%1:04:00"))
;     (LF-PARENT ONT::EVENT)
;     (TEMPL OTHER-RELN-TEMPL)
;     (example "the check out date")
;     (preference .97) ;; prefer verb sense
;     )
;    )
;   )
;  (W::ARRIVAL
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("arrival%1:04:01"))
;     (LF-PARENT ONT::EVENT)
;     (TEMPL DRV-NOM-RELN-TEMPL)
;     )
;    )
;   )
;  (W::DEPARTURE
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("departure%1:04:00"))
;     (LF-PARENT ONT::EVENT)
;     (TEMPL DRV-NOM-RELN-TEMPL)
;     )
;    )
;   )
  (W::return
   (SENSES
;    ((meta-data :origin plow :entry-date 20060608 :change-date nil :comments pq)
;     (example "put the return date here")
;     (LF-PARENT ONT::event)
;     )
    ((LF-PARENT ONT::letter-symbol)
     (EXAMPLE "join the text from both cells, separated by a carriage return")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("carriage_return%1:22:00") :comments nil)
     )
    )
   )
  (W::EXIT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("exit%1:06:00"))
     (LF-PARENT ONT::exit)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::entrance
   (SENSES
    ((meta-data :origin trips :entry-date 20091118 :change-date nil :comments nil :wn ("entrance%1:06:00"))
     (LF-PARENT ONT::exit)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::LIMIT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("limit%1:28:00"))
     (LF-PARENT ONT::constraint)
     (example "to the limit of his ability")
     )
    ((LF-PARENT ONT::edge)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "the outer limits of space")
     (meta-data :origin step :entry-date 20080626 :change-date nil :wn ("boundary%1:25:00") :comments nil)
     )
    )
   )
  (W::SEVERITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("severity%1:07:01"))
     (LF-PARENT ONT::intensity)
     (TEMPL OTHER-RELN-templ)
     )
    )
   )

  (W::CAPACITY
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL OTHER-RELN-templ)
     )
    )
   )  
  (W::performance
   (SENSES
    ((LF-PARENT ONT::gathering-EVENT)
     (example "they are giving a performance at the theatre tonight")
     (meta-data :origin calo-ontology :entry-date 20060615 :change-date nil :wn ("performance%1:10:00") :comments nil)
     )
    )
   )
  
  (W::control
   (SENSES
    ((meta-data :origin calo :entry-date 20050308 :change-date nil :wn ("control%1:06:00") :comments projector-purchasing)
     (example "we need the remote control")
     (LF-PARENT ONT::device)
     )
    )
   )
  (W::remote
   (SENSES
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("remote%1:06:00") :comments projector-purchasing)
     (example "I'll take that projector as long as it has a remote")
     (LF-PARENT ONT::device)
     (PREFERENCE 0.96) ;; prefer adjective sense
     )
    )
   )
  (W::DIGGER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("digger%1:06:00"))
     (LF-PARENT ONT::EQUIPMENT)
     )
    )
   )
  (W::CASE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("case%1:26:00"))
     (LF-PARENT ONT::SITUATION)
     )
    ((LF-PARENT ONT::manufactured-object)
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("case%1:06:00") :comments Office)
     (example "shop for business cases online")
     )
    )
   )
  (W::EXCEPTION
   (SENSES
    ((LF-PARENT ONT::SITUATION)
     (meta-data :origin calo :entry-date 20040907 :change-date nil :wn ("exception%1:09:00" "exception%1:09:01") :comments caloy2)
     )
    )
   )
  (W::OUTAGE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("outage%1:23:00" "outage%1:11:00"))
     (LF-PARENT ONT::event)
     )
    )
   )
;  (W::SURGE
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
;     (LF-PARENT ONT::event)
;     )
;    )
;   )
  (W::BUMMER
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("bummer%1:26:00"))
     (LF-PARENT ONT::problem)
     )
    )
   )
  (W::MESS
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("mess%1:26:02"))
     (LF-PARENT ONT::situation)
     )
    )
   )
  (W::turmoil
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::SITUATION)
     )
    )
   )
  (W::RIOT
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("riot%1:04:00"))
     (LF-PARENT ONT::located-EVENT)
     )
    )
   )
  (W::meeting
   (SENSES
    ((LF-PARENT ONT::gathering-EVENT)
     (meta-data :origin calo :entry-date 20040810 :change-date nil :wn ("meeting%1:14:00") :comments caloy2)
     )
    )
   )
  (w::concert
   (senses
    ((LF-PARENT ONT::gathering-EVENT)
     (example "they are giving a concert at the theatre tonight")
     (meta-data :origin calo-ontology :entry-date 20060615 :change-date nil :wn ("concert%1:10:00") :comments nil)
     )
    )
   )
   (W::conference
   (SENSES
    ((LF-PARENT ONT::gathering-EVENT)
     (meta-data :origin calo :entry-date 20050215 :change-date nil :wn ("conference%1:14:00") :comments caloy2)
     )
    )
   )
   
   (W::symposium
   (SENSES
    ((LF-PARENT ONT::gathering-EVENT)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("symposium%1:14:00") :comments plow-req)
     )
    )
   )
   
   (W::workshop
   (SENSES
    ((LF-PARENT ONT::gathering-EVENT)
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("workshop%1:04:00") :comments plow-req)
     )
    )
   )

  (W::lesson
   (SENSES
    ((LF-PARENT ONT::instruction-EVENT)
     (meta-data :origin newbeegle :entry-date 20050211 :change-date nil :wn ("lesson%1:04:01") :comments nil)
     )
    )
   )
  
  (W::session
   (SENSES
    ((LF-PARENT ONT::instruction-EVENT)
     (meta-data :origin lam :entry-date 20050422 :change-date nil :comments lam-initial)
     )
    )
   )

  (W::course
   (SENSES
    ((LF-PARENT ONT::instruction-EVENT)
     (meta-data :origin lam :entry-date 20050422 :change-date nil :wn ("course%1:04:01") :comments lam-initial)
     )
    )
   )

  (W::REVOLUTION
   (SENSES
    ((meta-data :origin calo :entry-date 20031229 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::EVENT)
     )
    )
   )
  (W::FLOOD
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("flood%1:19:00"))
     (LF-PARENT ONT::flooding)
     )
    )
   )
  (W::WORK
   (SENSES
    ; nom
;    ((meta-data :origin calo :entry-date 20060803 :change-date nil :comments nil :wn ("work%1:04:00"))
;     (LF-PARENT ONT::working)
;     (example "he went to work" "his work phone")
;     (templ mass-pred-templ)
;     )
    ((meta-data :origin calo :entry-date 20040423 :change-date nil :wn ("work%1:06:00") :comments caloy1v6)
     (LF-PARENT ONT::information-function-object)
     (example "a big disk to store my work")
     )
    )
   )

  (W::LABOR
   (SENSES
    ((meta-data :origin calo :entry-date 20031230 :change-date nil :wn ("labor%1:04:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::working)
     (templ mass-pred-templ)     
     )
    )
   )

  (W::chore
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::working)
     (templ count-pred-templ)     
     )
    )
   )
   
  (w::overview
   (senses
    ((lf-parent ont::information-function-object)
     (templ count-pred-templ)
     (example "give me an overview of the options")
     (meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("overview%1:10:00") :comments caloy2)
     )	   	   	   	    
    )
   )
  (W::REBELLION
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("rebellion%1:04:01" "rebellion%1:04:00"))
     (LF-PARENT ONT::located-EVENT)
     )
    )
   )
  (W::SPICE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("spice%1:27:00" "spice%1:13:00"))
     (LF-PARENT ONT::SUBSTANCE)
     )
    )
   )
;  (W::TURN
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
;     (LF-PARENT ONT::EVENT)
;     )
    ;;;;; each in turn
 ;;   ((LF-PARENT ONT::SEQUENCE-VAL)
 ;;    (TEMPL BARE-PRED-TEMPL)
 ;;    )
 ;   )
 ;  )
  (W::TREE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("tree%1:20:00"))
     (LF-PARENT ONT::plant)
     )
    )
   )
  (W::ivy
   (SENSES
    ((LF-PARENT ONT::plant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("ivy%1:20:00"))
     )
    )
   )
  (W::willow
   (SENSES
    ((LF-PARENT ONT::plant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("willow%1:20:00"))
     )
    )
   )
  (W::maple
   (SENSES
    ((LF-PARENT ONT::plant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("maple%1:20:00"))
     )
    )
   )
  (W::boxwood
   (SENSES
    ((LF-PARENT ont::plant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("boxwood%1:20:00"))
     )
    )
   )
  (W::thistle
   (SENSES
    ((LF-PARENT ont::plant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("thistle%1:20:00"))
     )
    )
   )
  (W::coral
   (SENSES
    ((LF-PARENT ONT::Natural-object)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("coral%1:05:00") :comment caloy3)
     (example "coral reef")
     )
    )
   )
   (W::shrub
   (SENSES
    ((LF-PARENT ont::plant)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("shrub%1:20:00") :comment caloy3)
     )
    )
   )
   (W::flower
   (SENSES
    ((LF-PARENT ont::plant)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("flower%1:20:00") :comment caloy3)
     )
    )
   )
   (W::weed
   (SENSES
    ((LF-PARENT ont::plant)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("weed%1:06:00" "weed%1:20:00") :comment caloy3)
     )
    )
   )
   (W::leaf
    (wordfeats (W::morph (:forms (-S-3P) :plur w::leaves)))
   (SENSES
    ((LF-PARENT ont::plant-part)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("leaf%1:20:00") :comment caloy3)
     )
    )
   )
  (W::grass
   (SENSES
    ((LF-PARENT ont::plant)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("grass%1:06:00" "grass%1:20:00") :comment caloy3)
     )
    )
   )
  (W::vegetation
   (SENSES
    ((LF-PARENT ONT::plant)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("vegetation%1:14:00") :comment caloy3)
     )
    )
   )
  (W::CHUNK
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("chunk%1:14:00"))
     (LF-PARENT ONT::PART)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (W::SENSE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sense%1:09:04"))
     (LF-PARENT ONT::SENSE)
     (LF-FORM W::sense)
     (TEMPL MASS-PRED-TEMPL)
     (EXAMPLE "that makes sense")
     )
    ((meta-data :origin calo-ontology :entry-date 20060320 :change-date nil :wn ("sense%1:09:02") :comment verbnet-expansion)
     (LF-PARENT ONT::physical-sense)
     (example "good food tantalizes the senses")
     )
    )
   )
  (W::feeling
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060320 :change-date nil :wn ("feeling%1:03:00") :comment verbnet-expansion)
     (LF-PARENT ONT::experiencer-emotion)
     (example "the criticism hurt his feelings")
     )
    )
   )
  (W::emotion
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060320 :change-date nil :wn ("emotion%1:12:00") :comment verbnet-expansion)
     (LF-PARENT ONT::experiencer-emotion)
     (example "he learned to control his emotions")
     )
    )
   )
 (W::enthusiasm
   (SENSES
    ((LF-PARENT ONT::appreciate)
     (templ mass-pred-templ)
     (meta-data :origin cardiac :entry-date 20080509 :change-date 20090508 :comments LM-vocab :wn ("enthusiasm%1:12:00"))
     )
    )
   )
 (W::excitement
   (SENSES
    ((LF-PARENT ONT::appreciate)
     (templ mass-pred-templ)
     (meta-data :origin cardiac :entry-date 20080509 :change-date 20090508 :comments LM-vocab :wn ("excitement%1:12:00"))
     )
    )
   )
 (W::mood
   (SENSES
    ((LF-PARENT ONT::experiencer-emotion)
     (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab :wn ("mood%1:12:00"))
     )
    )
   )
   (W::perception
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060320 :change-date nil :wn ("perception%1:04:00") :comment verbnet-expansion)
     (LF-PARENT ONT::physical-sense)
     (TEMPL MASS-PRED-TEMPL)
     (example "a matter of perception")
     )
    )
   )
  (W::WORTH
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20090520 :comments nil :wn ("worth%1:23:00"))
     (LF-PARENT ONT::value-cost)
     (LF-FORM W::worth)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   ((w::primary W::CARE)
   (SENSES
    ((meta-data :origin plot :entry-date 20081013 :change-date nil :comments nil :wn ("care%1:04:01"))
     (LF-PARENT ONT::care)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  ))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::working-out)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::crunch  (w::jumping w::jack) w::pushup (w::push w::up) (w::sit w::up) w::situp))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::working-out)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
    (TEMPL mass-PRED-TEMPL)
    )
   )
 :words (w::cardio w::pilates w::yoga))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::protection)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
    (TEMPL mass-PRED-TEMPL)
    )
   )
 :words (w::insurance))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::practice)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::habit w::custom w::practice w::routine w::tradition))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::manufactured-object)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::toy w::plaything w::doll w::kite (w::teddy w::bear) (w::rubber w::duck) (w::rubber w::ducky) (w::stuffed w::animal) w::ball w::marble w::lego))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::bedding)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::pillow w::blanket w::bolster w::comforter w::duvet w::mattress w::cushion w::bedspread w::bedcover w::quilt w::towel w::washcloth))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::bedding)
    (TEMPL mass-PRED-TEMPL)
    )
   )
 :words (w::bedding w::bedclothes))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::tool)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::hammer w::screwdriver w::wrench w::paintbrush w::pliers w::shovel w::trowel w::needle))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::substance)
    (TEMPL count-PRED-TEMPL)
    (example "antibiotic ointment")
    )
   )
 :words (w::ointment w::lotion w::paste w::cream w::gel w::salve w::potion w::tincture w::balm))

 (define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::information-function-object)
    (TEMPL count-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (example "rules and regulations")
    )
   )
 :words (w::regulation))

 (define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::quantity)
    (TEMPL other-reln-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (example "dietary allowance")
    )
   )
 :words (w::allowance w::allotment))

 (define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::awareness)
    (TEMPL mass-pred-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (example "loss of consciousness")
    )
   )
 :words (w::awareness w::consciousness w::attention))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::hindering)
    (TEMPL mass-pred-TEMPL)
    (meta-data :origin cardiac :entry-date 20090403 :change-date nil :comments nil)
     )
   )
 :words (w::congestion w::obstruction))

 (define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::food)
    (TEMPL mass-pred-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (example "dietary allowance")
    )
   )
 :words (w::nourishment w::nutrition w::sustenance))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::substance)
    (TEMPL mass-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (example "high cholesterol")
    )
   )
 :words (w::cholesterol w::hemoglobin w::matter w::stuff w::fat))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::substance)
    (TEMPL count-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    )
   )
 :words (w::hormone w::nutrient))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::bodily-fluid)
    (TEMPL mass-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     )
   )
 :words (w::bile w::lymph w::marrow w::phlegm w::plasma))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::medication)
    (TEMPL count-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (example "take a cure")
    )
   )
 :words (w::cure w::remedy))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::natural-gas-substance)
    (TEMPL mass-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    )
   )
 :words (w::helium w::hydrogen w::oxygen w::nitrogen))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::gas-substance)
    (TEMPL count-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090402 :change-date nil :comments nil)
    )
   )
 :words (w::aerosol))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::substance)
    (TEMPL count-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090402 :change-date nil :comments nil)
    )
   )
 :words (w::spray w::vapor w::vapour))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::substance)
    (TEMPL count-PRED-TEMPL)
    (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    )
   )
 :words (w::atom w::mote w::particle w::speck w::isotope w::neutron w::proton w::nucleus (w::building w::block) w::protein w::carbohydrate))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::medical-instrument)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::cast w::crutch w::defibrillator w::pacemaker (w::pace w::maker) w::splint w::syringe))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::medical-dressing)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::bandage w::bandaid))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::substance-delivery-unit) 
    (meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("pill%1:06:00"))
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::caplet w::cap w::capsule w::lozenge w::pill w::tablet w::tab w::puff))



(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::medication) ;; medication type?
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::antibiotic w::drug))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::antibiotic)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::antibiotic))

(define-list-of-words :pos W::n
  :senses (;;;;;
   ((LF-PARENT ONT::MEDICATION)
    (TEMPL BARE-PRED-TEMPL)
    )
   )
 :words (W::MEDICINE W::MEDICATION))

;(define-list-of-words :pos W::n
;  :senses (
;   ((LF-PARENT ONT::diabetes-med)
;    (TEMPL count-PRED-TEMPL)
;    )
;   )
; :words (w::antidiabetic))
;
(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::bronchodilator)
    (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::bronchodilator))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::control-manage)
    (meta-data :origin asma :entry-date 20111006 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    (example "controller medicine")
    )
   )
 :words (w::controller))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::allergy-medication)
    (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::antihistamine))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::quick-relief-drug)
    (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
    (TEMPL mass-PRED-TEMPL)
    )
   )
 :words (w::terbutaline))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ont::long-term-control-drug)
    (meta-data :origin asma :entry-date 20110921 :change-date nil :comments nil)
    (TEMPL mass-pred-TEMPL)
    )
   )
 :words (w::serevent))
;
;(define-list-of-words :pos W::n
;  :senses (
;   ((LF-PARENT ONT::diabetes-med)
;    (TEMPL BARE-PRED-TEMPL)
;    )
;   )
; :words (w::insulin))
;
;(define-list-of-words :pos W::n
;  :senses (
;   ((LF-PARENT ONT::diuretic)
;    (TEMPL count-PRED-TEMPL)
;    )
;   )
; :words (w::diuretic))
;
;(define-list-of-words :pos W::n
;  :senses (
;   ((LF-PARENT ONT::statin)
;    (TEMPL count-PRED-TEMPL)
;    )
;   )
; :words (w::statin))
;
;(define-list-of-words :pos W::n
;  :senses (
;   ((LF-PARENT ONT::anticoagulant)
;    (TEMPL count-PRED-TEMPL)
;    )
;   )
; :words (w::anticoagulant (w::blood w::thinner)))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::pain-reliever)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words ((w::pain w::reliever) (w::pain w::killer) w::painkiller))

(define-list-of-words :pos W::name
  :senses (;;;;; common named meds
   ((LF-PARENT ONT::pain-reliever)
    (TEMPL nname-TEMPL)
    )
   )
 :words (W::ASPIRIN w::tylenol w::ibuprofen w::excedrin w::motrin))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::athlete)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::runner w::jogger w::athlete w::jock w::swimmer (w::scuba w::diver) w::wrestler w::player w::diver w::skater))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::sport)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::sport))


(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::athletic-game)
    (TEMPL bare-PRED-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
 :words (w::hockey w::football w::soccer w::basketball w::baseball w::kickball w::boxing))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::court-game)
    (TEMPL bare-PRED-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
 :words (w::badminton w::racketball w::tennis))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::board-game)
    (TEMPL mass-PRED-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
 :words (w::chess w::checkers w::go))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::game)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::game (w::video w::game)))

(define-list-of-words :pos W::n
  :senses (;;;;;
   ((LF-PARENT ONT::competition)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::contest w::raffle w::lottery))


(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::physical-sense)
    (TEMPL MASS-PRED-TEMPL)
    )
   )
 :words (w::hearing w::sight w::vision w::audition ; w::taste :nom
		    w::smell))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::sensory-property)
    (TEMPL other-reln-TEMPL)
    )
   )
 :words (w::aroma w::odor w::odour w::scent w::perfume w::flavor w::fragrance))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::bodily-process)
    (TEMPL BARE-PRED-TEMPL)
    (meta-data :origin chf :entry-date 20070810 :change-date nil :comments chf-dialogues)
    )
   )
  :words (w::appetite ;w::exhalation w::healing w::inhalation
		      w::intake w::uptake))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::bodily-process)
    (TEMPL mass-PRED-TEMPL)
    (meta-data :origin chf :entry-date 20070810 :change-date nil :comments chf-dialogues)
    )
   )
  :words (w::aging w::breathing w::cogitation w::consumption w::defecation w::digestion w::indigestion w::menstruation w::metabolism w::respiration w::urination))

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  ((W::sleeping W::pill)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::sleeping W::pills))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sleeping_pill%1:06:00"))
     (LF-PARENT ONT::MEDICATION)
     )
    )
   )
  ))


(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::lifecycle-stage)
    (TEMPL bare-pred-TEMPL)
    )
   )
 :words (w::adolescence w::adulthood w::childhood w::infancy (w::old w::age) w::puberty w::youth))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::person)
    (TEMPL count-pred-TEMPL)
    )
   )
 :words (w::adolescent w::teen w::teenager w::senior w::youth))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::child)
    (TEMPL count-pred-TEMPL)
    )
   )
 :words (w::baby w::infant w::kid w::toddler))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::physical-symptom)
    (TEMPL bare-pred-TEMPL)
    )
   )
  :words (W::pain w::weakness w::fever w::constriction))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::musical-instrument)
    (TEMPL count-pred-TEMPL)
    (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab)
    )
   )
  :words (w::violin w::fiddle w::guitar w::piano w::drum w::mandolin w::harp w::cello w::viola w::flute w::clarinet w::bass w::ukelele w::recorder w::harmonica w::xylophone))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::physical-property)
    (TEMPL mass-pred-TEMPL)
    (meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab)
    (syntax (W::morph (:forms (-none))))
    )
   )
  :words (w::endurance w::vim w::vigor w::strength))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::physical-symptom)
    (TEMPL mass-pred-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
  :words ( w::agitation w::anaesthesia w::anesthesia w::angina (w::angina w::pectoris) w::anxiety w::arrhythmia w::ataxia w::breathlessness (w::chest w::discomfort) w::confusion w::constipation w::diarrhea  w::depression  w::distress W::DIZZINESS W::DROWSINESS   w::dyspepsia  w::edema w::exhaustion  w::fatigue  w::heartburn W::HIVES w::hoarseness w::hyperventilation (w::irregular w::heartbeat) w::irritation w::lightheadedness (w::light w::headedness) (w::lack w::of w::appetite) (w::loss w::of w::appetite) w::nausea W::NERVOUSNESS w::numbness  (w::pulmonary w::edema) w::redness W::RESTLESSNESS (w::shortness w::of w::breath) w::soreness  w::stress w::tachycardia w::tightness w::tiredness))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::dyspnea)
    (TEMPL mass-pred-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
  :words (w::breathlessness w::dyspnea (w::shortness w::of w::breath) w::wheezing))

(define-list-of-words :pos W::n
  :senses (
   ;;;;; names of medical conditions that take the BARE noun template
   ;;;;; that is, they can take occur with or without an article
   ((LF-PARENT ONT::illness)
    (TEMPL bare-pred-TEMPL)
    )
   )
 :words (W::FLU W::INFLUENZA w::croup w::grippe))

(define-list-of-words :pos W::n
  :senses (;;;;; names of diseases/conditions that are count nouns and cannot appear without an article
   ((LF-PARENT ONT::illness)
    (TEMPL count-pred-TEMPL)
    )
   )
 :words (
  w::cold w::illness ; w::infection nom
	  w::sickness))

(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::injury)
	    (TEMPL count-pred-TEMPL)
	    )
	   )
  :words ( w::concussion ; w::injury
		       w::sprain w::trauma 
		       ))

(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::wound)
	    (TEMPL count-pred-TEMPL)
	    )
	   )
  :words ( w::abrasion w::bump w::bruise w::concussion w::contusion ;  w::cut :nom
		       w::lesion w::scar w::scrape w::scratch w::sore ;W::WOUND :nom
		       ))

(define-list-of-words :pos W::n
  :senses (;;;;; names of diseases/conditions that are count nouns and cannot appear without an article
	   ((LF-PARENT ONT::medical-disorders-and-conditions)
	    (TEMPL count-pred-TEMPL)
	    )
	   )
  :words (
	  W::ALLERGY w::addiction w::aneurysm w::clot w::gallstone (w::kidney w::stone)  w::pregnancy w::pathology w::seizure w::defect w::disease w::disorder w::malformation w::phlebitis w::stroke w::syndrome w::thrombosis w::ulcer))

(define-list-of-words :pos W::n
  :senses (;;;;; names of diseases/conditions that can appear without an article
   ((LF-PARENT ONT::medical-disorders-and-conditions)
    (TEMPL bare-pred-TEMPL)
    )
   )
 :words (w::cancer))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::physical-symptom)
    (TEMPL count-pred-TEMPL)
    )
   )
 :words (
  ; W::ACHE :nom
  w::backache w::bellyache W::CHILL w::contraction W::COUGH w::cramp w::headache w::nosebleed w::palpitation w::sneeze w::sniffle w::spasm))

(define-list-of-words :pos W::n
  :senses (;;;;; names of medical conditions/symptoms that are mass nouns
   ;;;;; i.e., they can't take an indefinite article (*an arthritis) and they have no plural form
   ((LF-PARENT ONT::medical-disorders-and-conditions)
    (TEMPL MASS-PRED-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
 :words (w::pain w::amnesia w::anorexia W::ANEMIA W::ARTHRITIS w::asthma w::atherosclerosis w::bulemia w::dementia W::DIABETES W::GOUT W::HYPERKALEMIA w::hypertension w::hypoglycemia w::leukemia w::malaria W::MANIA  w::osteoarthritis w::osteoporosis W::PANCREATITIS w::phobia W::PNEUMONIA))

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::advertisment
   (SENSES
    ((LF-PARENT ONT::information)
     )
    )
   )
  (W::acid
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060803 :change-date nil :comments nil :wn ("acid%1:27:00"))
     (LF-PARENT ONT::liquid-substance)
     (TEMPL BARE-PRED-TEMPL)
     )
    )
   )
  (W::blood
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060803 :change-date 20070827 :comments nil :wn ("blood%1:08:00"))
     (LF-PARENT ONT::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::tear
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     (LF-PARENT ONT::bodily-fluid)
     (TEMPL count-PRED-TEMPL)
     )
    )
   )
  (W::lymph
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080414 :change-date nil :comments nil :wn ("lymph%1:08:00"))
     (LF-PARENT ONT::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::fluid
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("fluid%1:27:00" "fluid%1:27:02"))
     (LF-PARENT ONT::liquid-substance)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

  (W::saliva
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070827 :comments nil :wn ("saliva%1:08:00"))
     (LF-PARENT ONT::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::sweat
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date 20070827 :comments nil :wn ("sweat%1:08:00"))
     (LF-PARENT ont::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::urine
   (SENSES
    ((meta-data :origin trips :entry-date  20060803 :change-date 20070827 :comments nil :wn ("urine%1:27:00"))
     (LF-PARENT  ONT::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::pee
   (SENSES
    ((meta-data :origin chf :entry-date 20070828 :change-date nil :comments nil :wn ("urine%1:27:00"))
     (LF-PARENT ONT::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::piss
   (SENSES
    ((meta-data :origin chf :entry-date 20070828 :change-date nil :comments nil :wn ("urine%1:27:00"))
     (LF-PARENT ONT::bodily-fluid)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::chance
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("chance%1:07:00"))
     (LF-PARENT ONT::likelihood)
     )
    )
   )
  (W::likelihood
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (meta-data :origin plow :entry-date 20060523 :change-date nil :wn ("likelihood%1:07:00") :comments pq0406)
     )
    )
   )
  (W::probability
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (meta-data :origin plow :entry-date 20060523 :change-date nil :wn ("probability%1:07:01") :comments pq0406)
     )
    )
   )
   (W::improbability
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (meta-data :origin cardiac :entry-date 20090427)
     )
    )
   )
   (W::impossibility
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (meta-data :origin cardiac :entry-date 20090427)
     )
    )
   ) 
  (W::SCALE
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::measure-domain)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::celsius
   (SENSES
    ((LF-PARENT ONT::temperature-domain)
     (example "zero degrees celcius")
     (meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq)
     )
    )
   )
  (W::fahrenheit
   (SENSES
    ((LF-PARENT ONT::temperature-domain)
     (example "zero degrees fahrenheit")
     (meta-data :origin plow :entry-date 20060615 :change-date nil :comments pq)
     )
    )
   )
  (W::prescription
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::prescription)
     )
    )
   )
  (W::sunlight
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sunlight%1:19:00"))
     (LF-PARENT ONT::light)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::injection
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090402 :change-date nil :comments nil)
     (LF-PARENT ont::treatment)
     (example "he gave him a shot")
       )
    )
   )
  (W::shot
   (SENSES
     ((meta-data :origin cardiac :entry-date 20090402 :change-date nil :comments nil)
     (LF-PARENT ont::treatment)
     (example "he got a flu shot at the clinic")
       )
    ((meta-data :origin  medadvisor :entry-date 20060803 :change-date nil :comments nil :wn ("shot%1:23:00"))
     (LF-PARENT ONT::small-container)
     (example "a shot of vodka")
     )
    ((LF-PARENT ONT::image)
     (meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("shot%1:06:01") :comments pq)
     (example "did the photographer get a shot of the volcano")
     )
    )
   )
  (W::dose
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060803 :change-date 20090520 :comments nil :wn ("dose%1:23:00" "dose%1:06:00"))
     (LF-PARENT ONT::dose)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
  (W::dosage
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date 20090520 :comments nil)
     (LF-PARENT ONT::dose)
     (TEMPL SUBSTANCE-UNIT-TEMPL)
     )
    )
   )
;  (W::breath
;   (SENSES
;    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
;     (LF-PARENT ONT::body-process-event)
;     )
;    )
;   )
;  ; nom
;   (W::pulse
;   (SENSES
;    ((meta-data :origin chf :entry-date 20090407 :change-date nil :comments nil)
;     (LF-PARENT ONT::body-process-event)
;     )
;    )
;   )
   (W::wii
   (SENSES
    ((meta-data :origin asma :entry-date 20111004 :change-date nil :comments nil)
     (LF-PARENT ONT::device)
     )
    )
   )
   (W::valve
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090319 :change-date nil :comments nil)
     (LF-PARENT ONT::device)
     )
    )
   )
   (W::episode
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::event)
     (example "a psychotic episode")
     )
    )
   )
 
  (W::frequency
   (SENSES
    ((meta-data :origin  medadvisor :entry-date 20060803 :change-date nil :comments nil :wn ("frequency%1:28:00"))
     (LF-PARENT ONT::frequency)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::sign
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sign%1:10:03"))
     (LF-PARENT ONT::information)
     (example "a sign of cardiac disease")
     )
    ((meta-data :origin navigation :entry-date 20080902 :change-date nil :comments nil :wn ("sign%1:06:01"))
     (LF-PARENT ONT::manufactured-object)
     (example "a stop sign")
     )
    )
   )
   (W::stoplight
   (SENSES
    ((meta-data :origin navigation :entry-date 20080902 :change-date nil :comments nil)
     (LF-PARENT ONT::manufactured-object)
     )
    )
   )
  (W::indicator
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("indicator%1:10:01"))
     (LF-PARENT ONT::information)
     )
    )
   )
  (W::index
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("index%1:10:00"))
     (LF-PARENT ONT::reference-work)
     )
    )
   )
  (W::diet
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("diet%1:13:00"))
     (LF-PARENT ONT::eating-plan)
     )
    ((meta-data :origin cardiac :entry-date 20090408 :change-date nil :comments nil :wn ("diet%1:13:00"))
     (LF-PARENT ONT::food)
     (example "are you eating a balanced diet")
     (preference .96)
     )
    )
   )
  (W::instability
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::stability
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::luck
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::regularity
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
   (W::irregularity
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  (W::REQUEST
   (SENSES
     ((LF-PARENT ONT::request)
      (example "this email is a book order")
      (meta-data :origin task-learning :entry-date 20050901 :change-date nil :wn ("request%1:10:00" "request%1:10:01") :comments nil)
      (TEMPL OTHER-RELN-theme-TEMPL)
     )
    )
   )

  (W::pressure
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (lf-parent ont::phys-measure-domain) 
     (templ other-reln-templ)
     )
    ((lf-parent ont::physical-phenomenon)
     (example "the pressure in the cylinder")
     (meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil))
    )
   )
  (W::sensitivity
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("sensitivity%1:09:00"))
     (LF-PARENT ONT::perceptibility)
     )
    )
   )
  (W::spot
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060803 :change-date 20071024 :comments nil)
     (LF-PARENT ONT::loc-as-area)
     )
    )
   )

   (W::hotspot
   (SENSES
    ((meta-data :origin plow :entry-date 20071024 :change-date nil :comments nil)
     (LF-PARENT ONT::hotspot)
     (example "a wireless hotspot")
     )
    )
   )
   ((W::hot w::spot)
   (SENSES
    ((meta-data :origin plow :entry-date 20071024 :change-date nil :comments nil)
     (LF-PARENT ONT::hotspot)
     (example "a wireless hotspot")
     )
    )
   )
  (W::tenderness
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )
  
  (W::effect
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::caused-event)
     (TEMPL BARE-PRED-TEMPL)
     (preference 0.96) ;; less likely synonym to "side effect"
     )
    ((meta-data :origin beetle :entry-date 20081107 :change-date nil :comments nil)
     (LF-PARENT ont::objective-influence)
     (example "bulb A has no effect on bulb B" "they have the same effect")
     (TEMPL reln-cause-affected-templ (xp2 (% w::PP (w::ptype w::on))))
     )    
    )
   )

  (W::influence
   (SENSES
    ((meta-data :origin beetle :entry-date 20081107 :change-date nil :comments nil)
     (LF-PARENT ont::objective-influence)
     (example "his influence on the course of events")
     (TEMPL reln-cause-affected-templ (xp2 (% w::PP (w::ptype w::on))))
     )    
    )
   )

  ((W::side W::effect)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::side W::effects))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("side_effect%1:26:00"))
     (LF-PARENT ONT::caused-event)
     (TEMPL COUNT-PRED-TEMPL)
     )
    )
   )
  (W::stenosis
   (wordfeats (W::morph (:forms (-S-3P) :plur w::stenoses)))
   (SENSES
    ((meta-data :origin trips :entry-date 20090422 :change-date nil :comments nil)
     (LF-PARENT ONT::physical-symtom)
     (templ mass-pred-templ)
     )
    )
   )
  (W::symptom
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("symptom%1:26:00"))
     (LF-PARENT ONT::caused-event)
     )
    )
   )
  (W::heartbeat
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("heartbeat%1:11:00"))
     (LF-PARENT ONT::vital-sign)
     )
    )
   )
  (W::hibernation
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::bodily-process)
     (templ bare-pred-templ)
     )
    )
   )
  (W::nap
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("nap%1:28:00"))
     (LF-PARENT ONT::bodily-process)
     (example "take a nap")
     )
    )
   )
   (W::sleep
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("nap%1:28:00"))
     (LF-PARENT ONT::bodily-process)
     (example "he's having a sleep")
     )
    )
   )
  (W::surgery
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("surgery%1:04:01"))
     ;; i2b2 classification -- abstract-object; note that it can also be diagnostic
     (LF-PARENT ont::treatment)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("surgery%1:04:01"))
     (LF-PARENT ont::medical-action)
     (example "the doctor performed the surgery")
     )
    )
   )
;  (W::bypass
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090408 :change-date nil :comments nil :wn ("surgery%1:04:01"))
;     (LF-PARENT ont::treatment)
;     (example "a coronary bypass")
;     )
;    )
;   )
  (W::operation
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("operation%1:04:00"))
     (LF-PARENT ont::treatment)
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("surgery%1:04:01"))
     (LF-PARENT ont::medical-action)
     (example "the doctor performed the operation")
     )
    )
   )
;   (W::transplant
;   (SENSES
;    ((meta-data :origin trips :entry-date 20090408 :change-date nil :comments nil :wn ("operation%1:04:00"))
;     (LF-PARENT ont::treatment)
;     )
;    )
;   )
;   (W::graft
;   (SENSES
;    ((meta-data :origin trips :entry-date 20090408 :change-date nil :comments nil :wn ("operation%1:04:00"))
;     (LF-PARENT ont::treatment)
;     )
;    )
;   )
  (W::defect
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil)
     (LF-PARENT ONT::problem)
     )
    )
   )
  (W::form
   (SENSES
    ( ;; 20050325 changed from info-function-object to template-info-object
     (LF-PARENT ONT::template-info-object)
     (example "fill out the requisition form to get approval")
     (meta-data :origin calo :entry-date 20040622 :change-date 20050325 :wn ("form%1:10:01") :comments y2)
     )
    )
   )

  (W::application
   (SENSES
    ((LF-PARENT ONT::template-info-object)
     (example "fill out the application")
     (meta-data :origin plow :entry-date 20050325 :change-date nil :wn ("application%1:10:00") :comments nil)
     )
    ((LF-PARENT ONT::use)
     (TEMPL other-reln-theme-TEMPL)
     (example "the application of the technology")
     (meta-data :origin step :entry-date 20080529 :change-date nil :comments nil :wn ("application%1:04:02")))
    ((LF-PARENT ONT::computer-program)
     (example "quit the application")
     (meta-data :origin plot :entry-date 20080413 :change-date nil :wn ("application%1:10:00") :comments nil)
     )
    )
   )

   (W::GAIN
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("gain%1:23:00"))
     (LF-PARENT ONT::acquire)
     (example "he experienced weight gain")
     (TEMPL other-reln-theme-TEMPL)
     )
    )
   )
  (W::body
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060803 :change-date nil :comments nil :wn ("body%1:08:00"))
     (LF-PARENT ONT::body-part)
     (templ body-part-reln-templ)
     )
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "put the body of the message here")
     (meta-data :origin plot :entry-date 20080225 :change-date nil :comments nil)
     (templ other-reln-templ)
     )
    )
   )
  (W::FOOT
   (wordfeats (W::morph (:forms (-s-3p) :plur W::feet)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("foot%1:08:01"))
     (LF-PARENT ONT::external-body-part)
     (TEMPL BODY-PART-RELN-TEMPL)
     )
    )
   )
  (W::calf
   (wordfeats (W::morph (:forms (-s-3p) :plur W::calves)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("foot%1:08:01"))
     (LF-PARENT ONT::external-body-part)
     (TEMPL BODY-PART-RELN-TEMPL)
     )
    )
   )
  (W::tooth
   (wordfeats (W::morph (:forms (-s-3p) :plur W::teeth)))
   (SENSES
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("tooth%1:08:00"))
     (LF-PARENT ONT::body-part)
     (TEMPL BODY-PART-RELN-TEMPL)
     )
    )
   )
  ))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::medical-diagnostic)
    (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
    (TEMPL COUNT-PRED-TEMPL)
    )
   )
 :words (w::angiography w::angiogram w::catscan (w::cat w::scan) (w::ct w::scan) w::electrocardiogram w::echocardiography w::ultrasound w::xray (w::x w::ray) ))

;; physical systems, digestive, reproductive,. ...
;; those are adjectives

;; external
(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::external-body-part)
    (TEMPL body-part-reln-templ)
    )
   )
 :words (
  w::abdomen w::ab W::ANKLE W::ARM w::ass w::back w::backside W::BELLY (w::belly w::button) W::BREAST w::brow w::bust w::butt w::buttock w::rear (w::rear w::end) W::CHEST W::CHIN w::cuticle W::EAR w::earlobe W::ELBOW w::extremity W::EYE w::eyebrow w::eyelash W::FACE W::FINGER w::fingernail w::fingerprint w::fingertip w::follicle w::forefinger  W::FOREHEAD w::forearm W::GENITAL W::HAIR W::HAND W::HEAD w::hip w::jaw W::JOINT W::KNEE w::kneecap w::lash W::LAP W::LEG w::limb W::LIP W::MOUTH W::NECK W::NOSE w::nostril w::penis w::pinky W::PROSTATE W::PUPIL w::shin w::shoulder w::skin w::testicle W::THIGH W::THUMB W::TOE w::toenail W::THROAT w::vagina W::WAIST w::waistline (w::waist w::line) W::WRIST))

;; internal
(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::internal-body-part)
    (TEMPL body-part-reln-templ)
    )
   )
 :words (
  w::aorta W::ARTERY w::bone W::BRAIN w::brainstem w::breastbone w::cartilage w::cell (w::blood w::cell) (w::white w::blood w::cell) (w::red w::blood w::cell) w::cerebellum W::COLON w::corpuscle w::cortex (w::digestive w::system) (w::digestive w::tract) w::gland w::hipbone W::KIDNEY W::LIVER W::LUNG W::MUSCLE w::pancreas w::tongue w::tonsil (w::vocal w::cord) w::node w::nodule w::organ W::VEIN w::rib w::tendon w::tissue w::stomach w::thyroid w::tummy (w::urinary w::tract) w::urethra w::uterus w::ventricle w::vessel w::sinus))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::health-professional)
    (TEMPL COUNT-PRED-TEMPL)
    )
   )
 :words ( w::anesthesiologist w::cardiologist w::chiropractor w::dentist w::dermatologist W::DOC W::DOCTOR w::endocrinologist w::gastroenterologist w::geriatrician W::GYNECOLOGIST w::internist w::intern w::midwife W::NURSE w::nutritionist W::ONCOLOGIST w::optometrist w::ophthalmologist w::obstetrician W::PEDIATRICIAN w::pharmacist W::PHYSICIAN W::PSYCHIATRIST w::radiologist w::rheumatologist W::SHRINK W::SURGEON W::THERAPIST w::urologist))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::person)
    (TEMPL COUNT-PRED-TEMPL)
    )
   )
 :words (w::hypochondriac))

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::CAMERA
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::RECORDING-DEVICE)
     )
    )
   )
  ((w::VIDEO W::CAMERA)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::video W::cameras))))
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20041116)
     (LF-PARENT ONT::RECORDING-DEVICE)
     )
    )
   )
  (W::VIDEO
   (SENSES
    ((LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin boudreaux :entry-date 20031025)
     )
    )
   )
  (W::VCR
   (SENSES
    ((LF-PARENT ONT::RECORDING-DEVICE)
     (meta-data :origin calo :entry-date 20040205)
     )
    )
   )
  (W::SENSOR
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::sensor)
     )
    )
   )
  (W::PLUG
   (SENSES
    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
;   ((w::spark W::PLUG)
;   (SENSES
;    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
;     (LF-PARENT ONT::DEVICE)
;     )
;    )
;   )
   (w::cylinder
   (SENSES
    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   ((w::drive w::shaft)
   (SENSES
    ((meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil)
     (LF-PARENT ONT::DEVICE)
     )
    )
   )
   
  (W::VOICE
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::MEDIUM)
     )
    )
   )
  (W::BAG
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
 ;    (LF-PARENT ONT::small-container)
     (lf-parent ont::bag)
     (TEMPL pred-subcat-contents-templ)
     )
    )
   )

   (W::laundry
   (SENSES
    ((LF-PARENT ONT::washing)
     (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (templ mass-pred-templ)
     )
    )
   )
   (W::washing
   (SENSES
    ((LF-PARENT ONT::washing)
     (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (templ mass-pred-templ)
     )
    )
   )
 
  (W::SUIT
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::ATTIRE)
     )
    )
   )
  (W::treadmill
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422)
     (LF-PARENT ONT::device)
     )
    )
   )
  (W::bicycle
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422)
     (LF-PARENT ONT::land-vehicle)
     )
    )
   )
 (W::bike
   (SENSES
    ((meta-data :origin asma :entry-date 20111004)
     (LF-PARENT ONT::land-vehicle)
     )
    )
   )
  (W::ATV
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::land-vehicle)
     )
    )
   )
  (W::IMAGE
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::IMAGE)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
 ;; changed from nominalization since we need the physical representation sense as well
  (W::scan
   (SENSES
    ((meta-data :origin cernl :entry-date 20110312)
     (LF-PARENT ONT::IMAGE)
     (example "the scan showed the nodes")
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin cernl :entry-date 20110312)
     (LF-PARENT ONT::physical-scrutiny)
     (example "he did a scan") ; activity sense
     (TEMPL OTHER-RELN-theme-TEMPL)
     )
    )
   )
  (W::EMAIL
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024 :wn ("email%1:10:00"))
     (LF-PARENT ONT::email)
     )
    )
   )
   (W::E-MAIL
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024 :wn ("e-mail%1:10:00"))
     (LF-PARENT ONT::email)
     )
    )
   )
   
  (W::EXAMPLE
   (SENSES
    ((meta-data :origin calo :entry-date 20041203 :change-date 20050817 :wn ("example%1:09:00") :comments lf-restructuring)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "here's an example")
     )
    )
   )
   (W::EXEMPLAR
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060119 :change-date 20050817 :comments caloy3)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "find more exemplars")
     )
    )
   )
  (W::candidate
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060119 :change-date 20050817 :wn ("candidate%1:18:00") :comments caloy3)
     (LF-PARENT ONT::professional)
     (TEMPL OTHER-RELN-TEMPL)
     (example "interview the job candidates")
     )
    )
   )
   (W::waiter
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
      )
    )
   )
   (W::waitress
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil)
     (LF-PARENT ONT::professional)
      )
    )
   )
  (W::model
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050817  :change-date 20050817 :wn ("model%1:06:00") :comments nil)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "an illustration of the process")
     )
    ((LF-PARENT ONT::product-model)
     (TEMPL gen-part-of-reln-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("model%1:09:03") :COMMENTS HTML-PURCHASING-CORPUS)
     )
    )
   )
  
  (W::illustration
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050817  :change-date 20050817 :wn ("illustration%1:09:02") :comments nil)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "an illustration of the process")
     )
    )
   )
   (W::simulation
   (SENSES
    ((meta-data :origin cardiac :entry-date 20081212  :change-date nil :wn ("illustration%1:09:02") :comments LM-vocab)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::instance
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050817  :change-date 20050817 :wn ("instance%1:09:00") :comments nil)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "an instance of process")
     )
    )
   )
  (W::SAMPLE
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (example "take a soil sample")
     (LF-PARENT ONT::geo-sample)
     (TEMPL OTHER-RELN-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20041203 :change-date 20050817 :wn ("example%1:09:00") :comments lf-restructuring)
     (LF-PARENT ONT::representative)
     (TEMPL OTHER-RELN-TEMPL)
     (example "try a free sample")
     )
    )
   )
  (W::FOSSIL
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::natural-object)
     )
    )
   )
  (W::HABITAT
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::HAB
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::structure)
     )
    )
   )
  (W::WAYPOINT
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::LOCATION)
     )
    )
   )
  ((W::WAY w::POINT)
   (SENSES
    ((meta-data :origin lou2 :entry-date 20061108 ::change-date nil :comments demo)
     (LF-PARENT ONT::LOCATION)
     )
    )
   )
  (W::STOP
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::LOCATION)
     (example "go to this stop")
     )
    )
   )
   (W::STOPOVER
   (SENSES
    ((meta-data :origin caloy4 :entry-date 20070403 :comments atis)
     (LF-PARENT ONT::event)
     (example "This flight has a stopover in Chicago")
     )
    )
   )
  (W::ACTIVITY
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024 :wn ("activity%1:04:00"))
      (LF-PARENT ONT::ACTING)
      (templ other-reln-cause-templ)
     )
    )
   )

  (W::FUNCTIONALITY
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::FUNCTION-OBJECT)
     )
    )
   )
  (W::THRESHOLD
   (SENSES
    ((meta-data :origin boudreaux :entry-date 20031024)
     (LF-PARENT ONT::BOUND)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::RESOLUTION
   (SENSES
    ((LF-PARENT ONT::RESOLUTION)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin boudreaux :entry-date 20031024)
     )
    )
   )
   (W::definition
   (SENSES
    ((LF-PARENT ONT::RESOLUTION)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin caloy2 :entry-date 20050404 :comments projector-purchasing)
     )
    )
   )
; (w::explanation
;  (senses
;   ((lf-parent ont::describe)
;    (example "there must be some explanation")
;    (meta-data :origin calo :entry-date 20050418 :change-date 20090506 :wn ("explanation%1:10:00") :comments nil)
;    )                               
;   ))

; :nom
;  (W::authorization
;   (SENSES
;    ((EXAMPLE "can I have authorization to move it")
;     (LF-PARENT ONT::allow)
;     (PREFERENCE 0.96)
;     (TEMPL SUBCAT-INF-EFFECt-TEMPL (xp (% W::cp (W::ctype (? ctp W::s-to)))))
;     (meta-data :origin lou :entry-date 20031103)
;     )
;    ((EXAMPLE "obtain authorization for the purchase")
;     (LF-PARENT ONT::allow) 
;     (TEMPL other-reln-effect-TEMPL (xp (% W::pp (W::ptype (? ptp W::for W::of)))))
;     (meta-data :origin calo :entry-date 20040128 :comments calo-y1script )
;     )
;    ((EXAMPLE "obtain authorization")
;     (LF-PARENT ONT::allow) 
;     (TEMPL other-reln-effect-TEMPL)
;     (meta-data :origin calo :entry-date 20040128 :comments calo-y1script )
;     )
;    )
;   )

  
  (W::permission
   (SENSES
    ((EXAMPLE "can I have permission to move it")
     (LF-PARENT ONT::allow)
     (PREFERENCE 0.96)
     (TEMPL SUBCAT-INF-EFFECT-TEMPL)
     (meta-data :origin lou :entry-date 20031103)
     )
    ((EXAMPLE "get permission for the purchase")
     (LF-PARENT ONT::allow) 
     (TEMPL other-reln-effect-TEMPL (xp (% W::pp (W::ptype (? ptp W::for)))))
     (meta-data :origin calo :entry-date 20040128 :comments calo-y1script )
     )
    ((EXAMPLE "get permission")
     (LF-PARENT ONT::allow) 
     (TEMPL other-reln-effect-TEMPL)     
     (meta-data :origin calo :entry-date 20040128 :comments nil )
     )
    )
   )
  (W::clearance
   (SENSES
    ((LF-PARENT ONT::allow)
     (TEMPL SUBCAT-INF-EFFECT-TEMPL)
     (EXAMPLE "can I have clearance to do it")
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    ((EXAMPLE "get clearance for the event")
     (LF-PARENT ONT::allow) 
     (TEMPL other-reln-effect-TEMPL (xp (% W::pp (W::ptype (? ptp W::for)))))
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    ((EXAMPLE "get clearance")
     (LF-PARENT ONT::allow)
     (TEMPL other-reln-effect-TEMPL)     
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  
  (W::object
   (SENSES
    ((EXAMPLE "I found an interesting object")
     (LF-PARENT ONT::phys-object)
     (meta-data :origin boudreaux :entry-date 20031026 :wn ("object%1:03:00"))
     )
    )
   )
  ;; moving this to its own lf type
  ;; gf:: Frankly "automaton" sounds more general than "robot" to me, but maybe that's because I vaguely remember the days of DFAs and NFAs and such.
  (W::automaton
   (SENSES
    ((LF-PARENT ONT::automaton)     
     (meta-data :origin joust :entry-date 20091118 :change-date nil :wn ("robot%1:06:00") :comments lexical-choice)
     )
    )
   )
  
  (W::robot
   (SENSES
    ((LF-PARENT ONT::robot)
     (prototypical-word t)
     (meta-data :origin lou :entry-date 20040311 :change-date nil :wn ("robot%1:06:00") :comments lou-sent-entry)
     )
    )
   )
   (W::mine
   (SENSES
    ((LF-PARENT ONT::manufactured-object)
     (meta-data :origin lou :entry-date 20040311 :change-date nil :wn ("mine%1:06:00") :comments lou-sent-entry)
     )
    )
   )

     
    (W::URL
    (wordfeats (W::MORPH (:forms (-S-3P))))
    (SENSES
     ((EXAMPLE "click on the url")
      (meta-data :origin calo :entry-date 20041004 :change-date nil :wn ("url%1:10:00") :comments caloy2)
      (LF-PARENT ONT::symbolic-representation)
      )
     )
    )

    (W::UPGRADE
   (SENSES
    ((LF-PARENT ONT::computer-hardware) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("upgrade%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ((LF-PARENT ONT::software-application) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("upgrade%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Myrosia's words for bee
;

(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
	 (w::AMMETER
	  (senses ((lf-parent ont::device)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::ampermeter
	  (senses ((lf-parent ont::device) 
		   (lf-form w::ammeter)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::amperemeter
	  (senses ((lf-parent ont::device) 
		   (lf-form w::ammeter)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::ampmeter
	  (senses ((lf-parent ont::device) 
		   (lf-form w::ammeter)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::meter
	  (senses ((lf-parent ont::device)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::lightbulb
	  (senses ((lf-parent ont::device)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 ((w::light w::bulb)
	  (senses ((lf-parent ont::device)
		   (lf-form w::lightbulb)
		   (meta-data :origin bee :entry-date 20050303 :change-date nil :comments newBEEcorpus)
		   )))
	 (w::bulb
	  (senses ((lf-parent ont::device)
		   (lf-form w::lightbulb)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::source
	  (senses ((lf-parent ont::device-component)
		   (Example "A source is a battery -- the electrical sense only")
		   ;; Preference  is low to make a relative reading more likely unless asked for specifically
		   (preference 0.97)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))

	 (w::load
	  (senses ((lf-parent ont::device-component)
		   (Example "A load is a lightbulb -- the electrical sense only")
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 (w::light
	  (senses ((lf-parent ont::device-component)
		   (Example "A light is a lightbulb -- the electrical sense only")
		   (meta-data :origin bee :entry-date 20040408 :change-date nil :comments test-s)
		   )))
	 (w::definition
	     (senses ((lf-parent ont::definition)
		      (templ other-reln-templ)
		      (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		      )))
	 (w::force
	  (senses ((lf-parent ont::phys-measure-domain) 
		   (templ other-reln-templ)
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)		   
		   )
		  ((lf-parent ont::physical-phenomenon) 
		   (example "the force of the hurricane")
		   (meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil))
		  ))
	 (w::step
	  ; nom
	  (senses ;((lf-parent ont::action)
;                   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s :wn ("step%1:04:02" "step%1:04:00" "step%1:04:03"))
;                   )
                  ((lf-parent ont::information-function-object)
		   (example "delete this step")
		   (meta-data :origin plow :entry-date 20080718 :change-date nil :comments task-editing)
		   )
		  ((lf-parent ont::stairs)
		   (example "take the steps to the fifth floor")
		   (meta-data :origin cardiac :entry-date 20070814 :change-date nil :comments nil)
		   )
 		  ))
	 ; get this from nominalization
;         (w::reading
;          (senses ((lf-parent ont::action)
;                   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s :wn ("reading%1:10:02" "reading%1:04:02"))
;                   )))
	 ;; defined separately from the other components because we need extra spatial abstraction features
	 (w::wire
	  (senses ((lf-parent ont::Device-component) 
		   (sem (f::spatial-abstraction (? saa f::line f::spatial-point)))
		   (meta-data :origin bee :entry-date 20040407 :change-date nil :comments test-s)
		   )))
	 ))

;; Various measuring devices
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::Device) 
	    (templ count-pred-templ)
	    (meta-data :origin bee :entry-date 20040407 :change-date 20040621 :comments (test-s portability-followup))
	    ))
  :words (w::voltmeter w::multimeter w::odometer w::tachometer w::speedometer w::pedometer w::scale))

;; have to define short circuit separately because of its morphology, and because it's a container (a circuit contains components)

(define-words 
    :pos W::n :templ COUNT-PRED-TEMPL
    :words (
	    
	    (w::circuit
	     (senses 
	      ((LF-parent ONT::Device) 
	       (SEM (f::container +))
	       (templ count-pred-templ)
	       (meta-data :origin bee :entry-date 20040407 :change-date 20080716  :comments (test-s portability-followup beetle-pilots))
	       ))
	     )

	    
	    ((w::short w::circuit)
	     (wordfeats (W::morph (:forms (-S-3P) :plur (W::short W::circuits))))
	     (senses 
	      ((LF-parent ONT::Device) 
	       (templ count-pred-templ)
	       (meta-data :origin bee :entry-date 20040407 :change-date 20050211 :wn ("short_circuit%1:06:00") :comments (test-s portability-followup))
	       ))
	     )
	    ))
  

;; Various electrical parts
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::Device-component) 
	    (templ part-of-reln-templ)
	    (meta-data :origin bee :entry-date 20040407 :change-date 20040607 :comments (test-s portability-experiment))
	    ))
  ;; Myrosia added terminal and holder for portability experiment
  :words (w::clamp 
	  w::clip w::dial w::knob w::lead 
	  w::tab w::component ;; w::switch CAET 
	  w::socket 
	  w::terminal w::holder
	  w::junction)
  )



;; Various properties
(define-words :pos w::N 
  :templ other-reln-templ
  :words (
	  (w::polarity
	   (senses
	    ((lf-parent ont::non-measure-ordered-domain)
	     (meta-data :origin bee :entry-date 20040407 :change-date nil :wn ("polarity%1:24:01" "polarity%1:24:00") :comments test-s)
	     )
	    ))
	  (w::resistance
	   (senses
	    ((lf-parent ont::phys-measure-domain)
	     (syntax (w::mass w::mass))
	     (meta-data :origin bee :entry-date 20040407 :change-date nil :wn ("resistance%1:19:01") :comments test-s)
	     )
	    ))
	  (w::current
	   (senses
	    ((lf-parent ont::phys-measure-domain)
	     (syntax (w::mass w::mass))
	     (meta-data :origin bee :entry-date 20040407 :change-date nil :wn ("current%1:19:01") :comments test-s)
	     )
	    ))
	  (w::charge
	   (senses
	    ((lf-parent ont::phys-measure-domain)
	     (syntax (w::mass w::mass))
	     (meta-data :origin bee :entry-date 20040407 :change-date nil :wn ("charge%1:19:00") :comments test-s)
	     )
	    ))
	  (w::difference
	   (senses
	    ((lf-parent ont::comparison-function)
	     (example "the difference in states between the terminals")
	     (templ reln-theme-property-templ (xp2 (% w::PP (w::ptype (? ptp w::of w::in)))) (xp1 (% w::PP (w::ptype w::between))))
	     (meta-data :origin bee :entry-date 20040407 :change-date nil :wn ("difference%1:07:00") :comments test-s)
	     )
	    ((lf-parent ont::comparison-function)
	     (example "the difference between states of the terminals")
	     (templ other-reln-property-templ (xp (% w::PP (w::ptype w::between))))
	     (meta-data :origin bee :entry-date 20081211 :change-date nil :wn ("difference%1:07:00") :comments beetle-pilots)
	     )
	    ((lf-parent ont::comparison-function)
	     (example "the difference between states between the terminals")
	     (templ reln-theme-property-templ (xp1 (% w::PP (w::ptype w::between)))
		    (xp2 (% w::PP (w::ptype w::between))) )
	     (meta-data :origin bee :entry-date 20090116 :change-date nil :wn ("difference%1:07:00") :comments beetle-pilots)
	     (preference 0.98) ;; MD -- put a lower preference since it's a less likely interpretation. But it cannot be lowered further, or the "spatial-loc" sense of "between" takes over if it is in-domain	     
	     )	    
	    ((lf-parent ont::comparison-function)
	     (example "the difference of 1.5V between the terminals")
	     (templ reln-val-property-templ 
		    (xp1 (% w::PP (w::ptype w::in))) )
	     (meta-data :origin bee :entry-date 20090512 :change-date nil :wn ("difference%1:07:00") :comments beetle-pilots)
	     )	    	    
	    ((lf-parent ont::comparison-function)
	     (example "the difference of 1.5V in their states")
	     (templ reln-val-theme-templ 
		    (xp1 (% w::PP (w::ptype w::between))) )
	     (meta-data :origin bee :entry-date 20090512 :change-date nil :wn ("difference%1:07:00") :comments beetle-pilots)
	     )	    	    
	    ))
	  ;; defined during bee portability experiment
	  (w::impact
	   (wordfeats (W::MORPH (:forms (-none))))
	   (senses
	    ((lf-parent ont::objective-influence)
	     (example "the impact of the ball" "the impact of his actions on history")
	     (syntax (w::mass w::mass))	     
	     (TEMPL reln-cause-affected-templ (xp2 (% w::PP (w::ptype w::on))))
	     (meta-data :origin bee :entry-date 20040614 :change-date 20081107 :wn ("impact%1:11:00") :comments portability-experiment)
	     )
	    ))
	  (w::window
	   (senses
	    ((lf-parent ont::display) ;; this is the window on the computer screen
	     (example "a window on the computer screen")
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("window%1:06:03") :comments portability-experiment)
	     )
	    ((lf-parent ont::structural-opening)
	     (example "close the window shades")
	     (templ count-pred-templ)
	     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("window%1:06:00") :comments projector-purchasing)
	     )	 
	    ))
	  (w::hole
	   (senses
	    ((lf-parent ont::opening)
	     (example "a hole in the ozone layer")
	     (templ count-pred-templ)
	     (meta-data :origin plow :entry-date 20060802 :change-date nil :wn ("hole%1:17:01") :comments weather)
	     )
	    ((lf-parent ont::hole)
	     (example "a hole in the ground") ;; can't go through it, so not an opening
	     (templ count-pred-templ)
	     (prototypical-word t)
	     (meta-data :origin joust :entry-date 20091027 :change-date nil :wn ("crater%1:17:01") :comments nil)
	     )
	    )
	   )
	   (w::crater
	   (senses
	    ((lf-parent ont::crater)
	     (templ count-pred-templ)
	     (meta-data :origin joust :entry-date 20091027 :change-date nil :wn ("crater%1:17:01") :comments nil)
	     )
	    )
	   )
	   (w::cavity
	   (senses
	    ((lf-parent ont::opening)
	     (example "the chest cavity")
	     (templ count-pred-templ)
	     (meta-data :origin cardiac :entry-date 20080414 :change-date nil :wn ("hole%1:17:01") :comments nil)
	     )
	    )
	   )
	   (W::separation
	    (SENSES
	     ((LF-PARENT ONT::opening)
	      (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
	      (templ count-pred-templ)
	      )
	     )
	    )
	  (w::summary
	   (senses
	    ((lf-parent ont::information-function-object)
	     (templ count-pred-templ)
	     (example "the summary of our actions")
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("summary%1:10:00") :comments portability-experiment)
	     )	   	   	   	    
	    ))
	  (w::stage
	   (senses
	    ((lf-parent ont::non-measure-ordered-domain)
	     (example "This stage of the plan")
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("stage%1:26:00" "stage%1:28:00") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  (w::slide
	   (senses
	    ((lf-parent ont::image)
	     (Example "slide number 4 on the computer screen")
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("slide%1:06:01") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  (w::rule
	   (senses
	    ((lf-parent ont::information-function-object)
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :comments portability-experiment)
	     )	   	   	   	    
	    ))
	  (w::reality
	   (senses
	    ((lf-parent ont::mental-object)
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("reality%1:09:00") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  (w::notion
	   (senses
	    ((lf-parent ont::mental-object)
	     (example "the notion of current")
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("notion%1:09:02") :comments portability-experiment)
	     )	   	   	   
	    ))
	  (w::method
	   (senses
	    ((lf-parent ont::ps-object)
	     (example "the method of solving this problem")
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("method%1:09:00") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  (w::manner
	   (senses
	    ((lf-parent ont::ps-object)
	     (example "the manner of solving this problem")
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("manner%1:07:02") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  (w::knowledge
	   (senses
	    ((lf-parent ont::know)
	     (example "the knowledge of the subject")
	     (templ other-reln-theme-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("knowledge%1:03:00") :comments portability-experiment)
	     )
	    ))
	  (w::level
	   (senses
	    ;; why isn't this just ont::level? the only thing that is "mental" about it is the subcat. 
;            ((lf-parent ont::mental-object)
;             (example "His level of understanding")
;             (templ other-reln-templ)
;             (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("level%1:26:00") :comments portability-experiment)
;             (preference .97) ;; prefer ont::level sense
;             )
	    ((lf-parent ont::level)
	     (example "the humidity level" "the water level" "a level of 5")
	     (TEMPL reln-subcat-of-number-TEMPL)
	     (meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("level%1:07:00") :comments nil)
	     )	  
	    ))
	  (w::interface
	   (senses
	    ((lf-parent ont::software-application)
	     ;; this is the window on the computer screen
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("interface%1:10:00") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  (w::gap
	   (senses
	    ((lf-parent ont::phys-shape)
	     (sem (f::form f::hole))
	     (example "a gap in the circuit")
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("gap%1:17:00") :comments portability-experiment)
	     )	   	   	   	    
	    ))
	  (w::exercise
	   (senses
	    ((lf-parent ont::ps-object)
	     (example "an exercise [in measuring curent]")
	     (templ other-reln-templ (xp (% w::pp (w::ptype w::in))))
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("exercise%1:04:01") :comments portability-experiment)
	     )
	    ((meta-data :origin chf :entry-date 20070809 :comments chf-dialogues :wn ("exercise%1:04:00"))
	     (LF-PARENT ONT::working-out)
	     (example "do you get enough exercise")
	     (templ mass-pred-templ)
	     )
	    ))
	  ;; this was already defined -- see ont::representative sense. do we need two?
;          (w::example
;           (senses
;            ((lf-parent ont::ps-object)
;             (example "an example [of differentiating]")
;             (templ other-reln-templ)
;             (meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("example%1:04:00") :comments lam-initial)
;             )                             
;            ))
	  

	  (w::dialogue
	   (senses
	    ((lf-parent ont::conversation)
	     (templ mass-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("dialogue%1:10:01") :comments portability-experiment)
	     )	   	   	   	    
	    ))
	  (w::detail
	   (senses
	    ((lf-parent ont::information-function-object)
	     (templ count-pred-templ)
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("detail%1:09:00") :comments portability-experiment)
	     )	   	   	   	    
	    ))
	  (w::analogy
	   (senses
	    ((lf-parent ont::mental-object)
	     (templ other-reln-templ (xp (% w::pp (w::ptype (? wptp w::to w::between)))))
	     (meta-data :origin bee :entry-date 20040615 :change-date nil :wn ("analogy%1:04:00") :comments portability-experiment)
	     )	   	   	   	   
	    ))
	  ))
	  
;; allison's additions for calo
(define-words :pos w::N :templ count-pred-templ
  :words (
  (W::backpack
   (SENSES
    ((meta-data :origin allison :entry-date 20041114 :change-date nil :wn ("backpack%1:06:00") :comments caloy2 :wn-sense (1))
     (LF-PARENT ONT::small-container)
     (TEMPL pred-subcat-contents-templ)
     (example "they fit in your backpack or whatever")
     )
    )
   )

  (W::fax
   (SENSES
    ((meta-data :origin allison :entry-date 20041031 :change-date nil :comments caloy2)
     (LF-PARENT ONT::info-medium)
     (example "he sent a fax")
     )
    ((meta-data :origin allison :entry-date 20041031 :change-date nil :wn ("fax%1:06:00") :comments caloy2)
     (LF-PARENT ONT::machine)
     (example "he used the fax (machine)")
     )
    )
   )

  (W::faxer
   (SENSES
    ( (meta-data :origin allison :entry-date 20041031 :change-date nil :comments caloy2)
      (LF-PARENT ONT::machine)
     (LF-FORM W::fax)
     )
    )
   )
  
  (W::resort
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("resort%1:15:00") :comment pq)
     (LF-PARENT ONT::accomodation)
     )
    )
   )
  (W::hotel
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("hotel%1:06:00") :comment caloy3)
     (LF-PARENT ont::accomodation)
     )
    )
   )
 (W::inn
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060503 :change-date nil :wn ("inn%1:06:00") :comment pq387)
     (LF-PARENT ont::accomodation)
     )
    )
   )
   (W::motel
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060503 :change-date nil :wn ("motel%1:06:00") :comment pq387)
     (LF-PARENT ont::accomodation)
     )
    )
   )
    ((W::bed w::and w::breakfast)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060503 :change-date nil :wn ("bed_and_breakfast%1:06:00") :comment pq387)
     (LF-PARENT ont::bedandbreakfast)
     )
    )
   )
    ((W::b w::and w::b)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060503 :change-date nil :comment pq387)
     (LF-PARENT ont::bedandbreakfast)
     )
    )
   )
   (W::restaurant
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("restaurant%1:06:00") :comment caloy3)
     (example "does the hotel have a restaurant")
     (LF-PARENT ONT::restaurant)
     )
    )
   )
   (W::eatery
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::intermission
   (SENSES
    ((LF-PARENT ONT::event)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::disco
   (SENSES
    ((LF-PARENT ONT::entertainment-establishment)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::discotheque
   (SENSES
    ((LF-PARENT ONT::entertainment-establishment)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::pub
   (SENSES
    ((LF-PARENT ONT::drinking-establishment)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::saloon
   (SENSES
    ((LF-PARENT ONT::drinking-establishment)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::tacqueria
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::pizzeria
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::tavern
   (SENSES
    ((LF-PARENT ONT::drinking-establishment)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::bistro
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::diner
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::deli
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::delicatessen
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::cantina
   (SENSES
    ((LF-PARENT ONT::restaurant)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::cafe
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("cafe%1:06:00") :comment caloy3)
     (LF-PARENT ONT::coffe-shop)
     (example "let's meet at the cafe on the corner")
     )
    )
   )
   (W::bar
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("bar%1:06:04") :comment caloy3)
     (LF-PARENT ONT::drinking-establishment)
     (example "let's meet at the bar")
     )
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "To see the status bar, choose Status Bar from the View menu")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
    (W::lounge
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("lounge%1:06:00") :comment caloy3)
     (LF-PARENT ONT::drinking-establishment)
     (example "let's meet in the lounge")
     )
    )
   )
    (W::lobby
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("lobby%1:06:00") :comment caloy3)
     (LF-PARENT ONT::internal-enclosure)
     (example "let's meet in the lobby")
     )
    )
   )
  (W::basement
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :wn ("basement%1:06:00") :comment caloy3)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
  (W::attic
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :wn ("attic%1:06:00") :comment caloy3)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
  (W::pantry
   (SENSES
    ((LF-PARENT ONT::internal-enclosure)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("pantry%1:06:00"))
     )
    )
   )
   (W::kitchen
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :wn ("kitchen%1:06:00") :comment caloy3)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (W::kitchenette
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("kitchenette%1:06:00") :comment nil)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (W::bedroom
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("bedroom%1:06:00") :comment nil)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   ((W::w w::c)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::w W::cs))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :comment caloy3)
     (LF-PARENT ONT::internal-enclosure)
     )
    )
   )
   (W::installation
   (SENSES
    ((meta-data :origin allison :entry-date 20041114 :change-date nil :wn ("installation%1:04:00") :comments caloy2 :wn-sense (1))
     (LF-PARENT ONT::FUNCTION-OBJECT)
     (TEMPL MASS-PRED-TEMPL)
     (example "and you probably don't want installation if you're not getting the technical support")
     )
    )
   )
   
  (W::intensity
   (SENSES
    ((meta-data :origin allison :entry-date 20041114 :change-date nil :wn ("intensity%1:07:00") :comments caloy2 :wn-sense (1))
     (LF-PARENT ONT::intensity)
     (TEMPL OTHER-RELN-TEMPL)
     (example "if you're going to be doing a lot of high intensity web surfing")
     )
    )
   )

  (W::kid
   (SENSES
    ((meta-data :origin allison :entry-date 20041115 :change-date nil :wn ("kid%1:18:01") :comments caloy2 :wn-sense (1 5))
     (LF-PARENT ONT::child)
     (example "my kids are young right now")
     )
    )
   )
  )
  )


;; Mathematical functions
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::Number-measure-domain) 
	    (templ other-reln-templ)
	    (meta-data :origin lam :entry-date 20050420 :change-date nil :comments lam-initial)
	    ))
  ;; Added by Myrosia during LAM extension
  :words (w::sine w::sin w::cosine w::cos
		  w::exponent w::logarithm w::log
		  w::root (w::square w::root) (w::cubic w::root)
		;  w::power ; removing to avoid competition w/ obtw demo sense ont::power
		  )
  )

;; Mathematical terms
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::Mathematical-term) 
	    (templ other-reln-templ)
	    (meta-data :origin lam :entry-date 20050420 :change-date nil :comments lam-initial)
	    ))
  ;; Added by Myrosia during LAM extension
  :words (w::numerator 
	  w::denominator 
	  w::formula w::fraction w::expression w::equation w::derivative 
	  w::argument )
  )

;; Mathematical operations
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::Mathematical-term) 
	    (templ bare-pred-templ)
	    (meta-data :origin lam :entry-date 20050420 :change-date nil :comments lam-initial)
	    ))
  ;; Added by Myrosia during LAM extension
  :words (w::subtraction w::differentiation w::multiplication
			 w::simplification w::constant
			 )
  )


;; Scientific (only math so far) disciplines
;; adding words for caloy3-test-data
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::Science-discipline) 
	    (templ mass-pred-templ)
	    (meta-data :origin lam :entry-date 20050420 :change-date nil :comments lam-initial)
	    ))
  ;; Added by Myrosia during LAM extension
  :words (w::algebra w::calculus w::mathematics w::math w::physics w::linguistics (w::computer w::science) w::engineering w::biochemistry)
	  
  )

;; adding synonyms for concepts in the joust demo to demonstrate lexical choice
(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::hole) 
	    (templ count-pred-templ)
	    (example "there is a hole in front of the robot")
	    (meta-data :origin joust :entry-date 20091118 :change-date nil :comments joust-demo)
	    ))
  :words (w::cavity w::pit w::pothole)	  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::package) 
	    (templ count-pred-templ)
	    (example "do not pick up red packages")
	    (meta-data :origin joust :entry-date 20091118 :change-date nil :comments joust-demo)
	    ))
  :words (w::packet w::parcel)	  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::nationality-val) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::american w::asian (w::north w::american) (w::south w::american) w::russian w::german w::foreigner w::italian w::european w::korean w::australian w::indian w::serbian w::pakistani w::hindu)
	  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::nonhuman-animal) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::antelope w::cat w::dog w::hound w::wolf w::beaver w::bison w::boar w::buffalo w::fox w::goat w::horse w::cow w::pig w::lion w::tiger w::bear w::kitten w::puppy W::MUSKRAT W::OPOSSUM W::RABBIT w::hare W::RACCOON W::SQUIRREL w::chipmunk (w::polar w::bear) w::walrus (W::RINGED W::SEAL)(W::BOWHEAD W::WHALE) w::seal (w::sea w::lion) w::elephant w::camel w::llama w::giraffe w::whale w::porpise w::narwhal (w::beluga w::whale) w::panda w::terrier w::bat w::mouse w::rat w::ape w::monkey w::raccoon w::skunk w::hyena)  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::reptile) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::snake w::reptile w::lizard w::turtle w::tortise w::terrapin w::crocodile w::alligator)  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::bird) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::bird w::hen w::rooster (W::HORNED W::OWL) w::owl w::eagle w::hawk w::robin w::cardinal w::seagull w::chicken w::penguin w::hummingbird)  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::amphibian) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::frog w::toad w::salamander w::newt)  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::animal) 
	    (templ count-pred-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::arachnid w::spider)  
  )

(define-list-of-words :pos w::N 
  :senses (((LF-parent ONT::insect) 
	    (templ count-pred-templ)
	    (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3)
	    ))
  :words (w::bee w::insect w::mosquito w::ant w::roach w::gnat w::flea w::wasp)  
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Nouns added for FoodKB from Ben Snider

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::eater)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::CARNIVORE w::vegetarian w::omnivore w::vegan))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FATS-OILS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::LARD W::SHORTENING W::MARGARINE w::butter w::ghee))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CHEESE)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (w::cheese W::CURD))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CHEESE)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::BRIE W::CAMEMBERT W::CHEDDAR W::CHESHIRE W::COLBY (W::COTTAGE W::CHEESE) (W::CREAM W::CHEESE) W::EDAM W::FETA W::FONTINA W::GJETOST W::GOUDA W::GRUYERE W::LIMBURGER W::MOZZARELLA W::MUENSTER W::NEUFCHATEL W::PARMESAN (W::PORT W::DE W::SALUT) W::PROVOLONE W::RICOTTA W::ROMANO W::ROQUEFORT W::SWISS W::TILSIT W::PIMENTO (W::BLUE W::CHEESE) (w::bleu w::cheese) w::parmesan))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PRESERVATIVES)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words ((W::DI W::SODIUM W::PHOSPHATE) (W::ASCORBIC W::ACID) (W::LINOLEIC W::ACID) (W::SODIUM W::CITRATE)))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MILK)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::WHEY W::CREAM W::MILK (W::SOUR W::CREAM) (W::HALF W::AND W::HALF) W::BUTTERMILK))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SWEETS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
 :words (w::syrup w::fudge w::chocolate (w::ice w::cream))
)

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SWEETS)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words ( (W::CANDIED W::FRUIT) W::DESSERT w::cobbler W::CUSTARD W::PUDDING (W::FRUIT W::LEATHER) (W::GRANOLA W::BAR) (W::TOOTSIE W::ROLL) (W::CANDY W::BAR) (W::CHERRY W::BITES) W::BUTTERSCOTCH W::CARAMEL (w::chocolate w::chip)  W::GUMDROP w::candy W::JELLYBEAN W::MARSHMALLOW W::HALAVAH))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::YOGURT)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::YOGURT))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEAT-OTHER)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words ( W::BEERWURST W::BOCKWURST W::BOLOGNA W::CHORIZO W::KIELBASA W::KNACKWURST W::MORTADELLA  W::PASTRAMI W::PEPPERONI W::SALAMI W::SPAM W::LIVERWURST W::CERVELAT w::bacon))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEAT-OTHER)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words ( W::BRATWURST W::FRANKFURTER W::PATE W::PEPPERONI W::SALAMI W::SAUSAGE  W::WIENER W::FRANK))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SPICES-HERBS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::ALLSPICE W::BASIL  W::CARDAMOM W::CHERVIL W::CINNAMON W::CLOVE w::curry  w::dill (W::DILL W::WEED) W::GARLIC W::GINGER w::jasmine W::MACE W::MARJORAM  W::NUTMEG W::OREGANO W::PAPRIKA W::PARSLEY W::PEPPER  W::ROSEMARY W::SAFFRON W::SAGE w::salt W::SAVORY W::TARRAGON W::THYME W::TURMERIC W::PEPPERMINT W::SPEARMINT W::FIREWEED (W::MASHU W::ROOT) (W::TUNDRA W::HERB)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SPICES-HERBS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::MESQUITE (W::ANISE W::SEED )(W::CARAWAY SEED) (W::CELERY W::SEED) (W::CORIANDER W::SEED)
		  (W::DILL W::SEED)  (W::MUSTARD W::SEED)  (W::POPPY W::SEED) (W::FENNEL W::SEED) (W::FENUGREEK W::SEED)
		      )
  )
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SPICES-HERBS)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (w::herb W::TRUFFLE w::seasoning w::spice))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CONDIMENTS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::MUSTARD w::vinegar W::HORSERADISH W::CATSUP w::ketchup W::MAYO W::MAYONNAISE W::WASABI W::CHOWCHOW (W::SOY W::SAUCE) (W::TARTAR W::SAUCE)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CONDIMENTS)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (w::condiment w::jam w::jelly w::pickle w::pimento w::pimiento W::MUSHROOM W::PEPPER W::TOMATILLO W::HONEY W::SALSA (W::BANANA W::PEPPER) (W::SERRANO W::PEPPER) (W::ANCHO W::PEPPER) (W::HUNGARIAN W::PEPPER) (W::PASILLA W::PEPPER)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::INGREDIENTS)
	    (syntax (W::morph (:forms (-none))))
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words ((W::VANILLA W::EXTRACT) (W::SOY W::MILK) (W::SOY W::PROTEIN W::CONCENTRATE) (W::SOY W::PROTEIN W::ISOLATE) W::DOUGH W::PECTIN (W::YEAST W::EXTRACT) (W::VITAL W::WHEAT W::GLUTEN) (W::ACESULFAME W::POTASSIUM) W::ASPARTAME (W::BAKER^S W::YEAST) (W::BAKING W::POWDER) (W::BAKING W::SODA) (W::CALCIUM W::PROPIONATE) (W::CORN W::SWEETNER) (W::CREAM W::OF W::TARTAR) W::OLESTRA W::SACCHARIN))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BEANS-PEAS)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (w::bean W::ADZUKI W::YOKAN (W::GREAT W::NORTHERN W::BEAN) (W::KIDNEY W::BEAN) (W::NAVY W::BEAN) (W::PINK W::BEAN) (W::PINTO W::BEAN) (W::YELLOW W::BEAN) (W::WHITE W::BEAN) W::BROADBEAN (W::FAVA W::BEAN) W::CHICKPEA (W::GARBANZO W::BEAN) W::COWPEA W::CATJANG W::BLACKEYE (W::SOUTHERN W::PEA) W::CROWDER (W::HYACINTH W::BEAN) W::LENTIL (W::LIMA W::BEAN) W::LUPIN W::MOTHBEAN (W::MUNG W::BEAN) w::pea (W::SPLIT W::PEA) W::SOYBEAN (W::YARDLONG W::BEAN) (W::WINGED W::BEAN)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BEANS-PEAS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::NATTO W::MISO W::TEMPEH w::tofu))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEALS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::BABYFOOD (w::baby W::FORMULA) W::SUCCOTASH))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEALS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (w::carryout w::carry-out w::takeaway w::take-away W::takeout w::take-out))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEALS)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words ((w::ceasar w::salad) w::reuben w::sandwich w::salad))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CRACKERS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::ZWIEBACK W::CRISPBREAD W::MATZO (W::ORIENTAL W::MIX) W::POPCORN (W::TRAIL W::MIX)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CRACKERS)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::CRACKER W::SALTINE (W::GRAHAM W::CRACKER) (W::MELBA W::TOAST) (W::RUSK W::TOAST) W::CORNNUT W::PRETZEL W::CHIP))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::DRESSINGS-SAUCES-COATINGS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::SAUCE W::GRAVY w::dressing w::relish (W::THOUSAND W::ISLAND) w::vinaigrette W::RANCH W::BATTER W::BEARNAISE W::STROGANOFF (W::TERIYAKI W::SAUCE) (W::AU W::JUS) (W::MOLE W::POBLANO) W::SOFRITO (W::SOUR W::CREAM) W::BARBECUE w::barbeque W::HOLLANDAISE W::HOISIN (W::ADOBO W::FRESCO) W::WORCESTERSHIRE W::ALFREDO W::CAESAR (W::GREEN W::GODDESS) (W::SWEET W::AND W::SOUR)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CHICKEN)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::CHICKEN (w::guinea w::hen)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CHICKEN)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::BROILER W::FRYER (W::CORNISH W::GAME W::HEN)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::DUCK)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::duck))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::GOOSE)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::GOOSE (W::FOIE W::GRAS)))


(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PHEASANT)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::PHEASANT))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::QUAIL)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::QUAIL))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PIGEON)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::SQUAB))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::LAMB)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::LAMB W::FORESHANK))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BEEF)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (w::steak W::SHORTRIB (W::SHANK W::CROSSCUT) (W::T W::BONE W::STEAK) (w::tbone w::steak) (w::hanger w::steak) (W::PORTERHOUSE W::STEAK) (W::BREAKFAST W::STRIP) (W::ARM W::POT W::ROAST) (W::SKIRT W::STEAK)))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BEEF)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words ( W::BEEF W::VEAL W::CHUCK W::BRISKET (W::BOTTOM W::SIRLOIN W::BUTT) (W::TRI W::TIP) (W::BLADE W::ROAST) (W::FLAT W::HALF) W::FLANK (W::RIB W::EYE) (W::FULL W::CUT) (W::TIP W::ROUND) (W::TOP W::ROUND) (W::SHORT W::LOIN) W::TENDERLOIN (W::TOP W::SIRLOIN) W::SUET W::THYMUS W::TRIPE  (W::CORNED W::BEEF) (W::BOTTOM W::ROUND) (W::EYE W::OF W::ROUND) (W::GROUND W::BEEF) (W::TRI W::TIP W::ROAST) (W::BOTTOM W::SIRLOIN) (W::TOP W::BLADE) (W::BEEF W::JERKY)))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::TURKEY)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::TURKEY (W::YOUNG W::TOM)))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::EMU)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::EMU))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PORK)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::PORK W::HAM W::BACON))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::OSTRICH)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::OSTRICH))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::food)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::egg w::omlet w::omelet))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SOUP)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (w::bisque w::bouillon w::broth w::chowder w::gumbo w::soup w::stew))
	   
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SOUP)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words ((W::BEAN W::WITH W::HAM) (W::BEEF W::NOODLE) (W::CREAM W::OF W::CELERY) (W::CHICKEN W::WITH W::DUMPLINGS) (W::CREAM W::OF W::CHICKEN) (W::CHICKEN W::GUMBO) (W::CHICKEN W::NOODLE) (W::CHICKEN W::RICE) (W::CHICKEN W::WITH W::RICE) (W::CHICKEN W::VEGETABLE) (W::CHILI W::BEEF) (W::CLAM W::CHOWDER) (W::MANHATTAN W::CLAM W::CHOWDER) W::GAZPACHO (W::LENTIL W::WITH W::HAM) W::MINESTRONE (W::MUSHROOM W::BARLEY) (W::CREAM W::OF W::MUSHROOM)  (W::CREAM W::OF W::ONION) W::PEPPERPOT (W::CREAM W::OF W::POTATO) (W::SCOTCH W::BROTH) (W::CREAM W::OF W::SHRIMP) W::STOCKPOT (W::TOMATO W::BEEF W::WITH W::NOODLE) (W::TOMATO W::RICE) (W::TURKEY W::NOODLE) (W::TURKEY W::VEGETABLE) (W::VEGETARIAN W::VEGETABLE) (W::VEGETABLE W::BEEF)  (W::BEAN W::WITH W::BACON) W::OXTAIL (W::CREAM W::OF W::VEGETABLE) (W::GARDEN W::VEGETABLE) (W::BEEF W::MUSHROOM) (W::CHICKEN W::MUSHROOM)  (W::SHARK W::FIN) (W::BEAN W::AND W::HAM) (W::CREAM W::OF W::ASPARAGUS) (W::RAMEN W::NOODLE) (W::BROCCOLI W::CHEESE) (W::SPLIT W::PEA W::WITH W::HAM)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FRUIT)	    
	    (TEMPL COUNT-PRED-TEMPL)
	    (preference .92)
	    )
	   )
  :words (W::ACEROLA W::APPLE W::APRICOT W::BLACKBERRY w::blueberry W::BOYSENBERRY W::BREADFRUIT W::CARAMBOLA W::STARFRUIT W::CARISSA W::CHERIMOYA W::CHERRY W::CRABAPPLE W::CRANBERRY W::CURRANT W::CUSTARD-APPLE W::DATE W::ELDERBERRY W::FIG W::GOOSEBERRY W::GRAPE W::GROUNDCHERRY W::GUAVA W::JACKFRUIT W::JUJUBE W::KIWI W::KUMQUAT W::LEMON W::LITCHI W::LOGANBERRY W::LONGAN W::MAMMY-APPLE W::MANGO W::MANGOSTEEN W::MELON W::FRUIT W::MULBERRY W::NECTARINE W::OHELOBERRY W::OLIVE (W::ORANGE W::PELL) W::TANGERINE W::PAPAYA (W::PASSION W::FRUIT) W::PEACH W::PERSIMMON W::PINEAPPLE W::PITANGA W::PLANTAIN W::PLUM W::POMEGRANATE (W::PRICKLY W::PEAR) W::PRUNE W::PUMMELO W::QUINCE W::RAISIN W::RAMBUTAN W::RASPBERRY W::RHUBARB W::ROSELLE W::ROSE-APPLE W::SAPODILLA W::SAPOTE W::SOURSOP W::STRAWBERRY (W::SUGAR w::APPLE) (w::java w::plum) W::TAMARIND W::WATERMELON (W::MARASCHINO W::CHERRY) W::FEIJOA W::DURIAN W::ABIYUCH W::ROWAL  (W::THOMPSON W::SEEDLESS W::GRAPE) (W::MANDARIN W::ORANGE) (W::VALENCIA W::ORANGE) (W::NAVEL W::ORANGE) W::GOOSEBERRY (W::CAPE W::GOOSEBERRY) W::CANTALOUPE W::CASABA W::HONEYDEW  (W::MEDJOOL W::DATE)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FRUIT)	    
	    (TEMPL mass-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::Applesauce))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PRODUCE) ;; need a different category here
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::SPEAR W::PEEL W::STALK W::COB W::KERNEL W::POD W::RIND))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::VEGETABLE)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (w::veggie  w::sprout  W::CHIVE W::ARROWHEAD W::ARTICHOKE (W::BALSAM W::PEAR) (W::BAMBOO W::SHOOT) W::BEET (W::HARVARD W::BEET) (W::PICKLED W::BEET) (W::BRUSSELS W::SPROUT) W::BURDOCK W::CABBAGE W::CASSAVA W::CHAYOTE  W::COWPEA W::EGGPLANT W::GOURD (W::JERUSALEM W::ARTICHOKE) (W::MOUNTAIN W::YAM) W::MUSHROOM W::ONION W::PEPPER (W::POKEBERRY W::SHOOT) W::PUMPKIN W::RADISH W::RUTABAGA (W::SWAMP W::CABBAGE) W::SHOOT w::fern W::TURNIP W::VEGETABLE W::WATERCHESTNUT W::WAXGOURD W::YAM W::SHALLOT W::CARDOON (W::HEART W::OF W::PALM) (W::BUTTERNUT W::SQUASH) (W::SAVOY W::CABBAGE) (W::CHINESE W::CABBAGE) (W::CHRYSANTHEMUM W::GARLAND) W::HORSERADISH W::TOWELGOURD (W::DISHCLOTH W::GOURD) (W::PORTABELLA W::MUSHROOM) (W::HAWAII W::MOUNTAIN W::YAM) (W::BROWN W::MUSHROOM) (W::ITALIAN W::MUSHROOM) (W::CRIMINI W::MUSHROOM) (W::SHIITAKE W::MUSHROOM) (W::SPRING W::ONION) W::SCALLION (W::SWEET W::ONION) (W::HOT W::CHILI W::PEPPER) (W::SWEET W::PEPPER) W::RADISH (W::SUMMER W::SQUASH) (W::CROOKNECK W::SUMMER W::SQUASH) W::ZUCCHINI (W::ACORN W::SQUASH) (W::WINTER W::SQUASH) (W::BUTTERNUT W::SQUASH) (W::HUBBARD W::SQUASH) (W::SPAGHETTI W::SQUASH) (W::SKUNK W::CABBAGE) W::JALAPENO W::ENOKI (W::FENNEL W::BULB) (W::CLOUD W::EAR) W::SOURDOCK
W::LEEK W::LENTIL W::LETTUCE  W::PARSNIP W::SQUASH (W::FIDDLEHEAD W::FERN)(W::NAPA W::CABBAGE)(W::ICEBURG W::LETTUCE) (W::RED W::LEAF W::LETTUCE) W::NOPAL
  ))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::VEGETABLE)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::ASPARAGUS W::BROCCOLI (W::BROCCOLI W::RABE) W::BUTTERBUR W::CAULIFLOWER W::CELERIAC W::CELERY W::CELTUCE W::CHARD W::CHICORY W::CHRYSANTHEMUM W::CORIANDER W::CILANTRO W::CORN W::CORNSALAD W::CRESS W::DANDELION W::ENDIVE w::escarole W::GARLIC (W::GINGER W::ROOT) (W::JEW^S W::EAR) W::JUTE (W::POTHERB W::JUTE) W::KALE W::KANPYO W::KOHLRABI W::LAMBSQUARTER  (W::LOTUS W::ROOT) w::mustard W::OKRA  W::POI (W::PUMPKIN W::FLOWER)  W::PURSLANE W::SALSIFY W::SAUERKRAUT W::SEAWEED (W::SESBANIA W::FLOWER) W::SPINACH  W::TARO  (W::SWISS W::CHARD) W::WITLOOF W::CHICORY W::VINESPINACH W::WATERCRESS W::BORAGE W::DOCK W::EPPAW W::ARROWROOT W::FENNEL W::ARUGULA (W::LEMON W::GRASS)  W::EPAZOTE W::FIREWEED (W::MALABAR W::SPINACH) W::YAUTIA  W::TAPIOCA W::ROMAINE  W::SEAWEED W::AGAR (W::IRISH w::MOSS) W::KELP W::LAVER (W::WHOLE W::KERNEL W::CORN) W::SPIRULINA W::WAKAME))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MINERALS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::CALCIUM (W::CALCIUM W::PHOSPHORUS) (W::CALCIUM W::SULFATE) w::magnesium (W::MAGNESIUM W::CHLORIDE) w::iron W::PHOSPHORUS W::POTASSIUM (w::potassium w::chloride) w::silicon W::SODIUM))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::VITAMINS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (w::niacin (W::VITAMIN W::A) (W::VITAMIN W::B)  (W::VITAMIN W::C)  (W::VITAMIN W::D)  (W::VITAMIN W::E)  (W::VITAMIN W::K) (W::PANTOTHENIC W::ACID) (W::VITAMIN W::B W::TWELVE) (W::VITAMIN W::B W::SIX)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::VITAMINS)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (w::vitamin w::multivitamin))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::vegetable)
	    (TEMPL mass-PRED-3p-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (w::greens W::COLLARDS))


(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::JUICE)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::JUICE))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::JUICE)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::JUICE))


(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::TEAS-COCKTAILS-BLENDS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words ((W::ICE W::TEA) (w::iced w::tea) w::nectar w::punch  W::LIMEADE W::LEMONADE (W::HERB W::TEA) (W::HERBAL W::TEA)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::TEAS-COCKTAILS-BLENDS)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  ;; moving w::tea to ont::tea for CAET
  :words ((W::ICE W::TEA) (w::iced w::tea) w::cocktail W::LIMEADE W::LEMONADE ;;w::tea 
	  (W::HERB W::TEA) (W::HERBAL W::TEA)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BEVERAGES)
	    (TEMPL MASS-PRED-TEMPL)
	    (SEM (F::form F::liquid))
	    )
	   )
  :words (W::COCOA 
	  ;;w::coffee -- moving w::coffee to ont::coffee for CAET
	  W::ESPRESSO w::cappuccino w::latte W::GELATIN W::TANG W::CHILCHEN  (W::FLUID W::REPLACEMENT) (W::ELECTROLYTE W::SOLUTION) W::CIDER w::eggnog))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BEVERAGES)
	    (TEMPL count-PRED-TEMPL)
	    (SEM (F::form F::liquid))
	    )
	   )
  :words (w::beverage w::coffee W::ESPRESSO w::cappuccino w::latte W::SHAKE  W::TANG W::CHILCHEN  (W::FLUID W::REPLACEMENT) (W::ELECTROLYTE W::SOLUTION) W::CIDER w::eggnog))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SODA)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words ((W::CLUB W::SODA) (W::CREAM W::SODA) (W::GINGER W::ALE) (W::CARBONATED W::BEVERAGE) (w::carbonated w::water) W::COLA w::coke (W::ENERGY W::DRINK) (W::TONIC W::WATER) w::tonic w::soda (W::ROOT W::BEER) (W::SOFT W::DRINK) w::pop))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::ALCOHOL)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::ALCOHOL W::SAKE w::wine w::gin w::liquor w::rum w::tequila w::vodka w::whisky w::whiskey w::beer (w::draft w::beer) w::microbrew))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::ALCOHOL)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::BEER  (w::draft w::beer) w::microbrew W::DAIQUIRI  W::MARTINI (W::PINA W::COLADA) (W::TEQUILA W::SUNRISE) (W::WHISKEY W::SOUR) (W::CREME W::DE W::MENTHE) W::LIQUEUR  W::LIQUEUR))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PASTA)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::PASTA))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::PASTA)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::NOODLE))

;; food words with no morphology
(define-words :pos W::n :templ MASS-PRED-TEMPL
 :words (
  (w::rice
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("rice%1:13:00") :comments nil)
     (LF-PARENT ont::grains)
     )
    )
   )
  ((w::wild w::rice)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("wild_rice%1:13:00" "wild_rice%1:20:00") :comments nil)
     (LF-PARENT ont::grains)
     )
    )
   )
  (w::macaroni
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("macaroni%1:13:00") :comments nil)
     (LF-PARENT ont::pasta)
     )
    )
   )
  (w::soba
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :comments nil)
     (LF-PARENT ont::pasta)
     )
    )
   )
  (w::ramen
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :comments nil)
     (LF-PARENT ont::pasta)
     )
    )
   )
  (w::spaghetti
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("spaghetti%1:13:01" "spaghetti%1:13:00") :comments nil)
     (LF-PARENT ont::pasta)
     )
    )
   )
  ((w::chow w::mein)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("chow_mein%1:13:00") :comments nil)
     (LF-PARENT ont::pasta)
     )
    )
   )
  (w::octopus
   (wordfeats (W::morph (:forms (-S-3P) :plur w::octopi)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("octopus%1:13:00") :comments nil)
     (LF-PARENT ont::mollusks)
     )
    )
   )
   ((w::tipnuk w::salmon)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::tipnuk w::salmon))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
   ((w::coho w::salmon)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::coho w::salmon))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("coho_salmon%1:13:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
   ((w::pink w::salmon)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::pink w::salmon))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
    ((w::chinook w::salmon)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::chinook w::salmon))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("chinook_salmon%1:13:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
    ((w::sockeye w::salmon)
   (wordfeats (W::morph (:forms (-S-3P) :plur (w::sockeye w::salmon))))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("sockeye_salmon%1:13:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
   (w::salmon
   (wordfeats (W::morph (:forms (-S-3P) :plur w::salmon)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("salmon%1:05:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
   (w::chum
   (wordfeats (W::morph (:forms (-S-3P) :plur w::chum)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("chum%1:05:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
   (w::sturgeon
   (wordfeats (W::morph (:forms (-S-3P) :plur w::sturgeon)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("sturgeon%1:05:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
  (w::fish
   (wordfeats (W::morph (:forms (-S-3P) :plur w::fish)))
   (SENSES
    ((meta-data :origin food-kb :entry-date 20050801 :change-date nil :wn ("fish%1:13:00") :comments nil)
     (LF-PARENT ont::fish)
     )
    )
   )
))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::NUTS-SEEDS)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::ACORN W::ALMOND w::aril W::BEECHNUT W::BRAZILNUT W::BUTTERNUT W::CASHEW w::nut w::chestnut W::HAZELNUT W::FILBERT (W::GINKGO W::NUT) (W::MACADAMIA w::nut) W::PEANUT W::PECAN W::PILINUT (W::CANARYTREE W::PILINUT) (W::PINE W::NUT) w::pinenut W::PINYON w::pinion W::PISTACHIO W::WALNUT w::seed w::kernel (W::SESAME W::SEED)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::NUTS-SEEDS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::SAFFLOWER W::SUNFLOWER W::PALM W::POPPYSEED W::TOMATOSEED W::TEASEED W::GRAPESEED W::BABASSU W::SHEANUT W::CUPUASSU W::COCONUT W::CANOLA (W::SISYMBRIUM W::SEED) W::TAHINI W::FLAXSEED))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SALTWATER-fish)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words ( W::COD W::MENHADEN W::HERRING W::SARDINE W::ANCHOVY W::BLUEFISH W::BUTTERFISH w::croaker W::CUSK W::DOLPHINFISH W::FLATFISH W::FLOUNDER W::SOLE W::GROUPER W::HADDOCK W::HALIBUT W::LINGCOD W::MACKEREL (W::JACK W::MACKEREL) (W::KING W::MACKEREL) (W::SPANISH W::MACKEREL) W::MILKFISH W::MONKFISH W::MULLET (W::STRIPED W::MULLET) (W::OCEAN W::PERCH) (W::ATLANTIC W::OCEAN W::PERCH) W::POUT (W::OCEAN W::POUT) W::POLLOCK (W::WALLEYE W::POLLOCK) (W::FLORIDA W::POMPANO) W::ROCKFISH W::ROUGHY (W::ORANGE W::ROUGHY) W::SABLEFISH W::SCUP (W::SEA W::BASS) W::SEATROUT W::SHARK W::SHEEPSHEAD W::SNAPPER W::SUNFISH W::SWORDFISH W::TILEFISH W::TUNA  (W::BLUEFIN W::TUNA) (W::SKIPJACK W::TUNA) (W::YELLOWFIN W::TUNA) W::TURBOT (W::EUROPEAN W::TURBOT) W::WHITING W::WOLFFISH  W::YELLOWTAIL W::BLACKFISH W::DEVILFISH W::HERRING (W::SEA W::CUCUMBER) W::WHITEFISH W::JELLYFISH))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::SALTWATER-fish)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words ( W::CAVIAR w::roe))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FISH)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::SMELT (W::RAINBOW W::SMELT)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FRESHWATER-fish)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::BASS W::BURBOT W::CARP W::CATFISH (W::CHANNEL W::CATFISH) W::CISCO W::DRUM W::EEL W::LING W::PERCH W::PIKE (W::NORTHERN W::PIKE) (W::WALLEYE W::PIKE) W::SHAD (W::AMERICAN W::SHAD) W::SUCKER W::TROUT (W::RAINBOW W::TROUT) W::WHITEFISH))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CRUSTACEANS)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::CRAB (W::ALASKA W::KING W::CRAB) (W::DUNGENESS W::CRAB) (W::QUEEN W::CRAB) W::CRAYFISH W::LOBSTER (W::NORTHERN W::LOBSTER) W::SHRIMP (W::SPINY W::LOBSTER)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MOLLUSKS)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::ABALONE W::CLAM W::CUTTLEFISH W::MUSSEL (W::BLUE W::MUSSEL) W::OYSTER (W::EASTERN W::OYSTER) (W::PACIFIC W::OYSTER) W::SQUID W::WHELK W::CONCH W::CHITON W::COCKLE W::SCALLOP W::SNAIL W::SHELL))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::GAME)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::BEEFALO W::OOPAH W::VENISON))
		      
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEAT)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (W::MEAT W::VEAL (W::BONE W::MARROW) W::MUTTON))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::MEAT)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::FILLET (W::RUMP W::HALF) (W::SHANK W::HALF) W::BLADE W::TENDERLOIN W::SIRLOIN W::SPARERIBS W::CHITTERLING W::JOWL W::KIDNEY W::PATTY  W::BACKRIB W::CHOP W::ROAST W::LOIN (W::SIRLOIN W::HALF) (W::COLD W::CUT)  W::FLIPPER))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::POULTRY)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::GIBLET W::GIZZARD W::DRUMSTICK))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BAGELS-BISCUITS)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (W::BAGEL W::BISCUIT  (W::ENGLISH W::MUFFIN) W::MUFFIN  w::crepe W::PANCAKE W::ROLL (W::DINNER W::ROLL) (W::FRENCH W::ROLL) (W::KAISER W::ROLL)))
(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BREAD)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words ((W::BANANA W::BREAD) W::CORNBREAD W::BREAD W::STUFFING))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BREAD)
	    (syntax (W::morph (:forms (-none))))
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words ((W::BOSTON W::BROWN W::BREAD) W::SOURDOUGH (W::CRACKED W::WHEAT W::BREAD) (W::FRENCH W::BREAD) (W::VIENNA W::BREAD) (W::IRISH W::SODA W::BREAD) W::PUMPERNICKEL (W::FRENCH W::TOAST)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::BREAD)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::PITA W::CRUMB W::CROISSANT W::CROUTON (W::HUSH W::PUPPY) W::TORTILLA W::WAFFLE  W::DUMPLING W::CRUST))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::COOKIES)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words ((W::ANIMAL W::CRACKER) W::BROWNIE W::WAFER  W::MACAROON (W::FIG W::BAR) w::cooky (W::FORTUNE W::COOKIE) W::COOKIE W::GINGERSNAP (W::GRAHAM W::CRACKER) W::LADYFINGER (w::lady w::finger) W::SHORTBREAD))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CAKE-PIE)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words (W::GINGERBREAD (W::PUFF w::pastry)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::CAKE-PIE)
	    (TEMPL count-PRED-TEMPL)
	    )
	   )
  :words (W::CAKE (W::BOSTON W::CREAM W::PIE)  (w::angelfood w::cake) (w::german w::chocolate w::cake)  (W::UPSIDE W::DOWN W::CAKE) W::COFFEECAKE  W::FRUITCAKE (W::POUND W::CAKE) W::SHORTCAKE (W::SPONGE W::CAKE) W::CHEESECAKE (W::CREME W::PUFF) (w::cream w::puff) W::ECLAIR W::DANISH w::pie w::tart))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::GRAINS)
	    (TEMPL MASS-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (w::grain W::AMARANTH (W::ARROWROOT W::FLOUR) W::BARLEY (W::PEARLED W::BARLEY) W::BUCKWHEAT (W::BUCKWHEAT GROATS) (W::BUCKWHEAT W::FLOUR) w::rye (W::WHOLE W::GROAT W::BUCKWHEAT W::FLOUR) W::BULGUR w::bran w::flour  W::CORNMEAL  W::CORNSTARCH W::COUSCOUS W::HOMINY W::MILLET  w::masa W::QUINOA W::SEMOLINA W::SORGHUM W::TAPIOCA (W::PEARL W::TAPIOCA) W::TRITICALE W::WHEAT (W::HARD W::RED W::SPRING W::WHEAT) (W::HARD W::RED W::WINTER W::WHEAT) (W::SOFT W::RED W::WINTER W::WHEAT) (W::DURUM W::WHEAT)  w::rice (W::WHEAT W::GERM)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FAST-FOOD)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (w::hamburger w::burger w::fry (w::french w::fry) w::pizza w::cheeseburger (w::quarter w::pounder) (w::big w::mac)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::cereals)
	    (TEMPL mass-PRED-TEMPL)
	    (syntax (W::morph (:forms (-none))))
	    )
	   )
  :words (w::farina w::oatmeal w::wheaties (w::cream w::of w::wheat) (w::cream w::of w::rice)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::FAST-FOOD)
	    (TEMPL MASS-PRED-TEMPL)
	    )
	   )
  :words ((W::FAST W::FOOD)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::food-prep-PROCESS)
	    (syntax (W::morph (:forms (-none))))
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words ((W::ACID W::WASH) (W::ACTIVE W::DRY)))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::professional)
	    (TEMPL COUNT-PRED-TEMPL)
	    )
	   )
  :words (w::carpenter w::bricklayer w::painter w::laborer w::contractor w::roofer w::cleaner w::janitor w::electrician w::plumber w::secretary))

(define-list-of-words :pos W::n
  :senses (
	   ((LF-PARENT ONT::event)
	    (TEMPL COUNT-PRED-TEMPL)
	    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
	    )
	   )
  ;; crack of the whip, crack of dawn
  :words (w::crack w::break w::breakup
;		   (w::break w::up)
		   w::breather
		  ;; w::pause
		   ;;w::disappointment
;		   (w::get w::together)
		   w::heartache w::heartbreak
;		   (w::meet w::up)
		   w::romance w::tragedy w::recession
	;	   w::recovery
		   w::secretion )) 

;; new words for task learning
(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::address
   (SENSES
    ((LF-PARENT ONT::location-id)
     (EXAMPLE "put the address on the package")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("address%1:10:02") :comments nil)
     )
    )
   )
  (W::subaddress 
   (SENSES
    ((LF-PARENT ONT::location-id) ;; should use a different lf to distinguish from standard w::address
     (EXAMPLE "what is the contact record subaddress")
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     )
    )
   )
  (W::zipcode
   (SENSES
    ((LF-PARENT ONT::zipcode)
     (EXAMPLE "rain is forecast for this zipcode")
     (meta-data :origin task-learning :entry-date 20051109 :change-date nil :comments nil)
     )
    )
   )
  ((W::zip w::code)
    (wordfeats (W::morph (:forms (-S-3P) :plur (W::zip W::codes))))
   (SENSES
    ((LF-PARENT ONT::zipcode)
     (EXAMPLE "rain is forecast for this zipcode")
     (meta-data :origin task-learning :entry-date 20051109 :change-date nil :wn ("zip_code%1:10:00") :comments nil)
     )
    )
   )

  (W::calendar
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "publish the new calendar")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("calendar%1:10:01") :comments nil)
     )
    )
   )
  (W::library
   (SENSES
    ((LF-PARENT ONT::reference-work)
     (EXAMPLE "insert a song from your iTunes music library")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::pane
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "in the Tabs pane of Safari preferences")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::bookmark
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "You might have removed the bookmark from the bar")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::paragraph
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "Press the Return key to start a new paragraph")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("paragraph%1:10:00") :comments nil)
     )
    )
   )
  (W::favorite
   (SENSES
    ((LF-PARENT ONT::favorite)
     (EXAMPLE "Safari imports your favorites")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("favorite%1:09:00") :comments nil)
     )
    )
   )
  (W::topic
   (SENSES
    ((LF-PARENT ONT::content)
     (EXAMPLE "see help about the topic")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("topic%1:10:00") :comments nil)
     )
    )
   )
   (W::subject
   (SENSES
    ((LF-PARENT ONT::content)
     (EXAMPLE "this is the subject/the subject line will say this")
     (meta-data :origin plow :entry-date 20050901 :change-date nil :wn ("subject%1:10:00") :comments nil)
     )
    )
   )
  (W::mailbox
   (SENSES
    ((LF-PARENT ONT::small-container)
     (EXAMPLE "this removes clutter from your mailboxes")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("mailbox%1:06:00") :comments nil)
     )
    )
   )
  (W::slideshow
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "You can play your slideshow")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::column
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "there is no entry in the last column")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("column%1:14:01") :comments nil)
     )
    )
   )
  (W::row
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "Move to the beginning of the row")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("row%1:17:00") :comments nil)
     )
    )
   )
  (W::font
   (SENSES
    ((LF-PARENT ONT::font)
     (EXAMPLE "change the font")
     (meta-data :origin task-learning :entry-date 20050812 :change-date 20050926 :wn ("font%1:10:00") :comments nil)
     )
    )
   )
  (W::character
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "copy and paste the characters")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("character%1:10:00") :comments nil)
     )
    )
   )
  (W::content
   (SENSES
    ((LF-PARENT ONT::content)
     (EXAMPLE "Mail displays the contents of messages")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("content%1:14:00") :comments nil)
     )
    )
   )
  (W::binder
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "the notes are in the binder")
     (meta-data :origin calo-ontology :entry-date 20051213 :change-date nil :wn ("binder%1:06:01") :comments Office)
     )
    )
   )
  (W::folder
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "The message is moved to your deleted messages folder")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::border
   (SENSES
    ((LF-PARENT ONT::edge)
     (EXAMPLE "The border of the selected cell is highlighted")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("border%1:25:00") :comments nil)
     )
    )
   )
  (W::zone
   (SENSES
    ((LF-PARENT ONT::area-def-by-use)
     (EXAMPLE "see the iCal time zone")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("zone%1:15:01") :comments nil)
     )
    )
   )
  (W::auction
   (SENSES
    ((LF-PARENT ONT::gathering-event)
     (EXAMPLE "bid on things at an auction")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("auction%1:04:00") :comments nil)
     )
    )
   )
  (W::checkbox
   (SENSES
    ((LF-PARENT ONT::icon)
     (EXAMPLE "select the All-day_event checkbox")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::security
   (SENSES
    ((LF-PARENT ONT::confidentiality)
     (TEMPL MASS-PRED-TEMPL)
     (EXAMPLE "iCal includes security enhancements")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("security%1:26:00") :comments nil)
     )
    )
   )
  (W::shortcut
   (SENSES
    ((LF-PARENT ONT::shortcut)
     (EXAMPLE "let's take a shortcut")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("shortcut%1:06:00") :comments nil)
     )
    )
   )
  (W::script
   (SENSES
    ((LF-PARENT ONT::recipe)
     (EXAMPLE "run the script")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::tip
   (SENSES
    ((LF-PARENT ONT::information)
     (EXAMPLE "You can accomplish many tasks using these iCal tips and tricks")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("tip%1:10:00") :comments nil)
     )
    )
   )
  (W::junk
   (SENSES
    ((LF-PARENT ONT::mail)
     (EXAMPLE "Too much of my legitimate email is getting marked as junk")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :comments nil)
     )
    )
   )
  (W::spam
   (SENSES
    ((LF-PARENT ONT::email)
     (EXAMPLE "Too much of my legitimate email is getting marked as spam")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("spam%1:10:00") :comments nil)
     )
    )
   )
  (W::cookie
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "the site might create a cookie")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("cookie%1:10:00") :comments nil)
     )
    )
   )
  (W::hyperlink
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "click a hyperlink that opens a webpage")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("hyperlink%1:10:00") :comments nil)
     )
    )
   )
  (W::template
   (SENSES
    ((LF-PARENT ONT::template-info-object)
     (EXAMPLE "specify a default template")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("template%1:09:00") :comments nil)
     )
    )
   )
  (W::drawer
   (SENSES
    (;(LF-PARENT ONT::small-container) ; by analogy with 'box'
     (EXAMPLE "open the drawer")
     (lf-parent ont::drawer)
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("drawer%1:06:00") :comments nil)
     )
    )
   )
  (W::shadow
   (SENSES
    ((LF-PARENT ONT::light)
     (EXAMPLE "set the shadow's color")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("shadow%1:15:00") :comments nil)
     )
    )
   )
  (W::background
   (SENSES
    ((LF-PARENT ONT::image)
     (EXAMPLE "set the color of the background to blue")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("background%1:09:00" "background%1:06:01") :comments nil)
     )
    )
   )
  (W::recipient
   (SENSES
    ((LF-PARENT ONT::recipient)
     (EXAMPLE "send email to more than one recipient")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("recipient%1:18:00") :comments nil)
     )
    )
   )
  (W::IP
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "internet protocol")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :comments Office)
     )
    )
   )
  (W::telnet
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "telnet protocol")
     (meta-data :origin calo :entry-date 20051214 :change-date nil :comments html-purchasing-corpus)
     )
    )
   )
  (W::protocol
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "Kerberos is a network authentication protocol")
     (meta-data :origin task-learning :entry-date 20050812 :change-date 20050824 :wn ("protocol%1:10:01") :comments nil)
     )
    )
   )
  (W::header
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "Each message you receive has a detailed header section")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("header%1:10:00") :comments nil)
     )
    )
   )
  (W::format
   (SENSES
    ((LF-PARENT ONT::version)
     (EXAMPLE "choose the desired format")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("format%1:10:00") :comments nil)
     )
    )
   )
  (W::helper
   (SENSES
    ((LF-PARENT ONT::software-application) ; maybe person instead?
     (EXAMPLE "you can specify protocol helpers and file helpers")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :comments nil)
     )
    )
   )
  (W::bullet
   (SENSES
    ((LF-PARENT ONT::punctuation)
     (EXAMPLE "drag the bullet to the right")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :comments nil)
     )
    )
   )
  (W::proxy
   (SENSES
    ((LF-PARENT ONT::replacement)
     (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt W::for)))))
     (EXAMPLE "connect through a proxy server")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("proxy%1:18:00") :comments nil)
     )
    )
   )

  (W::theme
   (SENSES ; this is the common software usage
    ((LF-PARENT ONT::version) ; by analogy with style
     (EXAMPLE "change the theme of your slideshow")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :comments nil)
     )
    )
   )
  (W::axis
   (wordfeats (W::morph (:forms (-S-3P) :plur w::axes)))
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "position tick marks along axes")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("axis%1:09:00") :comments nil)
     (TEMPL other-reln-templ)
     )
    )
   )
  (W::attachment
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "send attachments to Mac users")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :comments nil)
     )
    )
   )
  (W::placeholder
   (SENSES
    ((LF-PARENT ONT::replacement)
     (templ other-reln-theme-templ (xp (% W::pp (W::ptype (? pt W::for)))))
     (EXAMPLE "add a placeholder box")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :comments nil)
     )
    )
   )
  (W::collection
   (SENSES
    ((LF-PARENT ONT::collection)
     (EXAMPLE "Explorer can import any collection of links")
     (meta-data :origin task-learning :entry-date 20050815 :change-date 20090520 :wn ("collection%1:14:00") :comments nil)
     )
    )
   )
  (W::ensemble
   (SENSES
    ((LF-PARENT ONT::collection)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date 20090520 :comments caloy3)
     )
    )
   )
  (W::history
   (SENSES
    ;; should be ont::time-span?
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "in all of human history" )
     (meta-data :origin cernl :entry-date 20110706 :change-date nil :wn ("history%1:28:00") :comments nil)
     (TEMPL mass-pred-templ)
     )
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE  "a history of success")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("history%1:10:00") :comments nil)
     (TEMPL other-reln-associated-info-count-templ (xp (% W::pp (W::ptype (? pt W::of w::with)))))
     (preference .98)
     )
    )
   )
  (W::subscription
   (SENSES
    ((LF-PARENT ONT::order)
     (TEMPL other-reln-templ (xp (% W::pp (W::ptype (? pt W::to)))))
     (EXAMPLE "which subscriptions have new content")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :comments nil)
     )
    )
   )
  (W::spelling
   (SENSES
    ((LF-PARENT ONT::encoding)
     (TEMPL other-reln-theme-templ (xp (% W::pp (W::ptype (? pt W::of)))))
     (EXAMPLE "check the spelling of that word")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("spelling%1:10:00") :comments nil)
     )
    )
   )
  (W::pronunciation
   (SENSES
    ((LF-PARENT ONT::encoding)
     (TEMPL other-reln-theme-templ (xp (% W::pp (W::ptype (? pt W::of)))))
     (EXAMPLE "what is the pronunciation of that word")
     (meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("pronunciation%1:10:00" "pronunciation%1:10:01") :comments nil)
     )
    )
   )
  (W::margin
   (SENSES
    ((LF-PARENT ONT::edge)
     (TEMPL other-reln-templ)
     (EXAMPLE "set the space between the left margin and the text")
     (meta-data :origin task-learning :entry-date 20050816 :change-date 20090217 :wn ("margin%1:25:00" "margin%1:10:00" "margin%1:07:00" "margin%1:21:01") :comments nil)
     )
    )
   )

  (W::sheet
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "specify attributes using a style sheet")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    ((lf-parent ont::sheet)
     (example "sheet of paper/ice") 
     (templ classifier-templ)
     (meta-data :origin plow :entry-date 20060802 :change-date nil :wn ("sheet%1:06:03") :comments weather)
     )
     ((lf-parent ont::bedding)
     (example "put the sheet on the bed") 
     (templ count-pred-templ)
     (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     )
    )
   )
  (W::frame
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "reload the frame in your browser")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    )
   )
  (W::viewer
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "open the mail viewer")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    )
   )
  (W::layout
   (SENSES
    ((LF-PARENT ONT::arranging)
     (TEMPL other-reln-theme-templ)
     (EXAMPLE "select the slide layout")
     (meta-data :origin task-learning :entry-date 20050816 :change-date 20090507 :wn ("layout%1:09:00") :comments nil)
     )
    )
   )
  (W::ruler
   (SENSES
    ((LF-PARENT ONT::information-function-object) ; maybe icon?
     (EXAMPLE "drag the indentation controls on the text ruler")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("ruler%1:06:00") :comments nil)
     )
    )
   )
  (W::scrapbook
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "add a clipping to the scrapbook")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("scrapbook%1:06:00") :comments nil)
     )
    )
   )
  (W::figure
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "she is watching her figure")
     (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     )
    )
   )
  (W::silhouette
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "a slender silhouette")
     (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     )
    )
   )
  (W::outline
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "print an outline of your slideshow")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("outline%1:10:00") :comments nil)
     )
    ((LF-PARENT ONT::shape-object) ; ??
     (EXAMPLE "change the style of the font to outline")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("outline%1:15:00") :comments nil)
     )
    )
   )
  (W::wedge
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "in a pie chart, the wedges represent the data series")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("wedge%1:25:00") :comments nil)
     )
    )
   )
  (W::product
   (SENSES
    ((LF-PARENT ONT::product)
     (EXAMPLE "The SOFTWARE PRODUCT may contain support for programs written in Java")
     (meta-data :origin task-learning :entry-date 20050816 :change-date 20070612 :wn ("product%1:06:00" "product%1:06:01") :comments nil)
     )
    ((LF-PARENT ONT::outcome)
     (meta-data :origin caloy4 :entry-date 20070713 :change-date nil :comments plowpqs)
     )
    )
   )
  (W::pie
   (SENSES
    ((LF-PARENT ONT::chart)
     (EXAMPLE "in a pie chart, the wedges represent the data series")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    )
   )
  (W::clipping
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "add a clipping to the scrapbook")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("clipping%1:10:00") :comments nil)
     )
    )
   )
  (W::notification
   (SENSES
    ((LF-PARENT ONT::announce)
     (EXAMPLE "send a notification message")
     (meta-data :origin task-learning :entry-date 20050816 :change-date 20090506 :wn ("notification%1:10:00") :comments nil)
     )
    )
   )
  (W::thread
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "view all the messages in an email thread")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    )
   )
  (W::mode
   (SENSES
    ((LF-PARENT ONT::status)
     (EXAMPLE "it's in training mode")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("mode%1:26:00") :comments nil)
     )
    )
   )
  (W::canvas
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "drag files to the canvas")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    )
   )
  (W::archive
   (SENSES
    ((LF-PARENT ONT::database)
     (EXAMPLE "open the archive")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("archive%1:06:00") :comments nil)
     )
    )
   )
  (W::parameter
   (SENSES
    ((LF-PARENT ONT::mathematical-term)
     (EXAMPLE "The first parameter specifies flora to place in the ground")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("parameter%1:11:00") :comments nil) ; applescript
     )
    )
   )
  (W::administrator
   (SENSES
    ((LF-PARENT ONT::professional)
     (EXAMPLE "the network administrator has the information you need")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :comments nil)
     )
    )
   )
  (W::extension
   (SENSES
    ((LF-PARENT ONT::part)
     (EXAMPLE "BinHex files use the .hqx file name extension")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("extension%1:10:00") :comments nil)
     )
    )
   )
  (W::sender
   (SENSES
    ((LF-PARENT ONT::communication-party)
     (templ other-reln-templ)
     (EXAMPLE "you can reply to the sender and all other recipients")
     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("sender%1:18:00") :comments nil)
     )
    )
   )
;  (W::insertion
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (EXAMPLE "Click to place the insertion point and begin typing")
;     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("insertion%1:04:00") :comments nil)
;     )
;    )
;   )
;  (W::distribution
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (EXAMPLE "terms and conditions for distribution follow")
;     (meta-data :origin task-learning :entry-date 20050816 :change-date nil :wn ("distribution%1:04:01" "distribution%1:04:00") :comments nil)
;     )
;    )
;   )
  (W::legend
   (SENSES
    ((LF-PARENT ONT::reference-work)
     (EXAMPLE "change the font for a chart legend")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("legend%1:10:00") :comments nil)
     )
    )
   )
  
  (W::dictionary
   (SENSES
    ((LF-PARENT ONT::reference-work)
     (EXAMPLE "add the word to the dictionary")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("dictionary%1:10:00") :comments nil)
     )
    )
   )
  (W::chooser
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "select a new theme in the Theme Chooser")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  (W::executable
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "run the executable")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  (W::opacity
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("opacity%1:07:00") :comments nil)
     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (TEMPL OTHER-RELN-TEMPL)
     (example "change the object's opacity")
     )
    )
   )
  (W::applet
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "run the applet")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("applet%1:10:00") :comments nil)
     )
    )
   )
  (W::reference
   (SENSES
    ((LF-PARENT ONT::information)
     (EXAMPLE "read the applescript reference")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("reference%1:10:04") :comments nil)
     )
    )
   )
  (W::organizer
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "Select the slide in the slide organizer")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  (W::presenter
   (SENSES
    ((LF-PARENT ONT::specialist)
     (EXAMPLE "customize what the presenter sees")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  ((W::tick w::mark)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::tick W::marks))))
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "add tick marks to the value axis")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  (W::profile
   (SENSES
    ((LF-PARENT ONT::database)
     (EXAMPLE "Enter the information you want to include in your profile")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("profile%1:10:01") :comments nil)
     )
    )
   )
  (W::pointer
   (SENSES
    ((LF-PARENT ONT::icon)
     (EXAMPLE "The pointer becomes a crosshair")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("pointer%1:06:01") :comments nil)
     (preference 0.98) ;; prefer device sense
     )
    ((LF-PARENT ONT::device)
     (EXAMPLE "make sure there is a laser pointer for the presentation")
     (meta-data :origin task-learning :entry-date 20060117 :change-date nil :comments nil)
     )
    )
   )
  (W::panel
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "use the Colors panel to select a color")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("panel%1:06:03") :comments nil)
     )
    )
   )
  (W::lock
   (SENSES
    ((LF-PARENT ONT::device)
     (EXAMPLE "a security header with a lock appears")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("lock%1:06:00") :comments nil)
     )
    )
   )
  (W::phrase
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "type a word or phrase in the box")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("phrase%1:10:00") :comments nil)
     )
    )
   )
  (W::assistant
   (SENSES
    ((LF-PARENT ONT::assistant)
     (EXAMPLE "Hi I'm your health care assistant")
     (meta-data :origin chf :entry-date 20070727 :change-date nil :wn ("assistant%1:18:00") :comments 20060808T1341)
     )
    )
   )
   (w::irregularity
   (SENSES
    ((meta-data :origin chf :entry-date 20070810 :change-date nil :comments nil :wn ("irregularity%1:04:00"))
     (LF-PARENT ONT::abnormality)
     )
    )
   )
   (w::abnormality
   (SENSES
    ((meta-data :origin chf :entry-date 20070810 :change-date nil :comments nil :wn ("abnormality%1:04:00"))
     (LF-PARENT ONT::abnormality)
     )
    )
   )
   
   (w::anomaly
   (SENSES
    ((meta-data :origin chf :entry-date 20070810 :change-date nil :comments nil)
     (LF-PARENT ONT::abnormality)
     )
    )
   )
;   (w::surprise
;   (SENSES
;    ((meta-data :origin chf :entry-date 20070810 :change-date nil :comments nil)
;     (LF-PARENT ONT::event)
;     )
;    )
;   )
   
;  (W::description
;   (SENSES
;    ((LF-PARENT ONT::information-function-object)     (EXAMPLE "enter the description")
;     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("description%1:10:01") :comments nil)
;     )
;    )
;   )
  (W::directory
   (SENSES
    ((LF-PARENT ONT::database)
     (EXAMPLE "An LDAP directory is a database used as an online reference...")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("directory%1:10:01" "directory%1:10:00") :comments nil)
     )
    )
   )
  (W::attribute
   (SENSES
    ((LF-PARENT ont::attribute)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "They can specify these and other attributes individually")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("attribute%1:09:00") :comments nil)
     )
    )
   )
  (W::clarity
   (SENSES
    ((LF-PARENT ont::attribute)
     (TEMPL mass-pred-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("clarity%1:07:00") :comments caloy3)
     )
    )
   )
  (W::focus
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::foci))))
   (SENSES
    ((LF-PARENT ont::attribute)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("focus%1:07:01") :comments caloy3)
     )
    )
   )
  (W::sharpness
   (SENSES
    ((LF-PARENT ont::attribute)
     (TEMPL mass-pred-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("sharpness%1:07:03") :comments caloy3)
     )
    )
   )
  (W::clearness
   (SENSES
    ((LF-PARENT ont::attribute)
     (TEMPL mass-pred-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("clearness%1:07:02") :comments caloy3)
     )
    )
   )
  (W::footer
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "add text to the footer")
     (meta-data :origin task-learning :entry-date 20050812 :change-date nil :wn ("footer%1:10:00") :comments nil)
     )
    )
   )
  (W::checkmark
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "put a checkmark in the checkbox")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  (W::slider
   (SENSES
    ((LF-PARENT ONT::icon)
     (EXAMPLE "drag the slider to make the picture smaller or larger")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
  (W::property
   (SENSES
    ((LF-PARENT ont::attribute)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "a hypothetical breed property for our dog example")
     (meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("property%1:09:00") :comments nil)
     )
    ((LF-PARENT ONT::possession)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (EXAMPLE "don't steal my property")
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("property%1:21:00") :comments nil)
     )
    )
   )
   (W::belongings
    (wordfeats (W::morph (:forms (-none))))
   (SENSES
     ((LF-PARENT ONT::possession)
      (TEMPL count-pred-3p-TEMPL)
     (EXAMPLE "don't steal my belongings")
     (meta-data :origin trips :entry-date 20090401 :change-date nil :wn ("property%1:21:00") :comments nil)
     )
    )
   )
  (W::attendee
   (SENSES
    ((LF-PARENT ONT::person)
      (EXAMPLE "remove an address from the attendees list")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("attendee%1:18:01") :comments nil)
     )
    )
   )
   (W::grower
   (SENSES
    ((LF-PARENT ONT::person)
     (EXAMPLE "the growers turned a profit")
     (meta-data :origin step :entry-date 20080721 :change-date nil :comments step6)
     )
    )
   )
  (W::ligature
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "combine text characters with ligatures")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("ligature%1:10:01") :comments nil)
     )
    )
   )
  (W::playback
   (SENSES
    ((LF-PARENT ONT::event)
     (EXAMPLE "Choose a playback quality")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("playback%1:04:00") :comments nil)
     )
    )
   )
   (W::animal
   (SENSES
    ((LF-PARENT ONT::animal)
     (EXAMPLE "man is an animal")
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
  (W::footnote
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "insert a footnote")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("footnote%1:10:00") :comments nil)
     )
    )
   )
  (W::marker
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "when you press the tab key, the insertion point moves to the next marker")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("marker%1:10:00" "marker%1:06:00") :comments nil)
     )
    )
   )
  ((W::accent w::mark)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::accent W::marks))))
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "add accent marks to characters")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("accent_mark%1:10:00") :comments nil)
     )
    )
   )
  (W::override
   (SENSES
    ((LF-PARENT ONT::replacement)
     (templ other-reln-theme-templ)
     (EXAMPLE "remove the style overrides")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("override%1:06:00") :comments nil)
     )
    )
   )
  (W::intranet
   (SENSES
    ((LF-PARENT ONT::computer-network)
     (EXAMPLE "this zone includes sites on your local intranet")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("intranet%1:06:00") :comments nil)
     )
    )
   )
  (W::INTERNET
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("internet%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))

  (W::entry
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "delete the entry")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("entry%1:10:01") :comments nil)
     )
    )
   )
  (W::newsgroup
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "access the newsgroup")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :comments nil)
     )
    )
   )
  (W::grid
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "display a grid behind the chart")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("grid%1:06:03") :comments nil)
     )
    )
   )
  (W::database
   (SENSES
    ((LF-PARENT ONT::database)
     (EXAMPLE "enter the message into the database")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("database%1:10:00") :comments nil)
     )
    )
   )
   (W::ontology
   (SENSES
    ((LF-PARENT ONT::database)
     (EXAMPLE "enter the concept in the ontology")
     (meta-data :origin calo-ontology :entry-date 20060124 :change-date nil :comments caloy3)
     )
    )
   )
   (W::subontology
   (SENSES
    ((LF-PARENT ONT::database)
     (EXAMPLE "enter the concept in the subontology")
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments caloy3)
     )
    )
   )
  (W::storage
   (SENSES
    ((LF-PARENT ONT::repository)
     (EXAMPLE "buy more storage space")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("storage%1:06:00") :comments nil)
     )
    )
   )
  (W::repository
   (SENSES
    ((LF-PARENT ONT::repository)
     (EXAMPLE "put it in the repository")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("repository%1:06:00") :comments nil)
     )
    )
   )
  (W::restriction
   (SENSES
    ((EXAMPLE "there is a restriction (that you must take this before meals)")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("restriction%1:09:00") :comments nil)
     (LF-PARENT ONT::CONSTRAINT)
     (templ count-subcat-that-optional-templ)
     )
    ((EXAMPLE "there are restrictions on how many messages you can keep")
     (LF-PARENT ONT::CONSTRAINT)
     (TEMPL COUNT-PRED-SUBCAT-TEMPL (XP (% W::PP (W::PTYPE W::on))))
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("restriction%1:09:00") :comments nil)
     )
    )
   )
  (W::comma
   (SENSES
    ((LF-PARENT ONT::punctuation)
     (EXAMPLE "enter addresses separated by commas")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("comma%1:10:00") :comments nil)
     )
    )
   )
  (W::clipboard
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "copy the selected text to the clipboard")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("clipboard%1:06:00") :comments nil)
     )
    )
   )
  (W::bureau
   (SENSES
    ((LF-PARENT ONT::organization)
     (EXAMPLE "specify a ratings bureau")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("bureau%1:14:00") :comments nil)
     )
    )
   )
  (W::bureaucracy
   (SENSES
    ((LF-PARENT ONT::organization)
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("bureaucracy%1:14:00") :comments nil)
     )
    )
   )
  (W::freedom
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (EXAMPLE "you have the freedom to distribute copies")
     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("freedom%1:26:01") :comments nil)
     )
    )
   )
  (W::indentation
   (SENSES
    ((LF-PARENT ONT::arrange-text)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (EXAMPLE "change the paragraph indentation")
     (meta-data :origin task-learning :entry-date 20050819 :change-date 20090504 :wn ("indentation%1:10:00") :comments nil)
     )
    )
   )
  (W::party
   (SENSES
    ((LF-PARENT ONT::person)
     (EXAMPLE "an authorized party")
     (meta-data :origin task-learning :entry-date 20050822 :change-date nil :wn ("party%1:18:00") :comments nil)
     (preference .92) ;; prefer event sense
     )
    ((LF-PARENT ONT::gathering-event)
     (EXAMPLE "go to the party")
     (meta-data :origin calo-ontology :entry-date 20060524 :change-date nil :wn ("party%1:14:00") :comments nil)
     )
    )
   )
   (W::festival
   (SENSES
    ((LF-PARENT ONT::gathering-event)
     (EXAMPLE "go to the party")
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("party%1:14:00") :comments caloy3-test-data)
     )
    )
   )
  (W::installer
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "Safari opens the installer for you")
     (meta-data :origin task-learning :entry-date 20050822 :change-date nil :comments nil)
     )
    )
   )
  (W::transparency
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("transparency%1:07:00") :comments nil)
     (LF-PARENT ONT::NON-MEASURE-ORDERED-DOMAIN)
     (TEMPL OTHER-RELN-TEMPL)
     (example "change the object's transparency")
     )
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "you can print transparencies on this printer")
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("transparency%1:06:01") :comments nil)
     )
    )
   )
  (W::pixel
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (EXAMPLE "move the object by one pixel")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("pixel%1:06:00") :comments nil)
     )
    )
   )
   (W::megapixel
   (SENSES
    ((LF-PARENT ONT::length-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     )
    )
   )
  (W::cutout
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "place the image behind the photo cutout")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("cutout%1:06:00" "cutout%1:06:01") :comments nil)
     )
    )
   )
  (W::facility
   (SENSES
    ((LF-PARENT ONT::function-object)
     (EXAMPLE "the program uses a library facility")
     (meta-data :origin task-learning :entry-date 20050822 :change-date nil :wn ("facility%1:04:00") :comments nil)
     )
    ((meta-data :origin calo :entry-date 20050823 :change-date nil :wn ("facility%1:06:00") :comments calo-y1script)
     (LF-PARENT ONT::facility)
     (EXAMPLE "the cargo is in the storage facility")
     )
    )
   )
   (W::nursery
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments step6)
     (LF-PARENT ONT::facility)
     (EXAMPLE "they grow plants and trees at the nursery")
     )
    )
   )
  (W::guest
   (SENSES
    ((LF-PARENT ONT::person)
     (EXAMPLE "invite the guests to the event")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("guest%1:18:00") :comments nil)
     )
    )
   )
  (W::tooltip
   (SENSES
    ((LF-PARENT ONT::information)
     (EXAMPLE "show tooltips")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :comments nil)
     )
    )
   )
  (W::developer
   (SENSES
    ((LF-PARENT ONT::professional)
     (EXAMPLE "developers use java to create applets")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :comments nil)
     )
    )
   )
  (W::dock
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "click the icon in the Dock")
     (meta-data :origin task-learning :entry-date 20050822 :change-date nil :comments nil)
     )
    )
   )
  (W::cell
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "merge the cells in a table")
     (meta-data :origin task-learning :entry-date 20050822 :change-date nil :comments nil)
     )
    )
   )
  (W::synchronization
   (SENSES
    ((LF-PARENT ont::objective-influence)
     (TEMPL OTHER-RELN-affected-TEMPL)
     (EXAMPLE "the synchronization of files")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("synchronization%1:24:00") :comments nil)
     )
    )
   )
  (W::sync
   (SENSES
    ((LF-PARENT ont::objective-influence)
     (TEMPL OTHER-RELN-affected-TEMPL)
     (meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :comments nil)
     )
    )
   )
  (W::reply
   (SENSES
    ((LF-PARENT ONT::email)
     (EXAMPLE "compose a reply")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("reply%1:10:01") :comments nil)
     )
    )
   )
  (W::snapshot
   (SENSES
    ((LF-PARENT ONT::image)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "take a snapshot with the camera")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("snapshot%1:06:00") :comments nil)
     )
    )
   )
  (W::authority
   (SENSES
    ((LF-PARENT ONT::organization)
     (EXAMPLE "a certifcation authority issues digital signatures")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("authority%1:14:00") :comments nil)
     )
    ((LF-PARENT ONT::assurance)
     (EXAMPLE "he spoke with authority")
     (meta-data :origin task-learning :entry-date 20050830 :change-date 20080206 :wn ("confidence%1:12:00") :comments nil)
     )
    )
   )
  (W::chapter
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "divide the document into chapters")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("chapter%1:10:00") :comments nil)
     )
    )
   )
  (W::filename
   (SENSES
    ((EXAMPLE "the filename is example.txt")
     (LF-PARENT ONT::NAME)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("filename%1:10:00") :comments nil)
     )
    )
   )
  (W::typeface
   (SENSES
    ((LF-PARENT ONT::font)
     (EXAMPLE "change the typeface")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("typeface%1:10:00") :comments nil)
     )
    )
   )
  (W::assistance
   (SENSES
    ((LF-PARENT ONT::function-object)
     (TEMPL MASS-PRED-TEMPL)
     (EXAMPLE "customer assistance")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("assistance%1:04:00") :comments nil)
     )
    )
   )
  (W::supplier
   (SENSES
    ((LF-PARENT ONT::supplier)
     (EXAMPLE "Microsoft and its suppliers")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("supplier%1:18:00") :comments nil)
     )
    )
   )
  (W::rectangle
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "rounded rectangles appear in the toolbar")
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("rectangle%1:25:00") :comments nil)
     )
    )
   )
  (W::BROWSER
   (SENSES
    ((LF-PARENT ONT::web-browser) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20050824 :wn ("browser%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  ((W::SEARCH W::ENGINE)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::search W::engines))))
   (SENSES
    ((LF-PARENT ONT::software-application) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20050318 :CHANGE-DATE 20050824 :wn ("search_engine%1:10:00")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::html
   (SENSES
    ((LF-PARENT ONT::computer-language)
     (EXAMPLE "download the html document")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("html%1:10:00") :comments nil)
     )
    )
   )
  (W::java
   (SENSES
    ((LF-PARENT ONT::computer-language)
     (EXAMPLE "compile the java program")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("java%1:10:00") :comments nil)
     )
    )
   )
  (W::javascript
   (SENSES
    ((LF-PARENT ONT::computer-language)
     (EXAMPLE "use openURL to run javascript")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::mbox
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "export to mbox format")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::isp
   (SENSES
    ((LF-PARENT ONT::internet-organization)
     (EXAMPLE "isp is the abbr. for internet service provider")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
    ((W::i w::s w::p)
   (SENSES
    ((LF-PARENT ONT::internet-organization)
     (EXAMPLE "isp is the abbr. for internet service provider")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::http
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "browsers use http to get webpages")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("http%1:10:00") :comments nil)
     )
    )
   )
  (W::imap
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "use imap to transfer email")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::smtp
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "use smtp to transfer mail simply")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::ldap
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "lightweight directory access protocol")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::pop
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "pop is the post office protocol")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::ssl
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "use ssl to ensure that personal data is not stolen")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::webdav
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "publish on a webdav enabled server")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::pdf
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "export the document to pdf")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::ics
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "export the calendar to ics")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::doc
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "export the document to doc")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::jpeg
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "save the image as a jpeg")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::gif
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "save the image as a gif")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::mpeg
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "save the movie as an mpeg")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::wav
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "save the sound as a wav")
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :comments plow-req)
     )
    )
   )
  (W::aac
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "save the sound as an aac")
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :comments plow-req)
     )
    )
   )
  (W::aiff
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "save the sound as an aiff")
     (meta-data :origin calo-ontology :entry-date 20060609 :change-date nil :comments plow-req)
     )
    )
   )
  (W::vcard
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "drag the vcard into your signature")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )

  (W::license
   (SENSES
    ((LF-PARENT ONT::official-document)
     (EXAMPLE "obey the license")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("license%1:10:00") :comments nil)
     )
    )
   )
 
  (W::autofill
   (SENSES
    ((LF-PARENT ONT::software-feature)
     (EXAMPLE "use autofill")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::autocomplete
   (SENSES
    ((LF-PARENT ONT::software-feature)
     (EXAMPLE "use autocomplete")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::snapback
   (SENSES
    ((LF-PARENT ONT::software-feature)
     (EXAMPLE "mark the page for snapback")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::colorsync
   (SENSES
    ((LF-PARENT ONT::software-feature)
     (EXAMPLE "use colorsync to calibrate the colors in an image")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )

  (W::username
   (SENSES
    ((LF-PARENT ONT::username)
     (EXAMPLE "i forgot my username")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::login
   (SENSES
    ((LF-PARENT ONT::username)
     (EXAMPLE "i forgot my login")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :comments nil)
     )
    )
   )
  (W::password
   (SENSES
    ((LF-PARENT ONT::password)
     (EXAMPLE "i forgot my password")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("password%1:10:00") :comments nil)
     )
    )
   )
  (W::pin
   (SENSES
    ((LF-PARENT ONT::id-number)
     (EXAMPLE "i forgot my pin")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("pin%1:10:00") :comments nil)
     )
    )
   )
  (W::key
   (SENSES
    ((LF-PARENT ONT::identification)
     (EXAMPLE "type in the identification key")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    ((LF-PARENT ONT::device) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("key%1:06:00")
      :COMMENTS HTML-PURCHASING-CORPUS)
     (EXAMPLE "he lost his house key")
     )
    )
   )
  (W::keychain
   (SENSES
    ((LF-PARENT ONT::info-holder)
     (EXAMPLE "put the key in/on the keychain")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )

  (W::disagreement
   (SENSES
    ((LF-PARENT ONT::contest)
     (TEMPL COUNT-PRED-TEMPL)
     (example "they had a disagreement")
     (meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090508 :wn ("disagreement%1:26:00") :comments caloy3)
    )
   )
   )

  (W::accord
   (SENSES
    ((LF-PARENT ONT::agreement)
     (TEMPL COUNT-PRED-TEMPL)
     (example "do we have an accord")
     (meta-data :origin calo-ontology :entry-date 20060126 :change-date 20090511 :wn ("accord%1:26:00") :comments caloy3)
     )
    )
   )

  (W::AGREEMENT
   (SENSES
    ((LF-PARENT ONT::agreement) (TEMPL COUNT-PRED-TEMPL)
     (example "they reached an agreement")
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE 20090511 :wn ("agreement%1:26:01")
      :COMMENTS HTML-PURCHASING-CORPUS))
    ((LF-PARENT ONT::official-document)
     (EXAMPLE "read the licensing agreement before you install the software")
     (meta-data :origin task-learning :entry-date 20050901 :change-date nil :wn ("agreement%1:10:01") :comments nil)
     )
    )
   )
  (W::promise
   (SENSES
    ((LF-PARENT ONT::promise)
     (TEMPL COUNT-PRED-TEMPL)
     (example "he made a promise")
     (META-DATA :ORIGIN plow :ENTRY-DATE 20060628 :CHANGE-DATE nil :wn ("promise%1:10:00") :COMMENTS nil))
    )
   )
  ((W::magnifying w::glass)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::magnifying W::glasses))))
   (SENSES
    ((LF-PARENT ONT::device)
     (EXAMPLE "view the file with the magnifying glass")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("magnifying_glass%1:06:00") :comments nil)
     )
    )
   )
  (W::invitation
   (SENSES
    ((LF-PARENT ONT::request)
     (EXAMPLE "send invitations to the event")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("invitation%1:10:00") :comments nil)
     )
    )
   )
;  (W::expose ; accent mark?
;   (SENSES
;    ((LF-PARENT ONT::software-feature)
;     (EXAMPLE "use expose to hide all open windows")
;     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil :wn ("expose%1:10:00"))
;     )
;    )
;   )
  (W::serif
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "use a serif font")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("serif%1:10:00") :comments nil)
     )
    )
   )
 ; (W::rtf
 ;  (SENSES
 ;   ((LF-PARENT ONT::file-format)
 ;    (EXAMPLE "export the document to rtf")
 ;    (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
 ;    )
 ;   )
 ;  )
 ; (W::rtfd
 ;  (SENSES
 ;   ((LF-PARENT ONT::file-format)
 ;    (EXAMPLE "export the document to rtfd")
 ;    (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
 ;    )
 ;   )
 ;  )
 ; (W::mime
 ;  (SENSES
 ;   ((LF-PARENT ONT::protocol)
 ;    (EXAMPLE "set the mime type of the document to text/plain")
 ;    (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
 ;    )
 ;   )
 ;  )
  (W::traffic
   (SENSES
    ((LF-PARENT ONT::direct-information)
     (EXAMPLE "the firewall blocks some network traffic")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("traffic%1:10:00") :comments nil)
     )
    )
   )
  (W::scheme
   (SENSES
    ((LF-PARENT ONT::procedure)
     (EXAMPLE "choose a page-numbering scheme")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("scheme%1:09:00") :comments nil)
     )
    )
   )
  (W::cursor
   (SENSES
    ((LF-PARENT ONT::icon)
     (EXAMPLE "move the cursor")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("cursor%1:06:00") :comments nil)
     )
    )
   )
 
  (W::soundtrack
   (SENSES
    ((LF-PARENT ONT::audio)
     (EXAMPLE "add a soundtrack to the slideshow")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("soundtrack%1:06:00") :comments nil)
     )
    )
   )
  (W::interchange
   (SENSES
    ((LF-PARENT ONT::transfer-event) ; by analogy with transfer N
     (EXAMPLE "distribute it on a medium used for software interchange")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("interchange%1:04:01") :comments nil)
     )
    )
   )
  (W::hypertext
   (SENSES
    ((LF-PARENT ONT::text-representation)
     (EXAMPLE "hypertext markup language")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("hypertext%1:10:00") :comments nil)
     )
    )
   )
  (W::macbinary
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "automatically decode macbinary files")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::encryption
   (SENSES
    ((LF-PARENT ONT::process)
     (EXAMPLE "use encryption to hide data")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("encryption%1:04:00") :comments nil)
     )
    )
   )
  (W::identity
   (SENSES
    ((LF-PARENT ONT::identification)
     (EXAMPLE "certificates verify the identity of a server")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("identity%1:07:00") :comments nil)
     )
    )
   )
  (W::provision
   (SENSES
    ((LF-PARENT ONT::requirements)
     (EXAMPLE "obey the provisions of this license")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("provision%1:10:00") :comments nil)
     )
;    ((LF-PARENT ONT::action)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "the provision of or failure to provide Support Services")
;     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("provision%1:04:01") :comments nil)
;     )
    )
   )
  (W::prefix
   (SENSES
    ((LF-PARENT ONT::linguistic-component)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "omit the http prefix")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("prefix%1:10:00") :comments nil)
     )
    )
   )
  (W::binhex
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "binhex files uise the .hqx filename extension")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::hqx
   (SENSES
    ((LF-PARENT ONT::file-format)
     (EXAMPLE "binhex files uise the .hqx filename extension")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (w::extent
   (senses
    ((lf-parent ont::mental-object)
     (example "the extent of his understanding")
     (templ other-reln-templ)
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("extent%1:26:00") :comments nil)
     )	   	   	   
    )
   )
  (W::switcher
   (SENSES
    ((LF-PARENT ONT::software-application)
     (EXAMPLE "go to the next slide in the slide switcher")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :comments nil)
     )
    )
   )
  (W::licensee
   (SENSES
    ((LF-PARENT ONT::person)
     (EXAMPLE "Each licensee is addressed as you")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("licensee%1:18:00") :comments nil)
     )
    )
   )
  (W::cryptography
   (SENSES
    ((LF-PARENT ONT::process)
     (EXAMPLE "Cryptography is the process of writing in or deciphering secret code")
     (meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("cryptography%1:04:00") :comments nil)
     )
    )
   )
  (w::ellipsis
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "if you see an ellipsis, there is not enough room")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :comments nil)
     )
    )
   )
  (w::school
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send email from school")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("school%1:14:00") :comments nil)
     )
    )
   )
  (w::highschool
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send email from school")
     (meta-data :origin asma :entry-date 20111003 :change-date nil :comments nil)
     )
    )
   )
  ((w::high w::school)
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send email from school")
     (meta-data :origin asma :entry-date 20111003 :change-date nil :comments nil)
     )
    )
   )
  ((w::middle w::school)
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send email from school")
     (meta-data :origin asma :entry-date 20111003 :change-date nil :comments nil)
     )
    )
   )
 ((w::junior w::high)
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send email from school")
     (meta-data :origin asma :entry-date 20111003 :change-date nil :comments nil)
     )
    )
   )
  (w::campus
   (SENSES
    ((LF-PARENT ONT::location)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("campus%1:15:00") :comments caloy3)
     )
    )
   )
  (W::SERVER
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO :ENTRY-DATE 20040204 :CHANGE-DATE NIL :wn ("server%1:06:01")
      :COMMENTS HTML-PURCHASING-CORPUS))))
  (W::hub
   (SENSES
    ((LF-PARENT ONT::computer-network) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN CALO-ontology :ENTRY-DATE 20051214 :CHANGE-DATE NIL
      :COMMENTS Office))))
  (W::host
   (SENSES
    ((LF-PARENT ONT::computer-network)
     (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN task-learning :ENTRY-DATE 20050825 :CHANGE-DATE NIL :wn ("host%1:06:00") :COMMENTS nil)
     (EXAMPLE "enter the name of your SMTP host")
     )
    ((LF-PARENT ONT::person)
     (example "he is the host")
     (meta-data :origin plow :entry-date 20060712 :change-date nil :wn ("host%1:18:02") :comments nil)
     )
    )
   )

  (w::fitness
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (EXAMPLE "the implied warranties of merchantability and fitness for a particular purpose")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("fitness%1:07:00") :comments nil)
     )
    ((LF-PARENT ONT::health)
     (meta-data :origin cardiac :entry-date 20090408 :change-date nil :wn ("health%1:26:01") :comments nil)
     )
    )
   )
  (w::health
   (SENSES
    ((LF-PARENT ONT::health)
     (EXAMPLE "wishing you health and happiness")
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date 20070727 :wn ("health%1:26:01") :comments nil)
     )
    )
   )
   (w::wellness
   (SENSES
    ((LF-PARENT ONT::health)
     (meta-data :origin cardiac :entry-date 20090408 :change-date nil :wn ("health%1:26:01") :comments nil)
     )
    )
   )
  (w::glossary
   (SENSES
    ((LF-PARENT ONT::reference-work)
     (EXAMPLE "look the word up in the glossary")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("glossary%1:10:00") :comments nil)
     )
    )
   )
  (w::playlist
   (SENSES
    ((LF-PARENT ONT::database) ;like list
     (EXAMPLE "change the playlist")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("playlist%1:10:00") :comments nil)
     )
    )
   )
  (w::speech
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "use text-to-speech technology")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("speech%1:10:00") :comments nil)
     )
    ((LF-PARENT ONT::presentation)
     (meta-data :origin calo :entry-date 20060111 :change-date nil :wn ("presentation%1:04:00") :comment caloy4)
     (example "he gave a speech to the people")
     )
    )
   )
  (w::distinction
   (SENSES
    ((LF-PARENT ONT::comparison)
     (EXAMPLE "libraries blur the distintion between use and modification")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("distinction%1:09:00") :comments nil)
     )
    )
   )
  (w::sidebar
   (SENSES
    ((LF-PARENT ONT::shape-object) ; ifo?
     (EXAMPLE "add a sidebar to the document")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :comments nil)
     )
    )
   )
  (w::gpl
   (SENSES
    ((LF-PARENT ONT::official-document)
     (EXAMPLE "this code is licensed under the GPL")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :comments nil)
     )
    )
   )
  (w::statistic
   (SENSES
    ((LF-PARENT ONT::information)
     (EXAMPLE "Displaying word count and other document statistics")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("statistic%1:09:00") :comments nil)
     )
    )
   )
  (w::government
   (SENSES
    ((LF-PARENT ONT::federal-organization)
     (EXAMPLE "the government ensures law and order")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("government%1:14:00") :comments nil)
     )
    )
   )
  (w::buddy
   (SENSES
    ((LF-PARENT ONT::friend)
      (EXAMPLE "people in your buddy list")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("buddy%1:18:00") :comments nil)
     )
    )
   )
 
  (w::ascender
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "set the distance between ascenders and descenders")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("ascender%1:10:00") :comments nil)
     )
    )
   )
  (w::descender
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "set the distance between ascenders and descenders")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("descender%1:10:00") :comments nil)
     )
    )
   )
  (w::intent
   (SENSES
    ((LF-PARENT ONT::objective)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "it is not the intent of this section to claim rights")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("intent%1:09:00") :comments nil)
     )
    )
   )
;  (w::occurrence
;   (SENSES
;    ((LF-PARENT ONT::representative)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "find the next occurrence")
;     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("occurrence%1:11:00") :comments nil)
;     )
;    ((LF-PARENT ONT::event)
;     (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
;     )
;    )
;   )
;   (w::recurrence
;   (SENSES
;    ((LF-PARENT ONT::event)
;     (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
;     )
;    )
;   )
  (w::effort
   (SENSES
    ((LF-PARENT ONT::action)
     (EXAMPLE "make an effort to do it")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("effort%1:04:00") :comments nil)
     )
    )
   )
;   (w::exertion
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (example "chest pain on exertion")
;     (meta-data :origin cardiac :entry-date 20090422 :change-date nil :wn ("effort%1:04:00") :comments nil)
;     )
;    )
;   )
  (W::xml
   (SENSES
    ((LF-PARENT ONT::computer-language)
     (EXAMPLE "download the xml document")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :comments nil)
     )
    )
   )
  (W::SUBSECTION
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("subsection%1:06:00") :comments nil)
     (LF-PARENT ONT::part)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::tunnel
   (SENSES
    ((LF-PARENT ONT::tunnel)
     (EXAMPLE "access the sites using the tunnel method")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("tunnel%1:06:00") :comments nil)
     )
    )
   )
  (W::label
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "read the label")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("label%1:10:01") :comments Office)
     )
    )
   )
  (W::abbreviation
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "what is the abbreviation for new york")
     (meta-data :origin plow :entry-date 20060526 :change-date nil :wn ("abbreviation%1:10:00") :comments pq)
     )
    )
   )
  (W::badge
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "here's your visitor security badge")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("badge%1:10:00") :comments Office)
     )
    )
   )
  (W::tag
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "see a button's help tag by hovering the pointer over it")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("tag%1:10:00") :comments nil)
     )
    )
   )
;  (W::compliance
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "compliance with applicable law")
;     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("compliance%1:04:02") :comments nil)
;     )
;    )
;   )

;  (W::verification
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "bytecode verification")
;     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("verification%1:09:00") :comments nil)
;     )
;    )
;   )
;  (W::chat
;   (SENSES
;    ((LF-PARENT ONT::conversation)
;     (EXAMPLE "sending files in a chat")
;     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("chat%1:10:00") :comments nil)
;     )
;    )
;   )
;  (W::fault
;   (SENSES
;    ((LF-PARENT ONT::problem)
;     (EXAMPLE "java is not fault-tolerant")
;     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("fault%1:04:00" "fault%1:26:00" "fault%1:11:00") :comments nil)
;     )
;    )
;   )

  (W::court
   (SENSES
    ((LF-PARENT ONT::legal-organization)
     (EXAMPLE "the ruling of the court")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("court%1:14:00") :comments nil)
     )
    )
   )
  (W::crosshair
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "the mouse cursor becomes a crosshair")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :comments nil)
     )
    )
   )

  (W::licensor
   (SENSES
    ((LF-PARENT ONT::supplier)
     (EXAMPLE "contact the licensor")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :comments nil)
     )
    )
   )

  (W::consequence
   (SENSES
    ((LF-PARENT ONT::outcome)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "as a consequence you may not distribute the library")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("consequence%1:19:00") :comments nil)
     )
    )
   )
  (W::reliability
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (EXAMPLE "IE 5.2 includes reliability enhancements")
     (meta-data :origin task-learning :entry-date 20050826 :CHANGE-date nil :wn ("reliability%1:07:00") :comments nil)
     )
    )
   )
   (W::certainty
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date 20090427 :comments y3-test-data)
     )
    )
   )
  (W::uncertainty
   (SENSES
    ((LF-PARENT ONT::likelihood)
     (meta-data :origin cardiac :entry-date 20090427)
     )
    )
   )
   (W::usability
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::union
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   ) 
  (W::choppiness
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (EXAMPLE "you may still see choppiness at high screen resolutions")
     (meta-data :origin task-learning :entry-date 20050826 :CHANGE-date nil :comments nil)
     )
    )
   )
  (W::suffix
   (SENSES
    ((LF-PARENT ONT::linguistic-component)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "the suffix identifies the location or type of organization")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("suffix%1:10:00") :comments nil)
     )
    )
   )
  (W::gender
   (SENSES
    ((LF-PARENT ONT::gender)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "the gender of the dog is male")
     (meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("gender%1:07:00") :comments nil)
     )
    )
   )
  (W::sex
   (SENSES
    ((LF-PARENT ONT::gender)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "the sex of the dog is male")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("sex%1:07:00") :comments nil)
     )
    ((LF-PARENT ONT::action)
     (EXAMPLE "adjust the content levels in each of four areas: violence, sex, nudity, and language")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("sex%1:04:00") :comments nil)
     )
    )
   )

  (W::receiver
   (SENSES
    ((LF-PARENT ONT::communication-party)
     (templ other-reln-templ)
     (EXAMPLE "The sender and receiver do not share secret information")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("receiver%1:18:00") :comments nil)
     )
    )
   )
  (W::abstract
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "read the abstract")
     (meta-data :origin calo-ontology :entry-date 20060608 :change-date nil :wn ("abstract%1:10:00") :comments plow-req)
     )
    )
   )
  (W::watermark
   (SENSES
    ((LF-PARENT ONT::image) ;ifo?
     (EXAMPLE "add a watermark to the master slide")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("watermark%1:10:00") :comments nil)
     )
    )
   )
  (W::kiosk
   (SENSES
    ((LF-PARENT ONT::structure)
     (EXAMPLE "play the slideshow in a kiosk")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("kiosk%1:06:00") :comments nil)
     )
    )
   )
  (W::euro
   (SENSES
    ((LF-PARENT ONT::money-unit)
     (TEMPL ATTRIBUTE-UNIT-TEMPL)
     (EXAMPLE "the font contains the Euro currency symbol")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("euro%1:23:00") :comments nil)
     )
    )
   )
  (W::currency
   (SENSES
    ((LF-PARENT ONT::currency)
     (EXAMPLE "the font contains the Euro currency symbol")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("currency%1:21:00") :comments nil)
     )
    )
   )
;  (W::rotation
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (EXAMPLE "enter the angle of rotation")
;     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("rotation%1:04:00") :comments nil)
;     )
;    )
;   )
  (W::reputation
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "the problem reflects on the author's reputation")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("reputation%1:09:00") :comments nil)
     )
    )
   )
  (W::endpoint
   (SENSES
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "change the endpoint of the line")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("endpoint%1:15:00") :comments nil)
     (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::wordml
   (SENSES
    ((LF-PARENT ONT::computer-language)
     (EXAMPLE "import the wordml document")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :comments nil)
     )
    )
   )
  (W::timer
   (SENSES
    ((LF-PARENT ONT::device)
     (EXAMPLE "set the timer")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("timer%1:06:01" "timer%1:06:00") :comments nil)
     )
    )
   )
  (W::ppp
   (SENSES
    ((LF-PARENT ONT::protocol)
     (EXAMPLE "use ppp to connect to the internet over the phone")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :comments nil)
     )
    )
   )
  (W::distributor
   (SENSES
    ((LF-PARENT ONT::supplier)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "the distributor of the software")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("distributor%1:18:00") :comments nil)
     )
    )
   )

  (W::heading
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "select the paragraph style for the heading")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("heading%1:10:00") :comments nil)
     )
    )
   )
  (W::subheading
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "select the paragraph style for the subheading")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("subheading%1:10:00") :comments nil)
     )
    )
   )
  (W::scroller
   (SENSES
    ((LF-PARENT ONT::icon)
     (EXAMPLE "drag the vertical scroller up or down")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :comments nil)
     )
    )
   )
  (W::inability
   (SENSES
    ((LF-PARENT ONT::function-object)
     (EXAMPLE "DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE LIBRARY")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("inability%1:09:00") :comments nil)
     )
    )
   )
;  (W::compilation
;   (SENSES
;    ((LF-PARENT ONT::process)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "the scripts used to control compilation and installation of the library")
;     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("compilation%1:04:00") :comments nil)
;     )
;    )
;   )
;  (W::infringement
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "patent infringement")
;     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("infringement%1:04:01") :comments nil)
;     )
;    )
;   )
   (W::sponsor
   (SENSES
    ((LF-PARENT ONT::professional)
     (EXAMPLE "confirm the sponsor name")
     (meta-data :origin plot :entry-date 20080812 :change-date nil :comments nil)
     )
    )
   )
  (W::expert
   (SENSES
    ((LF-PARENT ONT::specialist)
     (EXAMPLE "joint photographic experts group")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("expert%1:18:00") :comments nil)
     )
    )
   )
  (W::leader
   (SENSES
    ((LF-PARENT ONT::specialist)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("leader%1:18:00") :comments ma-request)
     )
    )
   )
  (W::follower
   (SENSES
    ((LF-PARENT ONT::person)
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("follower%1:18:00") :comments ma-request)
     )
    )
   )
  (W::province
   (SENSES
    ((LF-PARENT ONT::district)
     (EXAMPLE "this EULA is governed by the laws in force in the Province of Ontario, Canada")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("province%1:15:00") :comments nil)
     )
    )
   )
  (W::subnet
   (SENSES
    ((LF-PARENT ONT::computer-network)
     (EXAMPLE "make sure the page is on the same subnet as your computer")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :comments nil)
     )
    )
   )
;  (W::possession
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "quiet possession")
;     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("possession%1:04:00") :comments nil)
;     )
;    )
;   )
  (W::institution
   (SENSES
    ((LF-PARENT ONT::institution)
     (EXAMPLE "The site is maintained by a commercial institution")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("institution%1:14:00") :comments nil)
     )
    )
   )

  (W::cactus
   (wordfeats (W::morph (:forms (-S-3P) :plur W::cacti)))
   (SENSES
    ((LF-PARENT ont::plant)
     (EXAMPLE "plant the cactus")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("cactus%1:20:00") :comments nil)
     )
    )
   )
 
  (W::artifact
   (SENSES
    ((LF-PARENT ONT::function-object)
     (EXAMPLE "the animation might show unintended artifacts")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("artifact%1:03:00") :comments nil)
     )
    ((LF-PARENT ONT::manufactured-object)
     (meta-data :origin trips :entry-date 20080610 :change-date nil :wn ("artifact%1:03:00") :comments nil)
     )
    )
   )
;  (W::execution
;   (SENSES
;    ((LF-PARENT ONT::process)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "display a notice during execution of the program")
;     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("execution%1:22:00") :comments nil)
;     )
;    )
;   )
  (W::designer
   (SENSES
    ((LF-PARENT ONT::professional)
     (EXAMPLE "designers create Web pages")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("designer%1:18:00") :comments nil)
     )
    )
   )
;  (W::retrieval
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (TEMPL OTHER-RELN-TEMPL)
;     (EXAMPLE "Skipping retrieval of large email")
;     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :comments nil :wn ("retrieval%1:04:00"))
;     )
;    )
;   )

  (W::handout
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "print the handouts")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("handout%1:10:00") :comments nil)
     )
    )
   )
  (W::computation
   (SENSES
    ((LF-PARENT ONT::process)
     (EXAMPLE "perform the computation")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("computation%1:04:00") :comments nil)
     )
    )
   )
  (W::confidence
   (SENSES
    ((LF-PARENT ONT::assurance)
     (EXAMPLE "you can send personal information to them with confidence")
     (meta-data :origin task-learning :entry-date 20050830 :change-date 20080206 :wn ("confidence%1:12:00") :comments nil)
     )
    )
   )

   (W::trust
   (SENSES
    ((LF-PARENT ONT::assurance)
      (meta-data :origin task-learning :entry-date 20080206 :change-date nil :wn ("confidence%1:12:00") :comments nil)
     )
    )
   )
  (W::bidder
   (SENSES
    ((LF-PARENT ONT::person)
     (EXAMPLE "you are no longer the highest bidder")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("bidder%1:18:00") :comments nil)
     )
    )
   )
  (W::handler
   (SENSES
    ((LF-PARENT ONT::algorithm) ;??
     (EXAMPLE "write a script that uses a custom handler called perform_mail_action_with_messages")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :comments nil)
     )
    )
   )
  (W::shovel
   (SENSES
    ((LF-PARENT ONT::equipment)
     (EXAMPLE "the optional using parameter specifies the shovel or other implement used to dig the hole")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("shovel%1:06:02" "shovel%1:06:01" "shovel%1:06:00") :comments nil)
     )
    )
   )

  ((W::lightning w::bolt)
   (SENSES
    ((LF-PARENT ONT::natural-object)
     (EXAMPLE "click the lightning bolt icon")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :comments nil)
     )
    )
   )
  (W::compiler
   (SENSES
    ((LF-PARENT ONT::computer-program)
     (EXAMPLE "the compiler is a major component of the gnu system")
     (meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("compiler%1:10:00") :comments nil)
     )
    )
   )

  (W::bitmap
   (SENSES
    ((LF-PARENT ONT::image)
     (EXAMPLE "png is a format used for transmitting bitmap images")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("bitmap%1:06:00") :comments nil)
     )
    )
   )

  (W::university
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send mail outside your university")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("university%1:14:01") :comments nil)
     )
    )
   )
  (W::college
   (SENSES
    ((LF-PARENT ONT::academic-institution)
     (EXAMPLE "send mail outside your university")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("college%1:14:01") :comments nil)
     )
    )
   )
;  (W::interruption
;   (SENSES
;    ((LF-PARENT ONT::event-type)
;     (EXAMPLE "microsoft is not liable for business interruption")
;     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("interruption%1:04:00") :comments nil)
;     )
;    )
;   )
  (W::boundary
   (SENSES
    ((LF-PARENT ONT::edge)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "the text extends beyond its boundaries")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("boundary%1:25:00") :comments nil)
     )
    )
   )
  (W::flora
   (SENSES
    ((LF-PARENT ONT::plant)
     (EXAMPLE "the first parameter specifies a flora to place in the ground")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("flora%1:03:00") :comments nil)
     )
    )
   )
 
  (W::circumstance
   (SENSES
    ((LF-PARENT ONT::situation)
     (EXAMPLE "this section is held invalid under particular cirumstances")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("circumstance%1:26:01") :comments nil)
     )
    )
   )
  (W::song
   (SENSES
    ((LF-PARENT ONT::music)
     (EXAMPLE "play the song")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("song%1:10:00") :comments nil)
     )
    )
   )
  (W::rhapsody
   (SENSES
    ((LF-PARENT ONT::music)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::macro
   (SENSES
    ((LF-PARENT ONT::algorithm)
     (EXAMPLE "an object file that uses small macros is unrestricted")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("macro%1:10:00") :comments nil)
     )
    )
   )
  (W::compression
   (SENSES
    ((lf-parent ont::physical-phenomenon)
     (example "the force of the hurricane")
     (meta-data :origin LbR :entry-date 20080922 :change-date nil :comments nil))
    )
   )
  (W::subfolder
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "You can't create subfolders on IMAP servers")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :comments nil)
     )
    )
   )
  (W::vowel
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "If the language uses vowels above and below characters, Mail places the vowels correctly")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("vowel%1:10:01") :comments nil)
     )
    )
   )
  (W::birthday
   (SENSES
    ((LF-PARENT ONT::social-event)
     (EXAMPLE "add a birthday to the calendar")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("birthday%1:28:00") :comments nil)
     )
   )
   )
  (W::accessor
   (SENSES
    ((LF-PARENT ONT::algorithm)
     (EXAMPLE "an object file that uses small accessors is unrestricted")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :comments nil)
     )
    )
   )
  (W::flexibility
   (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "increase the flexibility of the actions")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("flexibility%1:07:01") :comments nil)
     )
    )
   )
 
  (W::identifier
   (SENSES
    ((LF-PARENT ONT::identification)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "The Window Identifier parameter specifies the ID of the window")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("identifier%1:10:00") :comments nil)
     )
    )
   )

  (W::temple
   (SENSES
    ((LF-PARENT ONT::public-service-facility)
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("temple%1:06:00") :comments nil)
     )
    )
   )
  (W::semicolon
   (SENSES
    ((LF-PARENT ONT::punctuation)
     (EXAMPLE "separate the lines with semicolons")
     (meta-data :origin task-learning :entry-date 20050831 :change-date 20050923 :wn ("semicolon%1:10:00") :comments nil)
     )
    )
   )
  (W::colon
   (SENSES
    ((LF-PARENT ONT::punctuation)
     (EXAMPLE "separate the lines with colons")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :wn ("colon%1:10:00") :comments nil)
     )
    )
   )
  (W::terminology
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "there are differences in terminology")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("terminology%1:10:00") :comments nil)
     )
    )
   )
  (W::kb
   (SENSES
    ((LF-PARENT ONT::memory-unit)
     (TEMPL SUBSTANCE-UNIT-lf-of-3s-TEMPL)
     (EXAMPLE "26 messages (343 KB)")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("kb%1:23:00") :comments nil)
     )
    )
   )
  (W::copyright
   (SENSES
    ((LF-PARENT ONT::official-document)
     (EXAMPLE "don't infringe the copyright")
     (meta-data :origin task-learning :entry-date 20050902 :change-date nil :wn ("copyright%1:10:00") :comments nil)
     )
    )
   )
  (W::cinema
   (SENSES
    ((LF-PARENT ONT::entertainment)
     (EXAMPLE "cinema-quality transitions")
     (meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("cinema%1:10:00") :comments nil)
     )
    )
   )
;  (W::contribution
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (EXAMPLE "people have made generous contributions to the software")
;     (meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("contribution%1:04:02") :comments nil)
;     )
;    )
;   )
;  (W::death
;   (SENSES
;    ((LF-PARENT ONT::lifecycle-event)
;     (EXAMPLE "the failure of Java technology could lead directly to death")
;     (meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("death%1:11:00") :comments nil)
;     )
;    )
;   )
  (W::thumbnail
   (SENSES
    ((LF-PARENT ONT::image)
     (EXAMPLE "Navigator view displays a thumbnail of each slide")
     (meta-data :origin task-learning :entry-date 20050909 :change-date nil :comments nil)
     )
    )
   )
 
  (W::importance
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("importance%1:07:00") :comments nil)
     (LF-PARENT ONT::importance)
     (TEMPL OTHER-RELN-TEMPL)
     (example "rate the to do items in terms of importance")
     )
    )
   )
  (W::subtitle
   (SENSES
    ((EXAMPLE "what is the title of the book")
     (meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("subtitle%1:10:00") :comments nil)
     (LF-PARENT ONT::TITLE)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )
  (w::organism
   (SENSES
    ((LF-PARENT ONT::natural-object)
     (EXAMPLE "A value of true indicates the organism was planted successfully")
     (meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("organism%1:03:00") :comments nil)
     )
    )
   )
;  (w::joke
;   (SENSES
;    ((LF-PARENT ONT::announce)
;     (EXAMPLE "exchange jokes with people")
;     (meta-data :origin task-learning :entry-date 20050912 :change-date 20090506 :wn ("joke%1:10:00") :comments nil)
;     )
;    )
;   )

  ((w::markup w::language)
   (wordfeats (W::morph (:forms (-S-3P) :plur (W::markup W::languages))))
   (SENSES
    ((LF-PARENT ONT::computer-language)
     (EXAMPLE "Hypertext Markup Language, a language used for creating documents for the World Wide Web")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :wn ("markup_language%1:10:00") :comments nil)
     )
    )
   )
  (w::hierarchy
   (SENSES
    ((LF-PARENT ONT::grouping)
     (EXAMPLE "create a nested hierarchy of information")
     (meta-data :origin task-learning :entry-date 20050916 :change-date nil :wn ("hierarchy%1:14:00") :comments nil)
     )
    )
   )
  (w::implement
   (SENSES
    ((LF-PARENT ONT::function-object)
     (EXAMPLE "choose the implement used to dig the hole")
     (meta-data :origin task-learning :entry-date 20050916 :change-date nil :wn ("implement%1:06:00") :comments nil)
     )
    )
   )
  (w::envelope
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "print to a specific envelope size")
     (meta-data :origin task-learning :entry-date 20050916 :change-date nil :wn ("envelope%1:06:01") :comments nil)
     )
    )
   )
   (w::intruder
   (SENSES
    ((LF-PARENT ONT::entrant)
     (EXAMPLE "hide the message contents from outsiders")
     (meta-data :origin coord-ops :entry-date 20070418 :change-date nil :wn ("outsider%1:18:00") :comments nil)
     )
    )
   )
  (w::interloper
   (SENSES
    ((LF-PARENT ONT::entrant)
     (EXAMPLE "hide the message contents from outsiders")
     (meta-data :origin coord-ops :entry-date 20070418 :change-date nil :wn ("outsider%1:18:00") :comments nil)
     )
    )
   )
  (w::trespasser
   (SENSES
    ((LF-PARENT ONT::entrant)
     (EXAMPLE "hide the message contents from outsiders")
     (meta-data :origin coord-ops :entry-date 20070418 :change-date nil :wn ("outsider%1:18:00") :comments nil)
     )
    )
   )
  (w::outsider
   (SENSES
    ((LF-PARENT ONT::member-reln)
     (templ other-reln-templ)
     (EXAMPLE "hide the message contents from outsiders")
     (meta-data :origin task-learning :entry-date 20050916 :change-date nil :wn ("outsider%1:18:00") :comments nil)
     )
    )
   )
  (w::stranger
   (SENSES
    ((LF-PARENT ONT::member-reln)
     (templ other-reln-templ)
     (EXAMPLE "don't talk to strangers")
     (meta-data :origin calo-ontology :entry-date 20060629 :change-date nil :wn ("stranger%1:18:00") :comments nil)
     )
    )
   )
  (w::insider
   (SENSES
    ((LF-PARENT ONT::member-reln)
     (EXAMPLE "insider trading")
     (templ other-reln-templ)
     (meta-data :origin task-learning :entry-date 20050916 :change-date nil :wn ("insider%1:18:00") :comments nil)
     )
    )
   )
  ((w::carriage w::return)
   (SENSES
    ((LF-PARENT ONT::letter-symbol)
     (EXAMPLE "join the text from both cells, separated by a carriage return")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("carriage_return%1:22:00") :comments nil)
     )
    )
   )
  (w::donor
   (SENSES
    ((LF-PARENT ONT::person)
     (EXAMPLE "the donor can decide if he or she is willing to distribute software")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("donor%1:18:00") :comments nil)
     )
    )
   )
  (w::discussion
   (SENSES
    ((LF-PARENT ONT::conversation)
     (EXAMPLE "keep active discussions at the top of our inbox")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("discussion%1:10:00" "discussion%1:10:02") :comments nil)
     )
    )
   )
  (w::underscore
   (SENSES
    ((LF-PARENT ONT::letter-symbol) ; graphic-symbol?
     (EXAMPLE "add three underscore characters")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("underscore%1:10:00") :comments nil)
     )
    )
   )
  (w::mammal
   (SENSES
    ((LF-PARENT ONT::animal)
     (EXAMPLE "dogs are mammals")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("mammal%1:05:00") :comments nil)
     )
    )
   )
  
  (W::combo
   (SENSES
    ((LF-PARENT ONT::combination)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "I'll have the combo")
     (meta-data :origin task-learning :entry-date 20050928 :change-date 20090520 :comments nil)
     )
    )
   )
  (W::combination
   (SENSES
    ((LF-PARENT ONT::combination)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "type special characters by pressing combinations of keys")
     (meta-data :origin task-learning :entry-date 20050919 :change-date 20090520 :wn ("combination%1:14:00") :comments nil)
     )
    )
   )
  (W::measurement
   (SENSES
    ((LF-PARENT ONT::domain)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "change the ruler's units of measurement")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("measurement%1:04:00") :comments nil)
     )
    )
   )
  (W::successor
   (SENSES
    ((LF-PARENT ONT::replacement)
     (TEMPL OTHER-RELN-theme-TEMPL)
     (EXAMPLE "vantage reasearch is the successor of lernout and hauspie")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("successor%1:18:01" "successor%1:09:00" "successor%1:18:00") :comments nil)
     )
    )
   )
  (W::humor
   (SENSES
    ((LF-PARENT ONT::entertainment)
     (EXAMPLE "create a humor group")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("humor%1:10:00") :comments nil)
     )
    )
   )
  (W::pet
   (SENSES
    ((LF-PARENT ONT::nonhuman-animal)
     (EXAMPLE "using the example of a pet dog")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("pet%1:05:00") :comments nil)
     )
    )
   )
  (W::deer
   (wordfeats (W::morph (:forms (-S-3P) :plur W::deer)))
   (SENSES
    ((LF-PARENT ONT::nonhuman-animal)
     (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :wn ("deer%1:05:00") :comments caloy3)
     )
    )
   )
   (W::moose
   (wordfeats (W::morph (:forms (-S-3P) :plur W::moose)))
   (SENSES
    ((LF-PARENT ONT::nonhuman-animal)
     (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :wn ("moose%1:05:00") :comments caloy3)
     )
    )
   )
   (W::elk
   (wordfeats (W::morph (:forms (-S-3P) :plur W::elk)))
   (SENSES
    ((LF-PARENT ONT::nonhuman-animal)
     (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :wn ("elk%1:05:00") :comments caloy3)
     )
    )
   )
  (W::sheep
   (wordfeats (W::morph (:forms (-S-3P) :plur W::sheep)))
   (SENSES
    ((LF-PARENT ONT::nonhuman-animal)
     (EXAMPLE "wolf in sheep's clothing")
     (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :wn ("sheep%1:05:00") :comments caloy3)
     )
    )
   )
   (W::caribou
   (wordfeats (W::morph (:forms (-S-3P) :plur W::caribou)))
   (SENSES
    ((LF-PARENT ONT::nonhuman-animal)
     (EXAMPLE "wolf in sheep's clothing")
     (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :wn ("caribou%1:05:00") :comments caloy3)
     )
    )
   )
  (W::oval
   (SENSES
    ((LF-PARENT ONT::shape-object)
     (EXAMPLE "place text inside the oval")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("oval%1:25:00") :comments nil)
     )
    )
   )
  (W::household
   (SENSES
    ((LF-PARENT ONT::structure)
     (EXAMPLE "sparky lives in their household")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("household%1:14:00") :comments nil)
     )
    )
   )
  (W::duty
   (SENSES
    ((LF-PARENT ONT::responsibility)
     (EXAMPLE "microsoft is not liable for failure to meet any duty")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("duty%1:04:00") :comments nil)
     )
    )
   )
  (W::slogan
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (EXAMPLE "add a slogan to the bottom of every message")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("slogan%1:10:00") :comments nil)
     )
    )
   )

  (W::parenthesis
   (wordfeats (W::morph (:forms (-S-3P) :plur W::parentheses)))
   (SENSES
    ((LF-PARENT ONT::letter-symbol) ; graphic-symbol?
     (EXAMPLE "use parentheses to refine your search")
     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("parenthesis%1:10:00") :comments nil)
     )
    )
   )
    (W::mineral
   (SENSES
    ((LF-PARENT ONT::minerals)
     (example "vitamins and minerals")
     (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     )
    )
   )
  (W::graphite
   (SENSES
    ((LF-PARENT ONT::minerals)
     (EXAMPLE "a color that matches your macintosh, such as graphite")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :comments nil)
     )
    )
   )

  (W::guide
   (SENSES
    ((LF-PARENT ONT::reference-work)
     (EXAMPLE "see the pages user's guide")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :wn ("guide%1:10:00") :comments nil)
     )
    ((LF-PARENT ONT::graphic-symbol)
     (EXAMPLE "Alignment guides will appear when the center or edges of objects are vertically or horizontally aligned")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :comments nil)
     )
    )
   )
  (W::garbage
   (SENSES
    ((LF-PARENT ONT::disposable)
     (EXAMPLE "it's garbage")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("garbage%1:27:00") :comments nil)
     )
    )
   )
  (W::waste
   (SENSES
    ((LF-PARENT ONT::disposable)
     (EXAMPLE "it's waste")
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("waste%1:27:00") :comments nil)
     )
    )
   )
  (W::trash
   (SENSES
    ((LF-PARENT ONT::function-object)
     (EXAMPLE "drag it out of the trash")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :wn ("trash%1:27:00") :comments nil)
     )
    )
   )
  (W::draft
   (SENSES
    ((LF-PARENT ONT::version)
     (EXAMPLE "delete the draft")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :wn ("draft%1:06:01" "draft%1:10:00") :comments nil)
     )
    )
   )
  (W::divider
   (SENSES
    ((LF-PARENT ONT::separation)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (EXAMPLE "add a divider")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :comments nil)
     )
    )
   )
  (W::separator
   (SENSES
    ((LF-PARENT ONT::separation)
     (TEMPL OTHER-RELN-THEME-TEMPL)
     (EXAMPLE "add a separator")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :comments nil)
     )
    )
   )


  (W::MEASURE
   (SENSES
    ((LF-PARENT ONT::domain)
     (META-DATA :ORIGIN task-learning :ENTRY-DATE 20050926 :CHANGE-DATE NIL :wn ("measure%1:03:00")
      :COMMENTS nil))))
  (W::metric
   (SENSES
    ((LF-PARENT ONT::domain)
     (META-DATA :ORIGIN task-learning :ENTRY-DATE 20050926 :CHANGE-DATE NIL :wn ("metric%1:23:00")
      :COMMENTS nil))))

  (W::syntax
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::domain)
     (TEMPL OTHER-RELN-TEMPL)
     (SYNTAX (W::AGR W::3S))
     (EXAMPLE "this is the syntax for a function call")
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("syntax%1:09:01") :comments nil)
     )
    )
   )
  (W::grammar
   (SENSES
    ((LF-PARENT ONT::linguistic-object)
     (EXAMPLE "the grammar of the language")
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("grammar%1:09:00") :comments nil)
     )
    )
   )
  (W::limitation
   (SENSES
    ((LF-PARENT ONT::constraint)
     (EXAMPLE "there is no limitation on the right to copy this")
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("limitation%1:09:00") :comments nil)
     )
    )
   )
  (W::remark
   (SENSES
    ((LF-PARENT ONT::report-speech)
     (example "the remark that he left")
     (templ count-subcat-that-optional-templ)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("remark%1:10:00") :comments nil)
     )
    )
   )
  (W::integer
   (SENSES
    ((LF-PARENT ONT::domain)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("integer%1:23:00") :comments nil)
     (example "this parameter is an integer")
     )
    )
   )
  (W::string
   (SENSES
    ((LF-PARENT ONT::grouping)
     (TEMPL other-reln-templ)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("string%1:10:00") :comments nil)
     (example "this parameter is a character string")
     )
    )
   )
  (W::alias
   (SENSES
    ((LF-PARENT ONT::replacement)
     (templ other-reln-theme-templ (xp (% W::pp (W::ptype (? pt W::for w::of)))))
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("alias%1:10:00") :comments nil)
     (example "The first parameter is an alias specifying the file to display")
     )
    )
   )
  (W::italic
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("italic%1:10:01") :comments nil)
     (example "make the text italic")
     )
    )
   )
  (W::bold
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("bold%1:10:00") :comments nil)
     (example "make the text bold")
     )
    )
   )
  (W::underline
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("underline%1:10:00") :comments nil)
     (example "change the text style to underline")
     )
    )
   )
  (W::strikethrough
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :comments nil)
     (example "change the text style to strikethrough")
     )
    )
   )
  (W::superscript
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("superscript%1:10:00") :comments nil)
     (example "insert a superscript")
     )
    )
   )
  (W::subscript
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("subscript%1:10:00") :comments nil)
     (example "insert a subscript")
     )
    )
   )
  (W::cursive
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("cursive%1:10:00") :comments nil)
     (example "make the text cursive")
     )
    )
   )
  (W::monospace
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :comments nil)
     (example "use a monospace font")
     )
    )
   )
  (W::roman
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("roman%1:10:01") :comments nil)
     (example "use a roman font")
     )
    )
   )
  (W::uppercase
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("uppercase%1:10:00") :comments nil)
     (example "make the text uppercase")
     )
    )
   )
  (W::lowercase
   (SENSES
    ((LF-PARENT ONT::font)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("lowercase%1:10:00") :comments nil)
     (example "make the text lowercase")
     )
    )
   )
  (W::percentage
   (SENSES
    ((LF-PARENT ONT::quantitative-relation)
     (templ other-reln-theme-templ)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("percentage%1:24:00") :comments nil)
     (example "enter the percentage")
     )
    )
   )
  (W::patent
   (SENSES
    ((LF-PARENT ONT::official-document)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("patent%1:10:01") :comments nil)
     (example "don't infringe on my patent")
     )
    )
   )
;  (W::hyphenation
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("hyphenation%1:04:02") :comments nil)
;     (example "turn off automatic hyphenation")
;     )
;    )
;   )
;  (W::disclosure
;   (SENSES
;    ((LF-PARENT ONT::announce)
;     (meta-data :origin task-learning :entry-date 20050926 :change-date 20090506 :wn ("disclosure%1:10:00") :comments nil)
;     (example "click the disclosure triangle")
;     )
;    )
;   )
  (W::decimal
   (SENSES
    ((LF-PARENT ONT::domain)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("decimal%1:23:01") :comments nil)
     (example "align the decimals")
     )
    )
   )
;  (W::trick
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("trick%1:04:00" "trick%1:04:05" "trick%1:04:02" "trick%1:04:04") :comments nil)
;     (example "here are some tips and tricks")
;     )
;    )
;   )
;  (W::reproduction
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("reproduction%1:04:00" "reproduction%1:04:01") :comments nil)
;     (example "unauthorized reproduction is prohibited")
;     )
;    )
;   )
  (W::proportion
   (SENSES
    ((lf-parent ont::quantitative-relation)
     (templ theme-co-theme-xp-templ)
     (meta-data :origin task-learning :entry-date 20050926 :change-date nil :wn ("proportion%1:24:00") :comments nil)
     )
    )
   )
  (W::baseline
   (SENSES
    ((lf-parent ont::standard)
      (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("baseline%1:24:00") :comments nil)
      (EXAMPLE "raise the baseline of the text")
     )
    )
   )
  (W::guideline
   (SENSES
    ((lf-parent ont::standard)
      (meta-data :origin task-learning :entry-date 20051021 :change-date nil :wn ("guideline%1:09:00") :comments nil)
      (EXAMPLE "follow the guidelines for this task")
     )
    )
   )
  (W::target
   (SENSES
    ((lf-parent ont::website)
      (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("target%1:09:00") :comments nil)
      (EXAMPLE "when you click the link in the document, you go to its target")
     )
    )
   )
  (W::scope
   (SENSES
    ((lf-parent ont::non-measure-ordered-domain) ; like range
      (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("scope%1:07:00") :comments nil)
      (EXAMPLE "Activities other than copying are outside the scope of this license")
      (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::boolean
   (SENSES
    ((LF-PARENT ONT::domain)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :comments nil)
     (example "this parameter is a boolean")
     )
    )
   )
  (W::privacy
   (SENSES
    ((lf-parent ont::confidentiality) ; like security
      (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("privacy%1:07:00") :comments nil)
      (EXAMPLE "The Security pane helps to protect your privacy")
      (TEMPL OTHER-RELN-TEMPL)
     )
    )
   )
  (W::bid
   (SENSES
    ((LF-PARENT ONT::order)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("bid%1:10:00") :comments nil)
     (example "your bid is no longer the highest bid")
     (templ other-reln-templ  (xp (% W::pp (W::ptype (? pt W::for w::on)))))
     )
    )
   )

  (W::locator
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :comments nil)
     (example "uniform resource locator")
     )
    )
   )
  (W::structure
   (SENSES
    ((LF-PARENT ONT::grouping)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("structure%1:09:00") :comments nil)
     (example "if the object file uses only data structure layouts and accessors, its use is unrestricted")
     )
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn ("structure%1:06:00"))
     (lf-parent ont::structure)
     (example "take shelter in this structure")
     )
    )
   )
  (W::caps
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::font)
     (templ mass-pred-templ)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :comments nil)
     (example "Choose All Caps to make text all capital letters")
     )
    )
   )
  (W::law
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("law%1:10:00") :comments nil)
     (example "congress passed the new law")
     )
    )
   )
  (W::treaty
   (SENSES
    ((LF-PARENT ONT::official-document)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("treaty%1:10:00") :comments nil)
     (example "the software is protected by international copyright treaties")
     )
    )
   )

   (W::vaccine
   (SENSES
    ((LF-PARENT ont::medication)
     (meta-data :origin step :entry-date 20080724 :change-date nil :comments nil :wn ("vaccine%1:06:00"))
     (example "it has led to a vaccine")
     )
    )
   )

;  (W::isolation
;   (wordfeats (W::morph (:forms (-none))))
;   (SENSES
;    ((LF-PARENT ONT::situation)
;     (templ bare-pred-templ)
;     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("isolation%1:26:00") :comments nil)
;     (example "the work in isolation is not a derivative work")
;     )
;    )
;   )
 
  (W::pattern
   (SENSES
    ((LF-PARENT ONT::grouping)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("pattern%1:09:00") :comments nil)
     (example "the legend shows a sample of the color and pattern used for each series")
     )
    )
   )
  (W::acknowledgment
   (SENSES
; old sense from when the two spellings were separate
;    ((LF-PARENT ONT::annotation)
;     (example "add the acknowledgments")
;     (meta-data :origin calo-ontology :entry-date 20070612 :change-date nil :comments nil)
;     )
    ((LF-PARENT ONT::acknowledge)
     (meta-data :origin task-learning :entry-date 20050930 :change-date 20090508 :wn ("acknowledgement%1:10:00") :comments nil)
     (example "I'll mention you in the acknowledgements")
     )
    )
   )
  (W::acknowledgement
   (SENSES
    ((LF-PARENT ONT::acknowledge)
     (meta-data :origin task-learning :entry-date 20050930 :change-date 20090508 :wn ("acknowledgement%1:10:00") :comments nil)
     (example "I'll mention you in the acknowledgements")
     )
    )
   )
  (W::banner
   (SENSES
    ((LF-PARENT ONT::information-function-object)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :comments nil)
     (example "click the Load Images button in the Junk Mail banner")
     )
    )
   )
  (W::breach
   (SENSES
    ((LF-PARENT ONT::problem)
     (TEMPL OTHER-RELN-TEMPL)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("breach%1:04:01") :comments nil)
     (example "breach of contract")
     )
    )
   )
  (W::enhancement
   (SENSES
    ((LF-PARENT ONT::improve) (TEMPL COUNT-PRED-TEMPL)
     (META-DATA :ORIGIN task-learning :ENTRY-DATE 20050930 :CHANGE-DATE NIL :wn ("enhancement%1:04:00")
      :COMMENTS nil))))
  (W::preamble
   (SENSES
    ((LF-PARENT ONT::info-medium)
     (EXAMPLE "read the preamble of the license")
     (meta-data :origin task-learning :entry-date 20051003 :change-date nil :wn ("preamble%1:10:00") :comments nil)
     )
    )
   )
  (W::noninfringement
   (SENSES
    ((LF-PARENT ONT::action)
     (TEMPL OTHER-RELN-TEMPL)
     (EXAMPLE "patent noninfringement")
     (meta-data :origin task-learning :entry-date 20051003 :change-date nil :comments nil)
     )
    )
   )
  (W::spread
   (SENSES
    ((LF-PARENT ONT::info-holder) ; like format
     (EXAMPLE "adjust the outside and inside margins for two-page spreads")
     (meta-data :origin task-learning :entry-date 20051003 :change-date 20051021 :wn ("spread%1:10:00") :comments nil)
     (preference .96) ;;prefer verb sense
     )
    )
   )
  (W::solicitation
   (SENSES
    ((LF-PARENT ONT::request)
     (EXAMPLE "solicitations issued on or after 12/1/1995")
     (meta-data :origin task-learning :entry-date 20051003 :change-date nil :wn ("solicitation%1:10:01") :comments nil)
     )
    )
   )
  (W::illusion
   (SENSES
    ((LF-PARENT ONT::mental-object)
     (EXAMPLE "displaying images sequentially produces the illusion of movement")
     (meta-data :origin task-learning :entry-date 20051003 :change-date nil :wn ("illusion%1:09:01") :comments nil)
     )
    )
   )
  (W::consistency
   (SENSES
    ((LF-PARENT ONT::comparison)
     (EXAMPLE "colorsync improves color consistency between devices")
     (meta-data :origin task-learning :entry-date 20051003 :change-date nil :wn ("consistency%1:07:02") :comments nil)
     )
    )
   )
  (W::typography
   (SENSES
    ((LF-PARENT ONT::process) ; like cryptography
     (EXAMPLE "use ligature settings specified in the typography window")
     (meta-data :origin task-learning :entry-date 20051003 :change-date nil :wn ("typography%1:04:00") :comments nil)
     )
    )
   )
;  (W::magnification
;   (SENSES
;    ((LF-PARENT ONT::increase)
;     (EXAMPLE "choose a magnification level")
;     (meta-data :origin task-learning :entry-date 20051003 :change-date 20090504 :wn ("magnification%1:04:00") :comments nil)
;     )
;    )
;   )
;  (W::management
;   (SENSES
;    ((LF-PARENT ONT::action)
;     (EXAMPLE "change color management options")
;     (meta-data :origin task-learning :entry-date 20051014 :change-date nil :wn ("management%1:04:00") :comments nil)
;     )
;    )
;   )

   (W::diode
   (SENSES
    ((LF-PARENT ONT::device-component)
     (EXAMPLE "laser diode")
     (meta-data :origin calo :entry-date 20060117 :change-date nil :wn ("diode%1:06:01" "diode%1:06:00") :comments calo-ontology)
     )
    )
   )
   (W::conductor
   (SENSES
    ((LF-PARENT ONT::conductor)
     (EXAMPLE "a conductor transmits heat")
     (meta-data :origin calo :entry-date 20060117 :change-date nil :wn ("conductor%1:06:00") :comments calo-ontology)
     )
    )
   )
    (W::semiconductor
   (SENSES
    ((LF-PARENT ONT::conductor)
     (EXAMPLE "a semiconductor is a conductor made with semiconducting material")
     (meta-data :origin calo :entry-date 20060117 :change-date nil :wn ("semiconductor%1:06:00") :comments calo-ontology)
     )
    )
   )
    (W::recreation
   (SENSES
    ((LF-PARENT ONT::physical-activity)
     (templ mass-pred-templ)
     (EXAMPLE "what kind of recreation facilities are available")
     (meta-data :origin calo :entry-date 20060117 :change-date nil :wn ("recreation%1:04:00") :comments calo-ontology)
     )
    )
   )

 (W::aerobics
  (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::cardiopulmonary-exercise)
     ; changed to new type cardiopulmonary-exercise for asma
     (meta-data :origin cardiac :entry-date 20090422 :change-date 20111003 :wn ("workout%1:04:00") :comments calo-ontology)
     (templ mass-pred-templ)
     )
    )
   )
  
 ((W::step w::aerobic)
  (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::cardiopulmonary-exercise)
     ; changed to new type cardiopulmonary-exercise for asma
     (meta-data :origin asma :entry-date 20111003 :wn ("workout%1:04:00"))
     (templ mass-pred-templ)
     )
    )
   )

  ((W::step w::aerobics)
  (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((LF-PARENT ONT::cardiopulmonary-exercise)
     ; changed to new type cardiopulmonary-exercise for asma
     (meta-data :origin asma :entry-date 20111003 :wn ("workout%1:04:00"))
     (templ mass-pred-templ)
     )
    )
   )
  

   (W::training
   (SENSES
    ((LF-PARENT ONT::working-out)
     (EXAMPLE "cardio training, weight training")
     (meta-data :origin cardiac :entry-date 20090129 :change-date nil :wn ("workout%1:04:00") :comments LM-vocab)
     )
    )
   )
  
   (W::cleanliness
    (wordfeats (W::morph (:forms (-none))))
    (SENSES
    ((LF-PARENT ONT::non-measure-ordered-domain)
     (templ bare-pred-templ)
     (EXAMPLE "cleanliness is an important attribute in hotel selection")
     (meta-data :origin calo :entry-date 20060117 :change-date nil :wn ("cleanliness%1:26:00" "cleanliness%1:07:00") :comments calo-ontology)
     )
    )
   )
   (W::comfort
   (SENSES
    ((LF-PARENT ONT::comfortableness)
     (EXAMPLE "comfort is also an important attribute in hotel selection")
     (meta-data :origin calo :entry-date 20060117 :change-date nil :wn ("comfort%1:26:00") :comments calo-ontology)
     )
    )
   )
   (W::discomfort
   (SENSES
    ((LF-PARENT ONT::comfortableness)
     (EXAMPLE "do you experience discomfort when you climb the stairs")
     (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil :wn ("discomfort%1:26:00"))
     )
    )
   )
  (W::sense
   (SENSES
    ((LF-PARENT ONT::information)
     (EXAMPLE "what is the sense of this word")
     (meta-data :origin calo-ontology :entry-date 20060119 :change-date nil :wn ("sense%1:10:00") :comments caloy3)
     )
    )
   )
  (W::opposite
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("opposite%1:24:03") :comments caloy3)
     (lf-parent ont::relation)
     (example "they are opposites")
     (templ mass-pred-templ)
     )
    )
   )
  (W::reverse
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("reverse%1:24:00") :comments caloy3)
     (lf-parent ont::relation)
     (example "we thought he was happy but the reverse was true")
     (templ mass-pred-templ)
     )
    )
   )
  (w::thought
   (senses
    ((lf-parent ont::mental-object)
     (example "any thoughts on the subject")
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("thought%1:09:01") :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt w::on W::about)))))
     )	   	   	   
    ))
  (w::opinion
   (senses
    ((lf-parent ont::mental-object)
     (example "everyone is entitled to their opinion")
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("opinion%1:09:00") :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt w::on W::about)))))
     )	   	   	   
    ))
  (w::belief
   (senses
    ((lf-parent ont::mental-object)
     (example "he has strong beliefs about that")
     (meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("belief%1:09:01") :comments caloy3)
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt w::in W::about)))))
     )	   	   	   
    ))
  (w::religion
   (senses
    ((lf-parent ont::mental-object)
     (meta-data :origin calo-ontology :entry-date 20061121 :change-date nil :comments caloy3 :wn ("religion%1:09:00"))
     )	   	   	   
    ))
  (w::faith
   (senses
    ((lf-parent ont::mental-object)
     (meta-data :origin calo-ontology :entry-date 20061121 :change-date nil :comments caloy3 :wn ("faith%1:09:00" "faith%1:09:01"))
     (TEMPL OTHER-RELN-TEMPL (xp (% W::pp (W::ptype (? pt w::in)))))
     )	   	   	   
    ))
   (w::gui
    (senses
     ((lf-parent ont::computer-software)
      (templ count-pred-templ)
      (meta-data :origin lou :entry-date 20070612 :change-date nil :wn ("interface%1:10:00") :comments nil)
      )	   	   	   	   
     ))
 
;    (w::flow
;    (senses
;     ((lf-parent ont::event)
;      (templ other-reln-templ)
;      (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
;      (example "the flow of oxygen")
;      (preference .97) ;prefer verb sense
;      )
;     )
;    )
;   (w::walk
;    (senses
;     ((lf-parent ont::walking) ;; like walk the dog
;      (templ count-pred-templ)
;      (meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil)
;      (example "i took a walk")
;      )
;     )
;    )
    (w::click
    (senses
;     ((lf-parent ont::event)
;      (templ count-pred-templ)
;      (meta-data :origin plow :entry-date 20070808 :change-date nil :comments nil)
;      (example "he heard a click")
;      )
     ((lf-parent ont::click)
      (templ other-reln-theme-templ  (xp (% W::pp (W::ptype (? pt w::on)))))
      (meta-data :origin plow :entry-date 20070808 :change-date nil :comments nil)
      (example "there was a click on that link")
      )
     
     ))
))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::body-property)
    (meta-data :origin cardiac :entry-date 20080422 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::pose w::position w::posture))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::social-event)
    (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::anniversary w::divorce w::engagement w::marriage w::nuptuals))

;; type of located event -- you can 'go to' them
(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::gathering-event)
    (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words ((w::baby w::shower) w::celebration w::picnic w::pic-nic w::picnik w::pic-nik))

;; also type of located event, but with an associated ceremony
(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::ceremony)
    (meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words ((w::bar w::mitzvah) w::ceremony w::christening w::convocation w::funeral w::graduation w::induction w::wake w::wedding))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::attire)
    (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments nil)
    (TEMPL mass-PRED-TEMPL)
    (syntax (W::morph (:forms (-none))))
    )
   )
 :words (w::attire (w::boxer w::shorts) w::clothes w::clothing w::lingerie w::pajamas w::pants w::pyjamas w::shorts w::sweats (w::sweat w::pants) w::tights w::trousers w::underpants w::underwear))

(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::attire)
    (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::belt w::beret w::blazer w::blouse w::boot w::bra w::brassier w::brassiere w::cami w::camisole w::cap w::coat w::dress w::garment w::glove w::hat w::hood w::jacket w::jersey w::mitten w::nightshirt w::overcoat w::parka w::raincoat w::shirt w::shoe w::skirt w::sneaker w::sock w::stocking w::sweater w::sweatshirt (w::sweat w::shirt) (w::sweat w::suit) w::tie w::tshirt w::teeshirt (w::tee w::shirt) w::tee w::tux w::tuxedo w::windbreaker)) ;; suit defined earlier, for boudreaux

 
 (define-words :pos W::n :templ count-pred-templ
 :words (
	 (W::consultant
	  (SENSES
	   ((LF-PARENT ONT::professional)
	    (meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::staff
	  (SENSES
	   ((LF-PARENT ONT::social-group)
	    (meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 )
 )

(define-words :pos W::n :templ count-pred-templ
 :words (
	 (W::finance
	  (SENSES
	   ((LF-PARENT ONT::commercial-activiy)
	    (meta-data :origin sense :entry-date 20070724 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	  (W::commerce
	  (SENSES
	   ((LF-PARENT ONT::commercial-activity)
	    (meta-data :origin sense :entry-date 20070724 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 (W::asset
	  (SENSES
	   ((LF-PARENT ONT::asset)
	    (meta-data :origin sense :entry-date 20070724 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 )
 )

(define-words :pos W::n :templ count-pred-templ
 :words (
	 ((W::peak w::flow w::meter)
	  (SENSES
	   ((LF-PARENT ONT::device)
	    (meta-data :origin asma :entry-date 20110829 :change-date nil :comments nil :wn nil)
	    )
	   )
	  )
	 )
 )

(define-words :pos W::n :templ count-pred-templ
 :words (
	 (W::argument
	  (SENSES
	   ((LF-PARENT ONT::conversation)
	    (example "they had an argument")
	    (meta-data :origin cardiac :entry-date 20080926 :change-date 20090505 :comments nil :wn nil)
	    )
	   )
	  )
	 (W::expression
	  (SENSES
	   ((LF-PARENT ONT::attribute)
	    (example "a sad (facial) expression")
	    (meta-data :origin cardiac :entry-date 20080926 :change-date nil :comments nil :wn nil)
	    )
	   ))
	  (W::disposition
	  (SENSES
	   ((LF-PARENT ONT::attribute)
	    (example "a sad disposition")
	    (meta-data :origin cardiac :entry-date 20080926 :change-date nil :comments nil :wn nil)
	    )
	   ))
	 (W::outlook
	  (SENSES
	   ((LF-PARENT ONT::attribute)
	    (example "a sad disposition")
	    (meta-data :origin cardiac :entry-date 20080926 :change-date nil :comments nil :wn nil)
	    )
	   ))
	  (W::lifestyle
	  (SENSES
	   ((LF-PARENT ONT::situation)
	    (meta-data :origin cardiac :entry-date 20080926 :change-date nil :comments nil :wn nil)
	    )
	   ))
	   (W::sunset
	  (SENSES
	   ((LF-PARENT ONT::nychthemeron-event)
	    (example "it was a beautiful sunset")
	    (meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments speechtest-vocab :wn nil)
	    )
	   ))
	    (W::sunrise
	  (SENSES
	   ((LF-PARENT ONT::nychthemeron-event)
	    (example "it was a beautiful sunrise")
	    (meta-data :origin cardiac :entry-date 20090121 :change-date nil :comments speechtest-vocab :wn nil)
	    )
	   ))
;         (W::admission
;          (SENSES
;           ((LF-PARENT ONT::event)
;            (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn nil)
;            )
;           ))
;         (W::cessation
;          (SENSES
;           ((LF-PARENT ONT::event)
;            (example "smoking cessation")
;            (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn nil)
;            )
;           ))
	  (W::meal
	  (SENSES
	   ((LF-PARENT ONT::meal-event)
	    (example "take your medication after every meal")
	    (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn nil)
	    )
	   ((LF-PARENT ONT::food)
	    (example "he ate two meals a day")
	    (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn nil)
	    )	   
	   ))
	  (W::tilt
	  (SENSES
	   ((LF-PARENT ONT::lean)
	    (example "the robot's tilt sensor went off")
	    (meta-data :origin joust :entry-date 20091027 :change-date nil :comments nil :wn nil)
	    )
	   ))
	   (W::being
	  (SENSES
	   ((LF-PARENT ONT::organism)
	    (example "an extraterrestrial being")
	    (meta-data :origin gloss :entry-date 20100520 :change-date nil :comments nil :wn nil)
	    )
	   ))


 (W::sea
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::geo-formation)
     )
    )
   )

(W::beauty
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::non-measure-ordered-domain)
     )
    )
   )

(W::war
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::located-event)
     )
    )
   )

(W::king
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::person)
     )
    )
   )

(W::tail
   (SENSES
    ((meta-data :origin bolt :entry-date 20120516 :comments top500)
     (LF-PARENT ONT::object-dependent-location)
     (TEMPL GEN-PART-OF-RELN-TEMPL)
     )
    )
   )

 (W::NUMERAL
   (SENSES   
    ((LF-PARENT ONT::symbolic-representation)
     (example "a numeral is a representation of a number")
     (meta-data :origin bolt :entry-date 20120516 :comments top500)
     )
    )
   )

 (W::WOOD
   (SENSES
    ((meta-data :origin BOLT :entry-date 20031230 :change-date nil :comments most-frequent-words)
     (LF-PARENT ONT::material)
     (TEMPL MASS-PRED-TEMPL)
     )
    )
   )

	  )
 )
 

(define-list-of-words :pos W::n
  :senses (;;;;; meals may or may not have articles
   ((LF-PARENT ONT::meal-event)    
    (TEMPL BARE-PRED-TEMPL)
    )
   ((LF-PARENT ONT::food)
    (TEMPL BARE-PRED-TEMPL)
    )
   )
 :words (W::BREAKFAST W::LUNCH W::DINNER W::BRUNCH W::SUPPER))
