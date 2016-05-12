
(in-package :lxm)

(define-list-of-words :pos W::name :boost-word t
  :senses (
   ((LF-PARENT ONT::MONTH-NAME)
;    (TEMPL value-templ)
    (templ nname-templ)
    )
   )
 :words (
  W::JANUARY W::FEBRUARY W::MARCH W::APRIL W::MAY W::JUNE W::JULY W::AUGUST W::SEPTEMBER W::OCTOBER W::NOVEMBER 
  W::DECEMBER w::jan w::feb W::mar W::apr W::may W::jun W::jul W::aug W::sep W::oct W::nov w::dec
  (w::jan w::punc-period) (w::feb  w::punc-period) (W::mar  w::punc-period) ( W::apr  w::punc-period) 
  (W::may  w::punc-period) (W::jun w::punc-period) (W::jul w::punc-period) (W::aug w::punc-period) (W::sep w::punc-period)
  (W::oct w::punc-period) (W::nov w::punc-period) (w::dec w::punc-period)))

(define-list-of-words :pos W::value :boost-word t
  :senses (
   ((LF-PARENT ONT::era)
    (TEMPL value-templ) (PREFERENCE 0.92)
    )
   )
 :words (
  (w::a w::d) (w::b w::c) (w::a. w::d.) (w::b. w::c.) w::ad w::bc
  (w::c w::e) (w::c. w::e.) w::ce
  (w::a w::c w::e) (w::a. w::c. w::e.) w::bce
   (w::b w::c w::e) (w::a. w::c. w::e.) w::ace
  ))

(define-list-of-words :pos W::value :boost-word t
  :senses (
   ((lf-parent ont::greek-letter-symbol)
    (templ value-templ)
    )
   )
 :words (
  w::alpha w::beta w::gamma w::delta w::epsilon w::zeta w::eta w::theta w::iota w::kappa w::lambda w::mu w::nu w::xi w::omicron w::pi w::rho w::sigma w::tau w::upsilon w::phi w::chi w::psi w::omega))

(define-list-of-words :pos W::value :boost-word t

  :senses (((LF-PARENT ONT::letter-symbol)
    (TEMPL value-templ)   (PREFERENCE 0.92)
    )
   )
 :words (
  W::A W::B W::C W::D W::E W::F W::G W::H W::I W::J W::K W::L W::M W::N W::O W::P W::Q W::R W::S W::T W::U W::V W::W 
  W::X W::Y W::Z w::dash w::hyphen))

(define-list-of-words :pos W::value :boost-word t

  :senses (((LF-PARENT ONT::letter-symbol)
    (TEMPL value-templ)   (PREFERENCE 0.92)
    )
   )
 :words (
	 w::alfa W::bravo W::charlie w::delta w::echo w::foxtrot w::golf w::hotel w::india w::juliett w::kilo w::lima w::mike w::november w::oscar w::papa w::quebec w::romeo w::sierra w::tango w::uniform w::victor w::whiskey w::xray w::yankee w::zulu))

(define-list-of-words :pos W::name
  :senses (((LF-PARENT ONT::holiday)
    (TEMPL nname-templ)
    )
   )
 :words ((w::all w::hallowes w::eve) (w::all w::saints w::day) (w::all w::saint^s w::day) (w::boxing w::day) w::christmas (w::day w::of w::the w::dead) w::easter w::halloween (w::independence w::day) (w::labor w::day) (w::martin w::luther w::king w::day) (w::mlk w::day)  (w::memorial w::day) (w::new w::year^s w::day) (w::new w::year^s w::eve) w::passover (w::president^s w::day) w::thanksgiving))

;; keeping one in for testing purposes w/o TT
(define-list-of-words :pos W::name

  :senses (((LF-PARENT ONT::country)
    (TEMPL nname-templ)
    )
   )
 :words (w::italy))

;; removing names since Parser gets them from TT now
;(define-list-of-words :pos W::name
;  :senses (((LF-PARENT ONT::country)
;    (TEMPL nname-templ)
;    )
;   )
; :words (w::canada w::china w::japan w::australia (w::new w::zealand)  (w::great w::britain) w::england w::britain w::scotland w::germany w::france w::india w::pakistan w::afghanistan w::turkmenistan w::azerbaijan w::russia w::portugal w::spain w::italy w::yugoslavia w::serbia w::croatia w::iceland w::greenland w::mexico w::argentina w::brazil w::venezuela w::ireland w::wales w::turkey w::iraq w::iran W::ONTARIO w::cosovo w::antarctica))

;(define-words :POS w::name :templ nname-templ
;  :WORDS (
;  (w::america
;   (SENSES
;    ((lf-parent ont::country)
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;      :comments gsa-dialogues))))
;  (w::usa
;   (SENSES
;    ((lf-parent ont::country)
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;      :comments gsa-dialogues))))
;))
  
;(define-words :POS w::name :templ name-templ
;  :WORDS (
;    ((w::the w::usa)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;      :comments gsa-dialogues))))
;
;    ((w::the w::us)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;                :comments gsa-dialogues))))
;
;    ((w::the w::u w::punc-period w::s w::punc-period)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;       (meta-data :origin step :entry-date 20080530 :change-date nil
;                                                    :comments nil))))
;
;  ((w::the w::u w::punc-period w::s w::punc-period w::a w::punc-period)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;     (meta-data :origin step :entry-date 20080530 :change-date nil
;                :comments nil))))
;
;   ((w::the w::states)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;                :comments gsa-dialogues))))
;   
;   ((w::the w::united w::states)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;                :comments gsa-dialogues))))
;
;   ((w::the w::united w::states w::of w::america)
;   (SENSES
;    ((lf-parent ont::country)
;     (preference .96) ;; don't compete with the article
;     (lf-form w::usa)
;     (meta-data :origin plow-travel :entry-date 20070925 :change-date nil
;                :comments gsa-dialogues))))
;   ))
;  


;(define-list-of-words :pos W::name
;  :senses (((LF-PARENT ONT::political-region)
;    (TEMPL name-templ)))
; :words ((w::british w::columbia) w::manitoba (w::northwest w::territories) (w::nova w::scotia) w::nunavut
;         W::ONTARIO w::quebec (w::prince w::edward w::island) (w::washington w::d w::c) (w::hong w::kong) w::jalisco w::europe w::africa 
;         w::asia (w::north w::america) (w::south w::america)
;                     ))

;(define-list-of-words :pos W::name
;  :senses (((LF-PARENT ONT::city)
;    (TEMPL nname-templ)))
; :words (w::paris (w::new w::york) w::toronto w::london w::dakar w::chicago w::tokyo w::boston w::berlin w::munich w::copenhagen w::redmond w::stockholm (w::san w::francisco) w::seattle w::vancouver
;                  w::moscow w::beijing w::kabul w::rochester))

;(define-list-of-words :pos W::name
;  :senses (((LF-PARENT ONT::us-state)
;    (TEMPL nname-templ)))
; :words (
;  W::ALABAMA  w::alaska w::arizona w::arkansas w::california w::colorado W::CONNECTICUT
;  W::DELAWARE w::florida W::GEORGIA w::hawaii w::idaho W::ILLINOIS W::INDIANA w::iowa
;  w::kansas W::KENTUCKY w::louisiana W::MAINE W::MARYLAND W::MASSACHUSETTS W::MICHIGAN w::minnesota
;  W::MISSISSIPPI W::MISSOURI w::montana w::nebraska   w::nevada (w::new w::hampshire) (w::new w::jersey)
;  (w::new w::mexico) (w::new w::york) (w::north W::CAROLINA)(w::north w::dakota) W::OHIO w::oklahoma w::oregon
;  W::PENNSYLVANIA (w::rhode w::island) (w::south w::carolina) (w::south w::dakota) W::TENNESSEE w::texas            
;  w::utah W::VERMONT W::VIRGINIA w::washington (w::west w::virginia) W::WISCONSIN w::wyoming))

;(define-list-of-words :pos W::name
;  :senses (((LF-PARENT ONT::geographic-region)
;            (TEMPL nname-templ)
;            )
;           )
; :words (w::pacific w::atlantic  w::arctic (w::north w::pole) (w::south w::pole) (w::arctic w::circle)))

(define-list-of-words :pos W::name
  :senses (((LF-PARENT ONT::language)
    (TEMPL nname-templ)
    )
   )
 :words (W::english w::portuguese w::catalan w::irish w::scottish w::australian w::indian w::chinese w::japanese w::italian w::dutch w::gaelic w::russian w::hebrew w::korean w::spanish w::german w::greek w::french w::danish w::swedish w::norwegian w::mayan w::african w::arabic w::croatian w::serbian w::welsh w::hindi w::turkish w::pashtun w::farsi (w::tok w::pisin)))

(define-list-of-words :pos W::name
  :senses (((LF-PARENT ONT::title)
	    (syntax (w::title +))
	    (templ nname-templ)
	    )
	   )
  :words (W::sir w::madam w::dr w::doctor w::professor W::president (W::prime w::minister) W::premier W::chairman (W::right W::honorable) (W::his W::highness) (w::cabinet w::minister) w::mr w::mrs w::ms (w::mr W::punc-period) (w::dr w::punc-period) (w::ms W::punc-period) (w::mrs w::punc-period) (W::her W::highness) w::queen w::king)
  )

(define-list-of-words :pos W::name
  :senses (((LF-PARENT ONT::planet)
    (TEMPL nname-templ)
    )
   )
 :words (w::earth w::jupiter w::saturn w::mars w::mercury w::venus w::pluto w::uranus w::neptune))

(define-words :pos W::n :templ PRED-NO-FORM-TEMPL
 :words (
  (W::AM
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  (W::pm
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::a W::m)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (LF-FORM W::AM)
     (preference 0.98) ;; reduce competion w/ the article
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::p W::m)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (LF-FORM W::PM)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::a W::punc-period W::m W::punc-period)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (preference 0.98) ;; reduce competion w/ the article
     (LF-FORM W::AM)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ((W::p W::punc-period W::m W::punc-period)
   (SENSES
    ((LF-PARENT ONT::time-object)
     (LF-FORM W::PM)
     (SEM (F::time-function F::day-period))
     )
    )
   )
  ))

(define-list-of-words :pos W::n
  :senses (((LF-PARENT ONT::time-interval)
    (SEM (F::time-function F::day-period))
    (templ time-reln-templ)
    )
   )
  ;; shouldn't eve and morn be separately identified as abbreviations?
 :words (W::MORNING W::AFTERNOON W::EVENING w::eve w::morn w::weekday w::weekend ))

(define-list-of-words :pos W::n
  :senses (;;;;; night is separate because we can have it with or without articles
   ((LF-PARENT ONT::time-interval)
    (SEM (F::time-function (? tf F::day-period f::day-point)))
    (templ time-reln-templ)
     )
   )
 :words (W::MIDDAY W::BEDTIME  w::night w::nighttime w::daytime w::twilight w::dawn w::lunchtime w::breakfasttime w::dinnertime (w::dinner w::time) (w::lunch w::time) (w::breakfast w::time) w::mealtime (w::meal w::time)))

;; at noon, midnight
;; why are these pronouns? 
(define-words :pos W::pro :templ PRONOUN-TEMPL
 :words (
  (W::noon
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-point))
     )
    )
   )
  (W::midnight
   (SENSES
    ((LF-PARENT ONT::time-object)
     (SEM (F::time-function F::day-point))
     )
    )
   )
  ))

