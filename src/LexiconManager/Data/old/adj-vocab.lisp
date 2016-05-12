
(in-package :lxm)

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (w::able
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("able%5:00:00:competent:00" "able%3:00:00" "able%5:00:00:capable:00"))
     (EXAMPLE "He is able to do this")
     (LF-PARENT ONT::able)
     (SEM (F::GRADABILITY F::+))
     (TEMPL CENTRAL-ADJ-optional-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     )
    )
   )

  (W::CAPABLE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("capable%5:00:00:competent:00" "capable%3:00:00" "capable%5:00:00:adequate:00") :comments caloy2)
     (EXAMPLE "He is a capable person")
     (LF-PARENT ONT::able)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::of))))
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::reasonable
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("reasonable%5:00:00:rational:00" "reasonable%3:00:00" "reasonable%5:00:00:moderate:00") :comments caloy3)
     (EXAMPLE "it's a reasonable suggestion")
     (LF-PARENT ONT::reasonable-VAL)
     (TEMPL central-adj-content-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("reasonable%5:00:00:rational:00" "reasonable%3:00:00" "reasonable%5:00:00:moderate:00") :comments caloy3)
     (EXAMPLE "reasonable person")
     (LF-PARENT ONT::reasonable-VAL)
     (TEMPL central-adj-experiencer-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::unreasonable
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("unreasonable%3:00:00" "unreasonable%5:00:00:immoderate:00") :comments caloy3)
     (EXAMPLE "it's an unreasonable suggestion")
     (LF-PARENT ONT::reasonable-VAL)
     (TEMPL central-adj-content-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("reasonable%5:00:00:rational:00" "reasonable%3:00:00" "reasonable%5:00:00:moderate:00") :comments caloy3)
     (EXAMPLE "reasonable person")
     (LF-PARENT ONT::reasonable-VAL)
     (TEMPL central-adj-experiencer-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::crazy
    (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :wn ("crazy%5:00:00:insane:00" "crazy%5:00:00:impractical:00") :comments caloy3)
     (EXAMPLE "he is a crazy person")
     (LF-PARENT ONT::insane)
     (TEMPL central-adj-experiencer-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :wn ("reasonable%5:00:00:rational:00" "reasonable%3:00:00" "reasonable%5:00:00:moderate:00") :comments caloy3)
     (EXAMPLE "crazy idea")
     (LF-PARENT ONT::insane)
     (TEMPL central-adj-content-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )   
   )
    (W::sane
     (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("sane%5:00:00:rational:00" "sane%3:00:00") :comments caloy3)
     (EXAMPLE "he is a sane person")
     (LF-PARENT ONT::reasonable-VAL)
     (TEMPL central-adj-experiencer-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :comments caloy3)
     (EXAMPLE "reasonable idea")
     (LF-PARENT ONT::reasonable-VAL)
     (TEMPL central-adj-content-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
    (W::insane
     (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :wn ("insane%3:00:00" "insane%5:00:00:foolish:00") :comments caloy3)
     (EXAMPLE "he's insane")
     (LF-PARENT ONT::insane)
     (TEMPL central-adj-experiencer-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :comments caloy3)
     (EXAMPLE "that's insane")
     (LF-PARENT ONT::insane)
     (TEMPL central-adj-content-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
 (W::natural
     (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("natural%3:00:01") :comments nil)
     (EXAMPLE "an earthquake is a natural disaster")
     (LF-PARENT ONT::natural-VAL)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
 (W::unnatural
     (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date 20090731 :wn ("unnatural%3:00:00") :comments nil)
     (EXAMPLE "don't turn him into anything unnatural")
     (LF-PARENT ONT::artificial)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::artificial
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date 20090731 :wn ("artificial%3:00:00") :comments nil)
     (LF-PARENT ONT::artificial)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::fake
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date 20090731 :wn ("fake%5:00:00:counterfeit:00" "fake%5:00:00:artificial:00") :comments nil)
     (LF-PARENT ONT::artificial)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::phony
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060425 :change-date nil :wn ("phony%5:00:00:counterfeit:00") :comments nil)
     (LF-PARENT ONT::natural-VAL)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::responsible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("responsible%3:00:00") :comments caloy3)     
     (EXAMPLE "responsible person")
     (LF-PARENT ONT::responsibility-VAL)     
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("responsible%3:00:00") :comments caloy3)     
     (EXAMPLE "responsible person")
     (LF-PARENT ONT::responsibility-VAL)  
     (TEMPL central-adj-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
    )
   )
   (W::irresponsible
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date nil :wn ("irresponsible%3:00:00") :comments caloy3)
     (EXAMPLE "He is an irresponsible person")
     (LF-PARENT ONT::responsibility-VAL)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::incompetent
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :wn ("incompetent%3:00:00") :comments caloy3)
     (EXAMPLE "He is an incompetent person")
     (LF-PARENT ONT::unable)
     (TEMPL less-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::incapable
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :wn ("incapable%3:00:00" "incapable%5:00:00:incompetent:00") :comments caloy3)
     (EXAMPLE "He is incapable of reason")
     (LF-PARENT ONT::unable)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::of))))
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::competent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060125 :change-date 20090731 :wn ("competent%3:00:00") :comments caloy3)
     (EXAMPLE "He is an incompetent person")
     (LF-PARENT ONT::able)
     (TEMPL central-adj-TEMPL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::WIRELESS
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20030605 :change-date nil :wn ("wireless%3:00:00") :comments calo-y1script)
     (LF-PARENT ONT::WIRELESS)
     )
    )
   )
  (W::interchangeable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060615 :change-date 20090818 :wn ("interchangeable%5:00:00:symmetrical:00" "interchangeable%5:00:00:replaceable:00") :comments pqx)
     (LF-PARENT ONT::can-be-done-val)
     )
    )
   )
  (W::rechargeable
   (SENSES
    ((meta-data :origin plow :entry-date 20060615 :change-date 20090818 :wn ("rechargeable%5:00:00:reversible:00") :comments pqx)
     (LF-PARENT ONT::can-be-done-val)
     )
    )
   )
  (W::cordless
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060615 :change-date 20090915 :wn ("cordless%3:01:00") :comments pqx)
     (LF-PARENT ONT::substantial-property-val)
     )
    )
   )
   (W::conditional
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin integrated-learning :entry-date 20050815 :change-date 20090731 :wn ("conditional%3:00:00") :comments nil)
     (LF-PARENT ONT::DEPENDENT)
     )
    )
   )
   ((w::ad w::hoc)
   (SENSES
    ((meta-data :origin task-learning :entry-date 20060524 :change-date nil :wn ("ad_hoc%5:00:00:unplanned:00" "ad_hoc%5:00:00:specific:00") :comments nil)
     (example "an ad hoc solution")
     (LF-PARENT ONT::status-val)
     )
    )
   )
   (w::haphazard
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20060524 :change-date nil :wn ("haphazard%5:00:00:random:00" "haphazard%5:00:00:careless:00") :comments nil)
     (example "a haphazard solution")
     (LF-PARENT ONT::status-val)
     )
    )
   )
   (w::spontaneous
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20060524 :change-date nil :wn ("spontaneous%3:00:00" "spontaneous%5:00:00:unscripted:00") :comments nil)
     (example "a spontaneous solution")
     (LF-PARENT ONT::status-val)
     )
    )
   )
   (w::ingeneous
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20060524 :change-date nil :comments nil)
     (example "an ingeneous solution")
     (LF-PARENT ONT::intelligence-val)
     (templ central-adj-content-templ)
     )
    )
   )
   ((w::round w::trip)
   (SENSES
    ((meta-data :origin plow :entry-date 20060531 :change-date 20090818 :comments pq405)
     (example "a round trip ticket")
     (LF-PARENT ONT::temporal)
     )
    )
   )
   ;; derive from verb
;   (w::found
;   (SENSES
;    ((meta-data :origin coordops :entry-date 200670620 :change-date nil :comments nil)
;     (example "target found")
;     (LF-PARENT ONT::status-val)
;     (TEMPL postpositive-adj-optional-xp-templ)
;     )
;    )
;   )
;   (w::lost
;   (SENSES
;    ((meta-data :origin coordops :entry-date 200670620 :change-date nil :comments nil)
;     (example "target lost")
;     (LF-PARENT ONT::status-val)
;     (TEMPL postpositive-adj-optional-xp-templ)
;     )
;    )
;   )
   (w::exclusive
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("exclusive%5:00:00:unshared:00" "exclusive%3:00:00" "exclusive%5:00:00:concentrated:00") :comments pq)
     (example "an exclusive resort")
     (LF-PARENT ONT::status-val)
     )
    )
   )
   (w::inclusive
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :wn ("inclusive%3:00:00") :comments pq)
     (example "an inclusive resort")
     (LF-PARENT ONT::status-val)
     )
    )
   )
   ((W::all w::inclusive)
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :comments pq)
     (example "an all inclusive resort")
     (LF-PARENT ONT::status-val)
     )
    )
   )
   ((W::on w::time)
   (SENSES
    ((meta-data :origin plow :entry-date 20060629 :change-date 20090818 :wn ("on_time%5:00:00:punctual:00") :comments pq)
     (example "flights with on time arrival")
     (LF-PARENT ONT::temporal)
     )
    )
   )
    ((W::on w::site)
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :comments pq0404)
     (example "on site laundry facilities")
     (LF-PARENT ONT::location-val)
     )
    )
   )
   (W::onsite
   (SENSES
    ((meta-data :origin plow :entry-date 20060530 :change-date nil :comments pq0404)
     (example "on site laundry facilities")
     (LF-PARENT ONT::location-val)
     )
    )
   )
   (W::inbound
   (SENSES
    ((meta-data :origin plow :entry-date 20060712 :change-date 20090731 :wn ("inbound%5:00:00:incoming:00") :comments caloy3)
     (example "inbound flights")
     (LF-PARENT ONT::INCOMING)
     )
    )
   )
   (W::outbound
   (SENSES
    ((meta-data :origin plow :entry-date 20060712 :change-date 20090731 :wn ("outbound%5:00:00:outgoing:00") :comments caloy3)
     (example "outbound flights")
     (LF-PARENT ONT::OUTGOING)
     )
    )
   )
   (W::incoming
   (SENSES
    ((meta-data :origin plow :entry-date 20060712 :change-date 20090731 :wn ("incoming%3:00:00") :comments caloy3)
     (example "inbound flights")
     (LF-PARENT ONT::INCOMING)
     )
    )
   )
   (W::outgoing
   (SENSES
    ((meta-data :origin plow :entry-date 20060712 :change-date 20090731 :wn ("outgoing%3:00:00") :comments caloy3)
     (example "outbound flights")
     (LF-PARENT ONT::OUTGOING)
     )
    )
   )
   (W::nonstop
   (SENSES
    ((meta-data :origin plow :entry-date 20060524 :change-date 20090818 :wn ("nonstop%5:00:00:direct:00") :comments pq0405)
     (example "which airlines have nonstop flights to atlanta")
     (LF-PARENT ONT::involves-doing-val)
     )
    )
   )
   (W::nonsmoking
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090818 :comments caloy3)
     (example "all rooms are nonsmoking")
     (LF-PARENT ONT::allows-doing-val)
     )
    )
   )
   (W::smoking
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090818 :comments caloy3)
     (example "I'd like to reserve a smoking room")
     (LF-PARENT ONT::allows-doing-val)
     )
    )
   )
   (W::polite
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051216 :change-date nil :wn ("polite%3:00:00") :comments nil)
     (LF-PARENT ONT::manner)
     )
    )
   )
   (W::spatial
     (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("spatial%3:01:00") :comments nil)
     (LF-PARENT ONT::size-val)
     (example "spatial requirements")
     )
    )
   )
   (W::commercial
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("commercial%3:00:00") :comments nil)
     (LF-PARENT ONT::commerce-val)
     (example "commercial applications")
     )
    )
   )
   (W::rental
   (SENSES
    ((meta-data :origin plow :entry-date 20070321 :change-date nil :wn ("commercial%3:00:00") :comments travel)
     (LF-PARENT ONT::commerce-val)
     (example "a rental car")
     )
    )
   )
   (W::chief
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("chief%5:00:02:important:00") :comments nil)
     (LF-PARENT ONT::importance-val)
     (example "chief engineer")
     )
    )
   )
   (W::senior
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090731 :wn ("senior%3:00:00") :comments nil)
     (LF-PARENT ONT::primary)
     (example "senior scientist")
     )
    )
   )
   (W::junior
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090731 :wn ("junior%3:00:00") :comments nil)
     (LF-PARENT ONT::SECONDARY)
     (example "junior scientist")
     )
    )
   )
   ;; derive from verb
;   (W::applied
;   (SENSES
;    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("applied%3:44:00" "applied%3:00:00" "applied%5:00:00:practical:00") :comments nil)
;     (LF-PARENT ONT::has-been-done-val)
;     (example "applied physics")
;     )
;    )
;   )
   (W::theoretical
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090818 :wn ("theoretical%3:00:00" "theoretical%3:00:00") :comments nil)
     (LF-PARENT ONT::has-been-done-val)
     (example "theoretical physics")
     )
    ((meta-data :origin adj-reorg :entry-date 20090818 :change-date 20090915 :comments nil)
     (LF-PARENT ONT::nonactual)
     (example "theoretically, theory and practice are the same")
     )
    )
   )
  (W::likely
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("likely%5:00:00:prospective:00") :comments html-purchasing-corpus)
     (EXAMPLE "He is likely to do this")
     (LF-PARENT ONT::expectation-val)
     (SEM (F::GRADABILITY F::+))
     (TEMPL central-adj-xp-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     )
    ;; it is likely that....
    )
   )
  ;; derive from verb
;   (W::supposed
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090416 :change-date nil :wn ("likely%5:00:00:prospective:00") :comments html-purchasing-corpus)
;     (EXAMPLE "He is supposed to do this")
;     (LF-PARENT ONT::expectation-val)
;     (SEM (F::GRADABILITY F::+))
;     (TEMPL central-adj-xp-TEMPL (XP (% W::cp (W::ctype W::s-to))))
;     )
;    )
;   )
  (W::potential
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("potential%5:00:00:prospective:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::expectation-val)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::unlikely
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("unlikely%5:00:00:implausible:00") :comments html-purchasing-corpus)
     (EXAMPLE "He is unlikely to do this")
     (LF-PARENT ONT::expectation-val)
     (SEM (F::GRADABILITY F::+))
     (TEMPL central-ADJ-xp-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     )
    ;; it is unlikely that...
    )
   )
   (W::unexpected
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("unexpected%3:00:00") :comments html-purchasing-corpus)
      (EXAMPLE "an unexpected surprise")
      (LF-PARENT ONT::expectation-val)
      (SEM (F::GRADABILITY F::+))
      )
     ;; it is unexpected that...
     )
    )
   (W::unbelievable
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("unbelievable%5:00:00:implausible:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::expectation-val)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::ACCEPTABLE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("acceptable%3:00:00"))
     (LF-PARENT ONT::good)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
   (W::UNACCEPTABLE
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080222 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::bad)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  ((w::so w::so)
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080422 :change-date nil :comments nil)
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::neutral) (f::intensity ont::-))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
    (W::UNsupportable
       (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::bad)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::supportable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::good)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::lo))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
  )
   (W::UNbearable
       (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080222 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::bad)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::bearable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080222 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::good)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::lo))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
  )
  (W::intolerable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080222 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::bad)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::tolerable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080222 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::good)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
  )
  (W::accessible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("accessible%3:00:00"))
     (LF-PARENT ONT::accessibility-val)
     (example "the routes are accessible by helicopter")
     (SEM (F::GRADABILITY F::+))
     (TEMPL central-adj-xp-templ (XP (% W::PP (W::PTYPE (? pt W::on W::for w::by)))))
     )
    )
   )
   (W::inaccessible
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::INACCESSIBLE)
     (example "the routes are inaccessible by helicopter")
     (SEM (F::GRADABILITY F::+))
     (TEMPL central-adj-xp-templ (XP (% W::PP (W::PTYPE (? pt W::on W::for w::by)))))
     (meta-data :origin calo-ontology :entry-date 20051209 :change-date 20090731 :wn ("inaccessible%3:00:00") :comments nil)
     )
    )
   )
   (W::unaccessible
   (SENSES
    ((LF-PARENT ONT::INACCESSIBLE)
     (example "the routes are inaccessible by helicopter")
     (SEM (F::GRADABILITY F::+))
     (TEMPL central-adj-xp-templ (XP (% W::PP (W::PTYPE (? pt W::on W::for w::by)))))
     (meta-data :origin calo-ontology :entry-date 20051209 :change-date 20090731 :wn ("inaccessible%3:00:00") :comments nil)
     )
    )
   )
  (W::ACTIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::active)
     (SEM (F::GRADABILITY F::+))
     (TEMPL postpositive-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::active)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::INACTIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090818 :change-date nil :comments nil)
     (LF-PARENT ONT::active)
     (SEM (F::GRADABILITY F::+))
     (TEMPL postpositive-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20090818 :change-date nil :comments nil)
     (LF-PARENT ONT::active)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::passive
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::INACTIVE)
     (SEM (F::GRADABILITY F::+))
     (example "passive listener")
     (meta-data :origin calo-ontology :entry-date 20060713 :change-date 20090731 :wn ("passive%3:00:01") :comments ma-request)
     )
    )
   )
  (W::idle
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::INACTIVE)
     (SEM (F::GRADABILITY F::+))
     (EXAMPLE "a yellow dot indicates the person is idle")
     (meta-data :origin task-learning :entry-date 20050826 :change-date 20090731 :wn ("idle%3:00:00") :comments nil)
     )
    )
   )
  (W::PERSONAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040406 :change-date 20090731 :wn ("personal%3:00:00") :comments calo-y1v5)
     (LF-PARENT ONT::private)
     )
    )
   )
  (W::public
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050815 :change-date nil :wn ("public%3:00:00") :comments nil)
     (LF-PARENT ONT::status-val)
     )
    )
   )
  (W::private
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050817 :change-date 20090731 :wn ("private%5:00:00:inward:00") :comments nil)
     (LF-PARENT ONT::private)
     )
    )
   )
  (W::secret
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050824 :change-date 20090731 :wn ("secret%5:00:00:inward:00") :comments nil)
     (LF-PARENT ONT::private)
     )
    )
   )
  (W::compatible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041116 :change-date 20090818 :wn ("compatible%3:00:01") :comments caloy2)
     (LF-PARENT ONT::can-be-done-val)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::with))))
     )
    )
   )
  (W::friendly
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050822 :change-date 20080926 :wn ("friendly%3:00:01") :comments nil)
     (LF-PARENT ONT::social-interaction-VAL)
      (EXAMPLE "friendly person" "friendly atmosphere")
      (templ central-adj-templ)
     )
    )
   )
  (W::affectionate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050909 :change-date  20080926 :wn ("affectionate%5:00:00:loving:00") :comments nil)
     (LF-PARENT ONT::social-interaction-VAL)
      (EXAMPLE "this class of dogs is affectionate")
      (templ central-adj-templ)
     )
    )
   )
  (W::networkable
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date 20090818 :comments projector-purchasing)
     (LF-PARENT ONT::can-be-done-val)
     )
    )
   )
  (W::decent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :wn ("decent%5:00:00:respectable:00") :comments caloy2 :comlex (ADJECTIVE))
    (example "a good book")
    (LF-PARENT ONT::ACCEPTABILITY-VAL)
    (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
    (TEMPL central-adj-templ)
    )
;;;   ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :wn ("decent%5:00:00:respectable:00") :comments caloy2)
;;;    (example "a wall good for climbing")
;;;    (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;    (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
;;;    )
;;;   ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :wn ("decent%5:00:00:respectable:00") :comments caloy2)
;;;    (EXAMPLE "a drug suitable for cancer")
;;;    (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;    ;; this is a sense that allows for implicit/indirect senses of "for"
;;;    ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;    ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;    (TEMPL adj-purpose-implicit-XP-templ)
;;;    )
;;;   ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :wn ("decent%5:00:00:respectable:00") :comments caloy2)
;;;    (EXAMPLE "a solution good for him")
;;;    (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;    ;; this is another indirect sense of "for"
;;;    ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;    ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;    (TEMPL adj-affected-XP-templ)
;;;    )
   )      
   )
  (W::incompatible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041116 :change-date 20090818 :wn ("incompatible%3:00:01") :comments caloy2)
     (LF-PARENT ONT::can-be-done-val)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::with))))
     )
    )
   )
  (W::redundant
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041116 :change-date 20090915 :wn ("redundant%5:00:00:unnecessary:00") :comments caloy2)
     (LF-PARENT ONT::part-whole-val)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::with))))
     )
    )
   )
  ((W::step w::by w::step)
   (SENSES
    ((lf-parent ont::incremental-val)
     (meta-data :origin plot :entry-date 20080529 :change-date nil :comments nil)
     (example "a step by step plan")
     )
    )
   )
  (w::incremental
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((lf-parent ont::incremental-val)
     (meta-data :origin plot :entry-date 20080529 :change-date nil :comments nil)
     (example "incremental processing")
     )
    )
   )
  (W::further
   (SENSES
    ((LF-PARENT ONT::PART-WHOLE-val)
     (example "there are no further problems")
     (SEM (F::GRADABILITY F::-))
     (meta-data :origin calo-ontology :entry-date 20060124 :change-date nil :wn ("further%5:00:00:far:00") :comments caloy3)
     )
    )
   )
  (W::supplemental
   (SENSES
    ((LF-PARENT ONT::PART-WHOLE-val)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("supplemental%5:00:00:secondary:00") :comments pq0236)
     (SEM (F::GRADABILITY F::-))
     (TEMPL central-adj-optional-xp-TEMPL)
     )
    )
   )
  (W::ADDITIONAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::PART-WHOLE-val)
     (meta-data :origin calo :entry-date 20040406 :change-date nil :wn ("additional%5:00:03:additive:00") :comments calo-y1v5)
     (SEM (F::GRADABILITY F::-))
     (TEMPL central-adj-optional-xp-TEMPL)
     )
    )
   )
  (W::removable
   (SENSES
    ((LF-PARENT ONT::PART-WHOLE-val)
     (SEM (F::GRADABILITY F::-))
     (meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("removable%3:00:00") :comments caloy2)
     )
    )
   )
  (W::ALIKE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("alike%3:00:00"))
     (LF-PARENT ONT::SIMILARITY-VAL)
     (TEMPL adj-theme-templ)
     )
    )
   )
  
  (W::ALLRIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::ALRIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     (LF-FORM W::ALLRIGHT)	  
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (LF-FORM W::ALLRIGHT)	  
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (LF-FORM W::ALLRIGHT)	  
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     (LF-FORM W::ALLRIGHT)	  
     )
    )
   )
  
  ((W::ALL W::RIGHT)
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     (LF-FORM W::ALLRIGHT)	  
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (LF-FORM W::ALLRIGHT)	  
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (LF-FORM W::ALLRIGHT)	  
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("alright%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     (LF-FORM W::ALLRIGHT)	  
     )
    )
   )
            
  (W::ALTERNATE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("alternate%5:00:00:secondary:00"))
     (LF-PARENT ONT::similarity-val)
     (TEMPL adj-co-theme-templ)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::appropriate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("appropriate%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a good book")
     (LF-PARENT ONT::appropriateness-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("appropriate%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))    
     (example "a wall good for climbing")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("appropriate%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))    
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("appropriate%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))    
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::suitable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (example "a good book")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (example "a wall good for climbing")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

   (W::unsuitable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin caloy2 :entry-date 20050418 :change-date 20061106 :wn ("suitable%5:00:00:appropriate:00") :comments projector-purchasing :comlex (ADJECTIVE))
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::available
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("available%5:00:00:disposable:00"))
     (EXAMPLE "that's available to go")
     (LF-PARENT ONT::AVAILABLE)
     (SEM (F::GRADABILITY F::+))
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("available%5:00:00:disposable:00"))
     (EXAMPLE "that's available [for use]")
     (LF-PARENT ONT::AVAILABLE)
     (SEM (F::GRADABILITY F::+))
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::pp (W::ptype (? pt W::for w::to)))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("available%5:00:00:disposable:00"))
     (example "the trucks available are one and three")
     (LF-PARENT ONT::AVAILABLE)
     (SEM (F::GRADABILITY F::+))
     (TEMPL postpositive-adj-optional-xp-templ)
     )
     ((meta-data :origin windmills :entry-date 20080606 :change-date 20090731 :comments nil :wn ("available%5:00:00:disposable:00"))
     (example "it is available in 4 MW capacity")
     (LF-PARENT ONT::AVAILABLE)
     (SEM (F::GRADABILITY F::+))
     (TEMPL adj-subcat-property-templ)
     )
    )
   )
  
  (W::universal
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040205 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::status-val)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::expandable
   (SENSES
    ((meta-data :origin calo :entry-date 20041119 :change-date nil :wn ("expandable%5:00:00:expansive:00") :comments caloy2)
     (LF-PARENT ONT::property-val)
     (example "an expandable platform")
     )
    )
   )
  (W::linear
   (SENSES
    ((meta-data :origin calo :entry-date 20041122 :change-date 20090731 :wn ("linear%3:00:02") :comments caloy2)
     (LF-PARENT ONT::analog) ;; like analog
     (example "a linear amplifier")
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::flexible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041119 :change-date nil :wn ("flexible%3:00:02") :comments caloy2)
     (LF-PARENT ONT::property-val)
     (example "a flexible arrangement")
     )
    )
   )
   (W::portable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041206 :change-date nil :wn ("portable%3:00:00") :comments caloy2)
     (LF-PARENT ONT::property-val)
     (example "a portable computer")
     )
    )
   )
  ((W::on w::hand)
   (SENSES
    ((example "use what you have on hand")
     (meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("on_hand%5:00:00:available:00") :comments s15)
     (LF-PARENT ONT::availability-val)
     (SEM (F::GRADABILITY F::-))
     (TEMPL postpositive-adj-templ)
     )
    )
   )
  (W::usable
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("usable%5:00:00:disposable:00") :comments html-purchasing-corpus)     
     (LF-PARENT ONT::availability-val)
     (SEM (F::GRADABILITY F::+))
     (TEMPL adj-purpose-optional-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    )
   )
  
  (W::unusable
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("unusable%5:00:00:useless:00") :comments nil)
     (EXAMPLE "your attachment may be unusable")
     (LF-PARENT ONT::availability-val)
     (SEM (F::GRADABILITY F::-))
     (TEMPL adj-purpose-optional-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    )
   )
  (W::burnable
   (SENSES
    ((meta-data :origin calo :entry-date 20040921 :change-date nil :wn ("burnable%5:00:00:combustible:00") :comments caloy2)
     (LF-PARENT ONT::rw-status-val)
     (example "I want a burnable cd rom")
     (SEM (F::GRADABILITY F::-))
     (TEMPL central-adj-templ)
     )
    )
   )
  (W::AVERAGE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("average%5:00:00:moderate:00"))
     (LF-PARENT ONT::Size-Val)
     )
    )
   )
  (W::AWFUL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("awful%5:00:00:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a good book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("awful%5:00:00:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("awful%5:00:00:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (LF-PARENT ONT::bad)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("awful%5:00:00:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-NP-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::clumsy
   (wordfeats (W::morph (:FORMS (-LY))))   
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("clumsy%5:00:00:awkward:00") :comlex (ADJECTIVE))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
  
  (W::BAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00"))
     (example "a good book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a wall good for climbing")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::bad)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("bad%3:00:00") :comlex (ADJ-PP-FOR))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

   (W::darn
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080509 :change-date nil :comments LM-vocab)
     (example "the darn book")
     (LF-PARENT ONT::expletive-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
   
  (W::exceptional
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::acceptability-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::lame
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
   (W::magnificent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
   (W::remarkable
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::marvelous
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::crummy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::dismal
    (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::wretched
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
   (W::insupportable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::insufferable
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::bad)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

   (W::excruciating
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "an excruciating pain")
     (LF-PARENT ONT::severity-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ))
 
   (W::lousy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::bad)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::mediocre
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "an exceptional book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "a wall exceptional for climbing")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::lo))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
      (EXAMPLE "a drug exceptional for cancer")
     (LF-PARENT ONT::bad)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::lo))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  (W::worrisome
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04"))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("worrisome%3:00:04") :comlex (ADJ-PP-FOR))
     (EXAMPLE "a solution good for him")
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )        
    )
   )
  
  (W::troublesome
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("troublesome%5:00:00:difficult:00") :comlex (EXTRAP-ADJ-THAT-S))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("troublesome%5:00:00:difficult:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("troublesome%5:00:00:difficult:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("troublesome%5:00:00:difficult:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::problematic
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("problematic%5:00:00:questionable:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("problematic%5:00:00:questionable:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("problematic%5:00:00:questionable:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("problematic%5:00:00:questionable:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::horrible
   (SENSES
    ((meta-data :origin calo :entry-date 20041119 :change-date 20061106 :wn ("horrible%5:00:00:alarming:00") :comments caloy2 :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin calo :entry-date 20041119 :change-date 20061106 :wn ("horrible%5:00:00:alarming:00") :comments caloy2 :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin calo :entry-date 20041119 :change-date 20061106 :wn ("horrible%5:00:00:alarming:00") :comments caloy2 :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin calo :entry-date 20041119 :change-date 20061106 :wn ("horrible%5:00:00:alarming:00") :comments caloy2 :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::WICKED
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date 20061106 :wn ("wicked%5:00:00:intense:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    )
   )

   (W::lovely
   (wordfeats (W::morph (:FORMS (-er))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments nil :wn ("beautiful%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a lovely book")
     (LF-PARENT ONT::BEAUTIFUL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20090129 :change-date 20090731 :comments nil :wn ("beautiful%3:00:00")  :comlex (ADJ-PP-FOR))
     (example "a thing lovely for him")
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (LF-PARENT ONT::BEAUTIFUL)
     (TEMPL adj-affected-XP-templ)
     )
    )  
   )

  (W::BEAUTIFUL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("beautiful%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a beautiful book")
     (LF-PARENT ONT::BEAUTIFUL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("beautiful%3:00:00")  :comlex (ADJ-PP-FOR))
     (example "a person beautiful for him")
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (LF-PARENT ONT::BEAUTIFUL)
     (TEMPL adj-affected-XP-templ)
     )
    )  
   )  
 
  (W::BEST
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("best%3:00:00"))
     (LF-PARENT ONT::max-val)
     (lf-form w::good)
     (TEMPL SUPERL-TEMPL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )

    (W::BETTER
   (wordfeats (W::COMPARATIVE +) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("better%3:00:00"))
     (LF-PARENT ONT::MORE-VAL)
     (lf-form w::good)
     (TEMPL COMPAR-TEMPL)
     (SEM (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

    
  (W::WORSE
   (wordfeats (W::COMPARATIVE +)  (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20080918 :comments nil :wn ("worse%3:00:00"))
     (LF-PARENT ONT::LESS-VAL)
     (lf-form w::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL COMPAR-TEMPL)
     )
    )
   )
  (W::WORST
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::ACCEPTABILITY-VAL))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20080918 :comments nil :wn ("worst%3:00:00"))
     (LF-PARENT ONT::MIN-VAL)
     (lf-form w::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL SUPERL-TEMPL)
     )
    )
   )
  
  
  ;; should be handled with qmodifier
;  (W::MORE
;   (wordfeats (W::COMPARATIVE +) (W::FUNCTN ONT::COMPARE-VAL))
;   (SENSES
;    ((LF-PARENT ONT::MORE-VAL)
;     (meta-data :origin calo :entry-date 20060512 :change-date nil :comments projector-purchasing)
;     (example "more results")
;     (TEMPL COMPAR-TEMPL)
;     )
;    )
;   )
  

  (W::MOST
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::COMPARE-VAL))
   (SENSES
    ((LF-PARENT ONT::MAX-VAL)
     (TEMPL SUPERL-TEMPL)
     (meta-data :origin calo :entry-date 20050505 :change-date nil :wn ("most%3:00:02") :comments projector-purchasing)
     (example "the most fun I've had in years")
     )
    )
  )

  (W::least
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::COMPARE-VAL))
   (SENSES
    ((LF-PARENT ONT::MIN-VAL)
     (TEMPL SUPERL-TEMPL)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "the least fun I've had in years")
     )
    )
  )
 
  (W::BIG
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("big%3:00:01"))
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )
   (W::enormous
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070827 :change-date 20090731 :comments nil :wn ("big%3:00:01"))
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )

   ;; derive from verb
;  (W::BLOCKED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090915 :comments nil :wn ("blocked%5:00:00:closed:00" "blocked%5:00:01:obstructed:00"))
;     (LF-PARENT ONT::obstructed)
;     )
;    )
;   )
  (W::BOTTOM
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("bottom%3:00:00"))
     (LF-PARENT ONT::LOCATION-VAL)
     )
    )
   )
  ;; should be handled as past part of V
;  (W::BROKEN
;   (SENSES
;    ((LF-PARENT ONT::IN-WORKING-ORDER-val)
;     )
;    )
;   )

  ((w::out w::of w::whack)
   (SENSES
    ((LF-PARENT ONT::IN-WORKING-ORDER-val)
     (example "the system is out of whack")
     (meta-data :origin cardiac :entry-date 20080327 :change-date nil :comments nil)
     )
    )
   )
  (W::CHEAP
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("cheap%3:00:00"))
     (LF-PARENT ONT::inexpensive)
     (TEMPL LESS-adj-TEMPL)
     )
    )
   )
  (W::CIRCULAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("circular%3:00:00"))
     (LF-PARENT ONT::ROUTE-TOPOLOGY-val)
     )
    )
   )

  (W::CLOSE
   (wordfeats (W::MORPH (:FORMS (-ER))) (W::COMP-OP W::LESS) (W::ALLOW-POST-N1-SUBCAT +))
   (SENSES
    ;; 06/02/2010 reinstating this sense for PTB tests at jfa's request. It had been commented out because it interfered with interpretations for PLOW, e.g. a restaurant close to a hotel, which had the ADV sense similar to near.
    ((EXAMPLE "They are close/ the church is close to the house" "The session losses left municipal dollar bonds close to where they were before the 190.58-point drop ")
     (LF-PARENT ONT::DISTANCE-VAL)
    (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::Ptype W::to))))
    )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("close%3:00:05"))
     (example "it was a close call")
     (LF-PARENT ONT::near)
     (templ adj-theme-templ)
     (SEM (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
   
  (W::CLOSEBY
   (SENSES
    ((LF-PARENT ONT::DISTANCE-VAL)
     (example "the houses are close by")
     (TEMPL ADJ-THEME-TEMPL)
     (SEM (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
   ((W::CLOSE W::BY)
   (wordfeats (W::MORPH (:FORMS (-ER))) (W::COMP-OP W::LESS))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :comments nil)
     (LF-PARENT ONT::DISTANCE-VAL)
     (example "the houses are close by")
     (TEMPL ADJ-THEME-TEMPL)
     (SEM (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
   (W::REMOTE
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("remote%5:00:01:far:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::REMOTE)
      (example "a remote possibility" "remote control")
      (templ adj-theme-templ)
      (SEM (f::orientation ont::more) (f::intensity ont::hi))
      )
     )
    )
  (W::COASTAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("coastal%3:01:00"))
     (LF-PARENT ONT::GEO-FEATURE-VAL)
     )
    )
   )
  
  (W::COHERENT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("coherent%3:00:00") :comlex (ADJECTIVE))
     (example "a coherent story")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
  (W::COMPLETE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("complete%3:00:00"))
     (LF-PARENT ONT::part-whole-val) ;; like total
     )
    )
   )
   (W::UTTER
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::part-whole-val) ;; like total
     )
    )
   )
   (W::manageable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::manageable)
     )
    )
   )
   (W::unmanageable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::unmanageable)
     )
    )
   )
   (W::uncontrollable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::unmanageable)
     )
    )
   )
  (W::controllable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::manageable)
     )
    )
   )
  ;; derive from verb
;  (W::COMPLETED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("completed%5:00:00:complete:00"))
;     (LF-PARENT ONT::FINISHED)
;     (SEM (F::GRADABILITY F::-))
;     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("completed%5:00:00:complete:00"))
;     (LF-PARENT ONT::FINISHED)
;     (SEM (F::GRADABILITY F::-))
;     (TEMPL postpositive-ADJ-TEMPL)
;     )
;    )
;   )
;  (W::COMPLICATED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("complicated%5:00:00:complex:00"))
;     (EXAMPLE "This is complicated for him")
;     (LF-PARENT ONT::difficult)
;     (SEM (F::GRADABILITY F::+))
;     (TEMPL adj-content-affected-xp-templ) 
;     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("complicated%5:00:00:complex:00"))
;     (EXAMPLE "it's complicated to do")
;     (LF-PARENT ONT::difficult)
;     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
;     )
;    )
;   )
;  (W::CONFUSED
;   (wordfeats (W::morph (:FORMS (-LY))))
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("confused%5:00:00:perplexed:00"))     
;     ;; Changed by Myrosia to human-property-val, because correctness pertains mainly to information objects, and confused is for people
;     (LF-PARENT ONT::psychological-property-val)
;     (SEM (F::GRADABILITY F::+))
;     (templ central-adj-experiencer-templ)
;     )
;    )
;   )
  
  (W::CONFUSING
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("confusing%5:00:00:disorienting:00"))
     (EXAMPLE "that's confusing [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (SEM (F::GRADABILITY F::+))
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    )
   )
  ;; derive from verb
;  (W::CONGESTED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090915 :comments nil :wn ("congested%5:00:00:full:00"))
;     (LF-PARENT ONT::obstructed)
;     (SEM (F::GRADABILITY F::+))
;     )
;    )
;   )
  (W::COOL
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("cool%5:00:00:fashionable:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     )
    ((meta-data :origin plow :entry-date 20060712 :change-date 20090731 :wn ("cool%3:00:01") :comments plow-req)
      (LF-PARENT ONT::COLD)
      (TEMPL LESS-ADJ-TEMPL)
      )
    )
   )
  (W::warm
   (wordfeats (W::MORPH (:FORMS (-ER -ly))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060713 :change-date 20090731 :wn ("warm%3:00:01") :comments plow-req)
      (LF-PARENT ONT::WARM)
      (TEMPL LESS-ADJ-TEMPL)
      )
    ((meta-data :origin step :entry-date  20081027  :change-date nil :comments nil)
     (example "the atmosphere is warm / a warm atmosphere")
     (LF-PARENT ONT::social-interaction-VAL)
     (templ central-adj-templ)
     )
    )
   )
  (W::proper
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070827 :change-date 20090731 :comments nil :wn ("correct%3:00:00"))
     (example "are you eating a proper diet")
     (LF-PARENT ONT::correct)
     )
    )
   )
  (W::CORRECT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("correct%3:00:00"))
     (LF-PARENT ONT::correct)
     )
    )
   )
   (W::inCORRECT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("incorrect%3:00:00"))
     (LF-PARENT ONT::incorrect)
     )
    )
   )
  (W::CURRENT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("current%3:00:00"))
     (LF-PARENT ONT::temporal-location)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
   (W::alive
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090413 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::BODY-PROPERTY-VAL)
     )
    )
   )
  (W::DEAD
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("dead%3:00:01"))
     (LF-PARENT ONT::BODY-PROPERTY-VAL)
     )
    ((LF-PARENT ONT::PRECISE)
     (example "dead center")
     (TEMPL ATTRIBUTIVE-ONLY-ADJ-TEMPL)
     (meta-data :origin mobius :entry-date 20080826 :change-date 20090731 :comments engine-texts)
     )    
    )
   )
  (W::asleep
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080828 :change-date nil :comments nil)
     (LF-PARENT ONT::body-property-VAL)
     (example "he is asleep")
     )
    )
   )
  (W::awake
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080828 :change-date nil :comments nil)
     (LF-PARENT ONT::body-property-VAL)
     (example "he is asleep")
     )
    )
   )
   (W::aware
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080828 :change-date nil :comments nil)
     (LF-PARENT ONT::awareness-VAL)
     (TEMPL ADJ-experiencer-content-xp-TEMPL (XP (% W::PP (W::ptype W::of))))
     (example "he is aware (of the problem)")
     )
    )
   )
    (W::alert
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080828 :change-date nil :comments nil)
     (LF-PARENT ONT::body-property-VAL)
     (example "he is alert")
     )
    )
   )
  (W::Due
   (SENSES
    ((LF-PARENT ONT::scheduled-time-modifier)
     (example "the proposal is due to be completed by friday")
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("due%3:00:00") :comments caloy3)
     )
    )
   )
  ;; derive from verb
;  (W::DELAYED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("delayed%3:00:00"))
;     (LF-PARENT ONT::SCHEDULED-TIME-MODIFIER)
;     )
;    )
;   )
  (W::DELIBERATE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("deliberate%5:00:00:intended:00"))
     (LF-PARENT ONT::INTENTIONALITY-VAL)
     )
    )
   )
  (W::annual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("annual%3:01:00") :comments calo-y1variants)
     (LF-PARENT ONT::frequency-val)
     (example "they have annual meetings")
     )
    )
   )
  (W::multiple
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::frequency-val)
     (example "they have multiple meetings")
     )
    )
   )

  (W::ACCIDENTAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("accidental%5:00:00:unintended:00") :comments caloy2)
     (example "an accidental meeting")
     (LF-PARENT ONT::INTENTIONALITY-VAL)
     )
    )
   )
  (W::unintentional
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("unintentional%3:00:04") :comments nil)
     (example "avoid unintentionally changing a document's formatting")
     (LF-PARENT ONT::INTENTIONALITY-VAL)
     )
    )
   )
  ;; derive from verb
;  (W::DESTROYED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("destroyed%3:00:00"))
;     (LF-PARENT ONT::IN-WORKING-ORDER-val)
;     )
;    )
;   )
;  (W::DETAILED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("detailed%5:00:00:careful:00"))
;     (LF-PARENT ONT::GRANULARITY-VAL)
;     (SEM (F::GRADABILITY F::+))
;     )
;    )
;   )
  (W::PLAIN
   (wordfeats (W::morph (:FORMS (-LY -ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("plain%5:00:00:obvious:00"))
     (LF-PARENT ONT::GRANULARITY-VAL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::DIFFERENT
   (wordfeats (w::allow-post-n1-subcat +))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments beetle2-pilots :wn ("different%3:00:00"))
     (EXAMPLE "They are different/ they are different from each other / a different state than the terminal 1")
     (LF-PARENT ONT::DIFFERENT)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE (? ptp W::FROM w::than)))))
     )
    )
   )

  (W::USUAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("usual%5:00:00:familiar:00" "usual%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "The usual suspects")
     (LF-PARENT ONT::COMMON)
     )
    )
   )
  (W::traditional
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("traditional%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::conventionality-val)
     )
    )
   )

   (W::prime
   (SENSES
    ((LF-PARENT ONT::specialness-val)
     (example "a prime location" "a prime cut of meat")
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  (W::conventional
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin lam :entry-date 20050422 :change-date 20080818 :wn ("conventional%3:00:00") :comments lam-initial)
     (LF-PARENT ONT::conventionality-val) ;; changed from ont::uniqueness-val
     )
    ))
   

  (W::classic
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("classic%5:00:00:standard:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::conventionality-val)
     )
    )
   )
  (W::typical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("typical%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "The typical configuration")
     (LF-PARENT ONT::COMMON)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
     )
    )
   )
  (W::atypical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("atypical%3:00:00" "atypical%5:00:00:abnormal:00") :comments html-purchasing-corpus)
     (EXAMPLE "The atypical configuration")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  (W::common
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("common%3:00:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::COMMON)
     )
    )
   )
  (W::ordinary
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050817 :change-date 20090731 :wn ("ordinary%3:00:00" "ordinary%5:00:02:common:01") :comments nil)
     (EXAMPLE "the ordinary GPL")
     (LF-PARENT ONT::COMMON)
     )
    )
   )
  (W::customary
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("customary%5:00:00:conventional:00") :comments nil)
     (EXAMPLE "it's customary to distribute code on cdrom")
     (LF-PARENT ONT::frequency-VAL) ; like habitual
     )
    )
   )
  (W::UNUSUAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("unusual%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "They are unusual")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  (W::freak
   (SENSES
    ((meta-data :origin plow :entry-date 20060802 :change-date nil :comments weather)
     (EXAMPLE "freak storms are popping up")
     (LF-PARENT ONT::typicality-val)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
    (W::bizarre
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20090731 :wn ("bizarre%5:00:00:unconventional:00") :comments caloy2)
     (EXAMPLE "They are bizarre")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  (W::standard
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("standard%5:00:00:common:01") :comments html-purchasing-corpus)
     (EXAMPLE "They are unusual")
     (LF-PARENT ONT::COMMON)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
     )
    )
   )
   (W::boilerplate
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     (EXAMPLE "The forms are boilerplate")
     (LF-PARENT ONT::stereotypicality-VAL)
     )
    )
   )
   ((W::boiler w::plate)
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :comments nil)
     (EXAMPLE "The forms are boilerplate")
     (LF-PARENT ONT::stereotypicality-VAL)
     )
    )
   )
   (W::formulaic
   (SENSES
    ((meta-data :origin step :entry-date 20080818 :change-date nil :comments nil)
     (EXAMPLE "a formulaic response")
     (LF-PARENT ONT::stereotypicality-VAL)
     )
    )
   )
  (W::stereotypical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin step :entry-date 20080818 :change-date nil :comments nil)
     (EXAMPLE "a formulaic response")
     (LF-PARENT ONT::stereotypicality-VAL)
     )
    )
   )
  ;; derive from verb
;   (W::enhanced
;   (SENSES
;    ((meta-data :origin calo :entry-date 20050404 :change-date nil :wn ("enhanced%5:00:00:increased:00") :comments projector-purchasing)
;     (EXAMPLE "I need enhanced definition")
;     (LF-PARENT ONT::specialness-val)
;     )
;    )
;   )
   (W::fancy
   (SENSES
    ((meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("fancy%3:00:00") :comments caloy2)
     (EXAMPLE "I don't need anything fancy")
     (LF-PARENT ONT::specialness-val)
     )
    )
   )
  (W::generic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041116 :change-date nil :wn ("generic%3:01:00") :comments caloy2)
     (EXAMPLE "I'll take the generic ones")
     (LF-PARENT ONT::typicality-VAL)
     )
    )
   )
  (W::UNIQUE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :comments html-purchasing-corpus)
     (EXAMPLE "They are unique")
     (LF-PARENT ONT::UNIQUENESS-VAL)
     )
    )
   )
  (W::revolutionary
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("revolutionary%5:00:00:new:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::novelty-VAL)
     )
    )
   )
  (W::novel
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("novel%5:00:00:original:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::novelty-VAL)
     )
    )
   )
  (W::innovative
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("innovative%5:00:00:original:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::novelty-VAL)
     )
    )
   )
  (W::stylish
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041119 :change-date nil :wn ("stylish%3:00:00") :comments caloy2)
     (LF-PARENT ONT::property-VAL)
     (example "do you want to choose a stylish color")
     )
    )
   )
  (W::ambitious
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("ambitious%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "ambitious person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("ambitious%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "ambitious idea")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::unambitious
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "unambitious person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "unambitious strategy")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::timid
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "timid person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "timid strategy")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::meek
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "timid person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "timid strategy")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::unassuming
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "unassuming person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "unassuming clothes")
     (templ central-adj-content-templ)
     )
    )
   )
  (W::daring
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("daring%5:00:00:adventurous:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "daring person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("ambitious%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "daring idea")
     (templ central-adj-content-templ)
     )
    )
   )
  (W::bold
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("bold%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "bold person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("ambitious%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "bold idea")
     (templ central-adj-content-templ)
     )
    )
   )
  (W::edgy
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date nil :wn ("bold%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "edgy person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20090422 :change-date nil :wn ("ambitious%3:00:00") :comments caloy2)
     (LF-PARENT ONT::boldness-val)
     (example "edgy idea")
     (templ central-adj-content-templ)
     )
    )
   )
  (W::aggressive
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "agressive person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "aggressive strategy")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::nonaggressive
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "nonagressive person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::boldness-val)
     (example "nonaggressive strategy")
     (templ central-adj-content-templ)
     )
    )
   )
  (W::repetitive
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("repetitive%5:00:00:continual:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::frequency-VAL)
     )
    )
   )
  (W::recurrent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :wn ("repetitive%5:00:00:continual:00") :comments nil)
     (LF-PARENT ONT::frequency-VAL)
     )
    )
   )
   (W::continual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin step :entry-date 20080818 :change-date nil :wn ("repetitive%5:00:00:continual:00") :comments nil)
     (LF-PARENT ONT::frequency-VAL)
     )
    )
   )
  (W::perpetual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin step :entry-date 20080818 :change-date nil :wn ("repetitive%5:00:00:continual:00") :comments nil)
     (LF-PARENT ONT::frequency-VAL)
     )
    )
   )
  (W::recurring
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("recurring%5:00:00:continual:00") :comments nil)
     (EXAMPLE "a recurring event")
     (LF-PARENT ONT::frequency-VAL)
     )
    )
   )
  (W::constant
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :wn ("recurring%5:00:00:continual:00") :comments nil)
     (LF-PARENT ONT::continuous-VAL)
     )
    )
   )

   (W::persistent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20090403 :change-date nil :wn ("recurring%5:00:00:continual:00") :comments nil)
     (LF-PARENT ONT::continuous-VAL)
     )
    )
   )

   (W::chronic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20090403 :change-date nil :wn ("recurring%5:00:00:continual:00") :comments nil)
     (LF-PARENT ONT::continuous-VAL)
     )
    )
   )

  (W::unfailing
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :wn ("recurring%5:00:00:continual:00") :comments LM-vocab)
     (LF-PARENT ONT::continuous-VAL)
     )
    )
   )

  (W::sole
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("sole%5:00:00:unshared:00" "sole%5:00:00:single:05") :comments html-purchasing-corpus)
     (EXAMPLE "The sole exception")
     (LF-PARENT ONT::cardinality-VAL)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::solitary
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("solitary%5:00:00:single:05") :comments html-purchasing-corpus)
     (EXAMPLE "The sole exception")
     (LF-PARENT ONT::cardinality-VAL)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::lone
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040907 :change-date nil :wn ("lone%5:00:00:single:05") :comments caloy2)
     (EXAMPLE "The lone exception")
     (LF-PARENT ONT::cardinality-VAL)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::special
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("special%5:00:01:specific:00") :comments html-purchasing-corpus)
     (EXAMPLE "They are special")
     (LF-PARENT ONT::specialness-val)
     )
    )
   )

  (W::singular
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("singular%5:00:00:single:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )

  (W::WEIRD
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("weird%5:00:00:strange:00") :comments html-purchasing-corpus)
     (EXAMPLE "A weird idea")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  (W::freaky
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :wn ("strange%3:00:00") :comments LM-vocab)
     (EXAMPLE "A freaky idea")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
  (W::odd
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :wn ("strange%3:00:00") :comments LM-vocab)
     (EXAMPLE "A freaky idea")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  (W::outlandish
   (wordfeats (W::morph (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :wn ("strange%3:00:00") :comments LM-vocab)
     (EXAMPLE "A freaky idea")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
    
  
  (W::strange
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("strange%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "A strange idea")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
   (W::funky
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (EXAMPLE "A funky idea")
     (LF-PARENT ONT::STRANGE)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
   (W::grueling
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090821 :comments nil)
     (EXAMPLE "It's grueling [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090821 :comments nil)
     (EXAMPLE "it's grueling to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
   (W::laborious
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090821 :comments nil)
     (EXAMPLE "It's laborious [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090821 :comments nil)
     (EXAMPLE "it's laborious to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ;; laborious breathing -- task-complexity-val???
    )
   )
  (W::DIFFICULT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments 20090821 :wn ("difficult%3:00:00"))
     (EXAMPLE "It's difficult [for him]")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments 20090821 :wn ("difficult%3:00:00"))
     (EXAMPLE "it's difficult to do")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
   (W::challenging
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments 20090821 :wn ("difficult%3:00:00"))
     (EXAMPLE "It's challenging [for him]")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments 20090821 :wn ("difficult%3:00:00"))
     (EXAMPLE "it's challenging to do")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
   (W::tiresome
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "It's tiresome [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "it's tiresome to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
    (W::wearisome
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "It's tiresome [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "it's tiresome to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
    (W::backbreaking
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "It's tiresome [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "it's tiresome to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
   ((W::back w::breaking)
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "It's tiresome [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-VAL)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090821 :comments nil :wn ("difficult%3:00:00"))
     (EXAMPLE "it's tiresome to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
   (W::arduous
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090731 :comments 20090821 :wn ("difficult%3:00:00"))
     (EXAMPLE "It's tiresome [for him]")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090731 :comments 20090821 :wn ("difficult%3:00:00"))
     (EXAMPLE "it's tiresome to do")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  ;; interesting -- these examples don't really work without the "too"
  (W::COMPLEX
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090821 :wn ("complex%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::difficult)
     (example "the task is too complex [for him]")
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090821 :wn ("complex%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::difficult)
     (example "the task is too complex to finish")
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::DIRECT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("direct%3:00:00"))
     (LF-PARENT ONT::ROUTE-TOPOLOGY-val)
     (example "a direct route")
     (SEM (F::GRADABILITY F::+))
     )
    ;; a direct comment?
    )
   )
  ;; derive from verb
;   (W::disabled
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("disabled%5:00:00:unfit:00"))
;     (LF-PARENT ONT::BODY-PROPERTY-VAL)
;     )
;    )
;   )
  (W::DISTINCT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("distinct%5:00:00:different:00"))
     (EXAMPLE "They are distinct [from each other]")
     (LF-PARENT ONT::DIFFERENT)
     (SEM (F::GRADABILITY F::+))
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::FROM))))
     )
    )
   )
  (W::DOABLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("doable%5:00:00:possible:00"))
     (EXAMPLE "that's (very) doable [for him]")
     (LF-PARENT ONT::POSSIBLE)
     (SEM (F::GRADABILITY F::+))
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    )
   )
  ;; later - derive from verb
  (W::DONE
   (SENSES
    ((LF-PARENT ONT::FINISHED)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::ptype W::with))))
     (example "we are done with buying books")
     (meta-data :origin plow :entry-date 20060516 :change-date 20090731 :wn ("done%5:00:00:finished:00") :comments pqs)
     )
    ((LF-PARENT ONT::FINISHED)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::vp (W::vform W::ing))))
     (example "we are done buying books")
     (meta-data :origin plow :entry-date 20060516 :change-date 20090731 :wn ("done%5:00:00:finished:00") :comments pqs)
     )
    )
   )

  ;; derive from verb
;  (W::DOWNED
;   (SENSES
;    ((LF-PARENT ONT::FALLEN-val)
;     )
;    )
;   )
  (W::EARLY
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("early%3:00:00"))
     (LF-PARENT ONT::SCHEDULED-TIME-MODIFIER)
     )
    )
   )
  (W::EAST
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("east%3:00:00"))
     (LF-PARENT ONT::EAST)
     )
    )
   )
  (W::EASY
   (wordfeats (W::morph (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("easy%3:00:01"))
     (EXAMPLE "that's easy [for him]")
     (LF-PARENT ONT::easy)
     (TEMPL adj-content-affected-optional-xp-templ)
     )   
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("easy%3:00:01"))
     (EXAMPLE "it's easy to do")
     (LF-PARENT ONT::easy)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::STRAIGHTFORWARD
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090821 :wn ("straightforward%5:00:00:unequivocal:00") :comments html-purchasing-corpus)
     (EXAMPLE "that's straightforward [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-val)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("straightforward%5:00:00:unequivocal:00"))
     (EXAMPLE "it's straightforward to explain")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::SIMPLE
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090821 :wn ("simple%3:00:02" "simple%5:00:00:easy:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::easy)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("simple%3:00:02" "simple%5:00:00:easy:01"))
     (EXAMPLE "it's simple to do")
     (LF-PARENT ONT::easy)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::EFFECTIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("effective%3:00:00" "effective%5:00:00:competent:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("effective%3:00:00" "effective%5:00:00:competent:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a drug effective for treating cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))     
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("effective%3:00:00" "effective%5:00:00:competent:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (example "a drug effective for leukemia")
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("effective%3:00:00" "effective%5:00:00:competent:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (example "a drug effective for him")
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )    
    )
   )
  
  (W::ELECTRIC
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("electric%3:01:00"))
     (LF-PARENT ONT::phys-modifier)
     )
    )
   )
  (W::simplex
   (SENSES
    ((LF-PARENT ONT::number-related-property-val)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090915 :wn ("simplex%5:00:00:unidirectional:00" "simplex%5:00:00:simple:02") :comments nil)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::duplex
   (SENSES
    ((LF-PARENT ONT::number-related-property-val)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090915 :wn ("duplex%5:00:00:multiple:00" "duplex%5:00:00:bidirectional:00") :comments nil)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::multiplex
   (SENSES
    ((LF-PARENT ONT::number-related-property-val)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090915 :wn ("multiplex%5:00:00:multiple:00" "multiplex%5:00:00:complex:00") :comments nil)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::mechanical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::phys-modifier)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("mechanical%3:00:00") :comments nil)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::industrial
   (SENSES
    ((LF-PARENT ONT::phys-modifier)
     (meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("industrial%3:01:00") :comments nil)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::ELECTRICAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin unknown :entry-date 20060824 :change-date 20090915  :wn ("electrical%3:01:01"))
     ; 20111017 changed to new word-for-type ont::electrical for obtw demo
 ;    (LF-PARENT ONT::substantial-property-val)
     (lf-parent ont::electrical) 
     (example "electrical wire" "electrical state" "electrical machine")     
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::electronic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::mode) ;??
     (SEM (F::GRADABILITY F::-))
     (EXAMPLE "electronic payments")
     (meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("electronic%3:01:00") :comments nil)
     )
    )
   )
  (W::analog
   (SENSES
    ((meta-data :origin calo :entry-date 20041119 :change-date 20090731 :wn ("analog%3:00:00") :comments caloy2)
     (LF-PARENT ONT::analog)
     )
    )
   )
  
  ;; what about the digital age, the digital divide?
  (W::digital
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041119 :change-date nil :wn ("digital%3:00:00") :comments caloy2)
     (LF-PARENT ONT::mode)
     (example "a digital circuit")
     )
    )
   )
  (W::visual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20050418 :change-date nil :wn ("visual%3:01:04" "visual%5:00:00:visible:00") :comments projector-purchasing)
     (LF-PARENT ONT::mode)
     (example "is there any difference in the visual output")
     )
    )
   )
  (W::optical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("optical%3:01:04" "optical%3:01:01") :comments Office)
     (LF-PARENT ONT::medium)
     (example "optical character recognition")
     )
    )
   )
  (W::magnetic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("magnetic%3:01:00") :comments Office)
     (LF-PARENT ONT::medium)
     (example "magnetic drive")
     )
    )
   )
  (W::holographic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("holographic%3:01:02") :comments Office)
     (LF-PARENT ONT::medium)
     (example "holographic data storage")
     )
    )
   )
  (W::electromagnetic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date nil :wn ("electromagnetic%3:01:00") :comments Office)
     (LF-PARENT ONT::medium)
     (example "holographic data storage")
     )
    )
   )
  (W::manual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20050404 :change-date nil :wn ("manual%3:00:00") :comments projector-purchasing)
     (LF-PARENT ONT::mode)
     (example "manual keystone correction")
     )
    )
   )
  (W::graphical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("graphical%3:01:00" "graphical%5:00:00:written:00") :comments caloy2)
     (LF-PARENT ONT::mode)
     (example "a graphical interface")
     )
    )
   )

  (W::favorable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::good)
     (meta-data :origin plow :entry-date 20060524 :change-date 20090731 :wn ("favorable%3:00:02") :comments pq0389  :comlex (ADJECTIVE))
     (example "a favorable review")
     )
    )
   )
    (W::unfavorable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::bad)
     (meta-data :origin plow :entry-date 20060524 :change-date 20090731 :wn ("unfavorable%3:00:02") :comments pq0389 :comlex (ADJECTIVE))
     (example "an unfavorable review")
     )
    )
   )
  (W::polar
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060215 :change-date nil :wn ("polar%5:00:00:charged:00") :comments caloy3)
     (LF-PARENT ONT::polarity-VAL)
     )
    )
   )
  (W::POSITIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("positive%3:00:02") :comments html-purchasing-corpus)
     (LF-PARENT ONT::polarity-VAL)
     )
    )
   )
  (W::NEGATIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("negative%3:00:03") :comments html-purchasing-corpus)
     (LF-PARENT ONT::polarity-VAL)
     )
    )
   )
  (W::EMPTY
    (wordfeats (W::morph (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090915 :comments nil :wn ("empty%3:00:00"))
     (LF-PARENT ONT::unfilled)
     )
    )
   )
   (W::BUSY
    (wordfeats (W::morph (:FORMS (-LY -ER))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date 20090731 :wn ("busy%3:00:00") :comments s11)
     (LF-PARENT ONT::active)
     )
    )
   )
   (W::stable
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090818 :wn ("stable%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::steady)
     )
    ((meta-data :origin adj-reorg :entry-date 20090818 :change-date nil :comments nil)
     (LF-PARENT ONT::continuous-val)
     )
    )
   )
   (W::unstable
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090818 :wn ("unstable%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::unsteady)
     )
    ((meta-data :origin adj-reorg :entry-date 20090818 :change-date nil :comments nil)
     (LF-PARENT ONT::continuous-val)
     )
    )
   )
   (W::robust
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090915 :wn ("robust%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::physical-property-val)
     )
    )
   )
  (W::practical
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("practical%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::USEFUL)
     )
    )
   )
  (W::impractical
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("impractical%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::useless)
     (templ less-adj-templ)
     )
    )
   )
  (W::convenient
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("convenient%3:00:00") :comments nil)
     (LF-PARENT ONT::STATUS-val)
     (EXAMPLE "you might find IMAP more convenient than POP")
     )
    )
   )
   (W::inconvenient
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("inconvenient%3:00:00") :comments nil)
     (LF-PARENT ONT::STATUS-val)
     (EXAMPLE "you might find IMAP more inconvenient than POP")
     (templ less-adj-templ)
     )
    )
   )

  (W::safe
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("safe%3:00:01") :comments nil)
     (LF-PARENT ONT::SAFE)
     )
    )
   )

  (W::unsafe
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("unsafe%3:00:00" "unsafe%3:00:02") :comments nil)
     (LF-PARENT ONT::DANGEROUS)
     (templ less-adj-templ)
     )
    )
   )

  ;; derive from verb
;   (W::classified
;    (SENSES
;    ((meta-data :origin savant :entry-date 20080602 :change-date nil :comments nil)
;     (LF-PARENT ONT::classification-val)
;     )
;    )
;   )

;   (W::unclassified
;    (SENSES
;    ((meta-data :origin savant :entry-date 20080602 :change-date nil :comments nil)
;     (LF-PARENT ONT::classification-val)
;     (templ less-adj-templ)
;     )
;    )
;   )


  (W::secure
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050816 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::SAFE)
     (EXAMPLE "send a secure message")
     )
    )
   )
   (W::confidential
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::safety-val)
     )
    )
   )
   (W::relative
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::RELATIVE)
     )
    )
   )
   (W::absolute
   (SENSES
    (
     (LF-PARENT ONT::STATUS-val)
     )
    )
   )
  (W::prominent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("prominent%5:00:00:conspicuous:00" "prominent%5:00:02:conspicuous:00") :comments nil)
     (LF-PARENT ONT::STATUS-val)
     (EXAMPLE "include a prominent notice")
     )
    )
   )
  
  (W::visible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050816 :change-date 20090915 :wn ("visible%3:00:00") :comments nil)
     (LF-PARENT ONT::visible-property-val)
     (EXAMPLE "set when the To Do items are visible")
     )
    )
   )
  (W::invisible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050817 :change-date 20090731 :wn ("invisible%3:00:00") :comments nil)
     (LF-PARENT ONT::hidden)
     (EXAMPLE "make the masked area invisible")
     )
    )
   )
  (W::transparent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050823 :change-date 20090915 :wn ("transparent%5:00:00:clear:00") :comments nil)
     (LF-PARENT ONT::visible-property-val)
     (EXAMPLE "make the object transparent")
     )
    )
   )
  (W::hidden
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050822 :change-date 20090731 :wn ("hidden%5:00:00:invisible:00") :comments nil)
     (LF-PARENT ONT::hidden)
     (EXAMPLE "the email is hidden")
     )
    )
   )
  (W::obscure
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050919 :change-date 20090731 :wn ("obscure%5:00:00:concealed:00" "obscure%5:00:00:unclear:00") :comments nil)
     (LF-PARENT ONT::hidden)
     (EXAMPLE "this document contains explanatory material for obscure commands")
     )
    )
   )
  (W::perceptible
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::sensory-property-val)
     )
    )
   )
  (W::smellable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::smellable-property-val)
     )
    )
   )
  (W::smelly
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::smellable-property-val)
     )
    )
   )
  (W::stinky
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::smellable-property-val)
     )
    )
   )
  (W::fragrant
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::smellable-property-val)
     )
    )
   )
  (W::musky
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::smellable-property-val)
     )
    )
   )
  (W::tastable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::tastable-property-val)
     )
    )
   )

  (W::optional
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050817 :change-date nil :wn ("optional%3:00:00") :comments nil)
     (LF-PARENT ONT::STATUS-val)
     (EXAMPLE "the optional using parameter specifies the implement")
     )
    )
   )
  ;; derive from verb
;  (W::required
;   (SENSES
;    ((meta-data :origin task-learning :entry-date 20050818 :change-date nil :wn ("required%5:00:00:necessary:00" "required%5:00:00:obligatory:00") :comments nil)
;     (LF-PARENT ONT::STATUS-val)
;     (EXAMPLE "this field is required")
;     )
;    )
;   )
  (W::unenforceable
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050919 :change-date 20090818 :wn ("unenforceable%3:00:00") :comments nil)
     (LF-PARENT ONT::can-be-done-val)
     (EXAMPLE "this section is unenforceable")
     )
    )
   )
  (W::benign
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin lou :entry-date 20040311 :change-date 20090818 :wn ("benign%3:00:02") :comments lou-sent-entry)
     (LF-PARENT ONT::safety-val)
     )
    )
   )
   (W::clean
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("clean%3:00:01") :comments caloy3)
     (LF-PARENT ONT::cleanliness-val)
     (example "are the rooms clean")
     )
    )
   )
  (W::comfortable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090731 :wn ("comfortable%3:00:00") :comments caloy3)
     (LF-PARENT ONT::COMFORTABLE)
     (example "are the rooms comfortable")
     )
    )
   )
   (W::cozy
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date 20090731 :wn ("comfortable%3:00:00") :comments caloy3-test-data)
     (LF-PARENT ONT::COMFORTABLE)
     )
    )
   )
   (W::comfy
    (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090731 :wn ("comfy%3:00:00") :comments caloy3)
     (LF-PARENT ONT::COMFORTABLE)
     (example "a comfy chair")
     )
    )
   )
  (W::uncomfortable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090731 :wn ("uncomfortable%3:00:01" "uncomfortable%3:00:00") :comments caloy3)
     (LF-PARENT ONT::uncomfortable)
     (example "the rooms are uncomfortable")
     )
    )
   )
   (W::uneasy
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090731)
     (LF-PARENT ONT::uncomfortable)
     )
    )
   )
   (W::dirty
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("dirty%3:00:01") :comments caloy3)
     (LF-PARENT ONT::cleanliness-val)
     (example "the dining room is dirty")
     )
    )
   )
   (W::messy
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :wn ("messy%5:00:00:untidy:00") :comments caloy3)
     (LF-PARENT ONT::orderliness-val)
     (example "the dining room is messy")
     )
    )
   )
 
  (W::clear
    (SENSES
    ((meta-data :origin lou :entry-date 20040311 :change-date 20090915 :wn ("clear%5:00:00:unobstructed:00") :comments lou-sent-entry)
     (LF-PARENT ONT::unobstructed)
     (example "the lane is clear")
     )
    ((meta-data :origin plow :entry-date 20060712  :change-date 20090819 :wn ("clear%3:00:02" "clear%3:00:03") :comments pq)
     (example "clear skies are predicated for tomorrow")
      (LF-PARENT ONT::CLEAR-WEATHER)
     )
    )
   )
   (W::atmospheric
   (SENSES
    ((meta-data :origin plow :entry-date 20060802  :change-date nil :wn ("atmospheric%3:01:00") :comments weather)
     (example "a rise in atmospheric pressure")
     (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
  (W::opaque
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20050418 :change-date nil :wn ("opaque%3:00:00") :comments projector-purchasing)
     (LF-PARENT ONT::resolution-val)
     (example "an opaque projector")
     )
    )
   )

   (W::productive
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090818)
     (LF-PARENT ONT::allows-doing-val)
     )
    )
   )
   (W::useful
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031219 :change-date 20090731 :wn ("useful%3:00:00") :comments s11)
     (LF-PARENT ONT::USEFUL)
     )
    )
   )
   (W::functional
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("functional%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::USEFUL)
     )
    ((meta-data :origin trips :entry-date 20090915 :change-date nil :comments nil)
     (LF-PARENT ONT::in-working-order-val)
     )
    )
   )
   (W::useless
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("useless%3:00:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::useless)
      )
     )
    )
   (W::relevant
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("relevant%3:00:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::RELEVANT)
      )
     )
    )
   (W::pertinent
    (SENSES
     ((meta-data :origin calo-ontology :entry-date 20060124 :change-date 20090731 :wn ("pertinent%5:00:00:relevant:00") :comments caloy3)
      (LF-PARENT ONT::RELEVANT)
      )
     )
    )
   (W::meaningful
    (SENSES
     ((meta-data :origin task-learning :entry-date 20050830 :change-date nil :wn ("meaningful%3:00:00") :comments nil)
      (EXAMPLE "the facility still performs whatever part of its purpose remains meaningful")
      (LF-PARENT ONT::STATUS-val)
      )
     )
    )
   (W::semantic
    (SENSES
     ((meta-data :origin calo-ontology :entry-date 20060426 :change-date nil :wn ("semantic%3:01:00") :comments nil)
      (EXAMPLE "the semantic desktop")
      (LF-PARENT ONT::STATUS-val)
      )
     )
    )
   (W::applicable
    (SENSES
     ((meta-data :origin task-learning :entry-date 20050817 :change-date 20090818 :wn ("applicable%5:00:00:relevant:00") :comments nil)
      (EXAMPLE "the activity is permitted by applicable law")
      (LF-PARENT ONT::can-be-done-val)
      )
     )
    )
   (W::inappropriate
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inappropriate%3:00:00" "inappropriate%5:00:00:incongruous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::APPROPRIATENESS-VAL)
     (sem (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inappropriate%3:00:00" "inappropriate%5:00:00:incongruous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (example "a wall good for climbing")
      (LF-PARENT ONT::APPROPRIATENESS-VAL)
      (sem (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
      (TEMPL adj-purpose-TEMPL)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inappropriate%3:00:00" "inappropriate%5:00:00:incongruous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (EXAMPLE "a drug suitable for cancer")
      (LF-PARENT ONT::APPROPRIATENESS-VAL)
      (sem (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
      ;; this is a sense that allows for implicit/indirect senses of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
      (TEMPL adj-purpose-implicit-XP-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inappropriate%3:00:00" "inappropriate%5:00:00:incongruous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (EXAMPLE "a solution good for him")
      (LF-PARENT ONT::APPROPRIATENESS-VAL)
      (sem (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
      ;; this is another indirect sense of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
      (TEMPL adj-affected-XP-templ)
      )
     )
    )
   (W::irrelevant
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("irrelevant%3:00:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::STATUS-val)
      )
     )
    )
   (W::independent
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin monroe :entry-date 20031219 :change-date 20090818 :wn ("independent%3:00:00") :comments s11)
      (LF-PARENT ONT::independent)
      )
     )
    )
   (W::dependent
    (SENSES
     ((meta-data :origin monroe :entry-date 20031219 :change-date 20090731 :wn ("dependent%3:00:00") :comments s11)
      (LF-PARENT ONT::DEPENDENT)
      )
     )
    )
  (W::ENTIRE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("entire%5:00:01:whole:00"))
     (LF-PARENT ONT::part-whole-VAL)
     )
    )
   )

  (W::ENOUGH
   (SENSES
    ;; should this be the quantifier? *the enough trucks
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("enough%5:00:00:sufficient:00"))
     (EXAMPLE "That's enough [for him]")
     (LF-PARENT ONT::ADEQUATE)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::for))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("enough%5:00:00:sufficient:00"))
     (example "there are trucks enough")
     (LF-PARENT ONT::ADEQUATE)
     (SEM (F::GRADABILITY F::-))
     (TEMPL postpositive-adj-optional-xp-templ)
     )
    )
   )
  (W::EXCELLENT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("excellent%5:00:00:superior:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("excellent%5:00:00:superior:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("excellent%5:00:00:superior:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("excellent%5:00:00:superior:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::EXPENSIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("expensive%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::expensive)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::pricy
   (wordfeats (W::morph (:FORMS (-er))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("pricy%5:00:00:expensive:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::expensive)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::pricey
   (wordfeats (W::morph (:FORMS (-er))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041122 :change-date 20090731 :wn ("pricey%5:00:00:expensive:00") :comments caloy2)
     (LF-PARENT ONT::expensive)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::INEXPENSIVE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("inexpensive%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::inexpensive)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )

  ((W::BUILT w::IN)
   (SENSES
    ((meta-data :origin calo :entry-date 20040407 :change-date nil :comments y1v5)
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::BUILT-IN
   (SENSES
    ((meta-data :origin calo :entry-date 20040407 :change-date nil :wn ("built-in%5:00:00:intrinsic:00") :comments y1v5)
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::EXTRA
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("extra%5:00:00:unnecessary:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::spare
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :comments html-purchasing-corpus)
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::FABULOUS
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fabulous%5:00:00:pleasing:00") :comlex (EXTRAP-ADJ-THAT-S))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fabulous%5:00:00:pleasing:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fabulous%5:00:00:pleasing:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fabulous%5:00:00:pleasing:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::FAIR
   (wordfeats (W::morph (:FORMS (-er -ly))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fair%5:00:00:moderate:00") :comlex (ADJ-PP-FOR))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fair%5:00:00:moderate:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fair%5:00:00:moderate:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fair%5:00:00:moderate:00") :comlex (ADJ-PP-FOR))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    ((meta-data :origin plow :entry-date 20060712  :change-date 20090819 :wn ("fair%5:00:00:clear:03") :comments pq)
     (example "fair weather predicted for tomorrow")
     (LF-PARENT ONT::CLEAR-WEATHER)
     )
    )
   )
  
  (W::pleasant
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (example "a good book")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (example "a wall good for climbing")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )    
  
  (W::upleasant
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF))     
     (example "a good book")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF))     
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF))     
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin plow :entry-date 20060801  :change-date 20061106 :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF))     
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  (W::agreeable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (example "an agreeable book")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
 ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT)) 
     (EXAMPLE "a porch agreeable for reading??")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
   (W::disagreeable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (example "an agreeable book")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
 ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT)) 
     (EXAMPLE "a porch agreeable for reading??")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :wn ("pleasant%3:00:00") :comments weather :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))     
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::oppressive
   (SENSES
    ((LF-PARENT ONT::severity-VAL)
     (meta-data :origin plow :entry-date 20060802  :change-date nil :wn ("oppressive%5:00:00:domineering:00") :comments weather)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
   (W::stifling
   (SENSES
    ((LF-PARENT ONT::severity-VAL)
     (meta-data :origin plow :entry-date 20060802  :change-date nil :wn ("stifling%5:00:00:hot:00") :comments weather)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
   (W::brutal
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::severity-VAL)
     (meta-data :origin plow :entry-date 20060802  :change-date nil :wn ("brutal%5:00:02:inhumane:00" "brutal%5:00:01:inhumane:00") :comments weather)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
  (W::FALSE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090915 :comments nil :wn ("false%3:00:00"))
     (LF-PARENT ONT::nonactual)
     (example "a false friend")
     )
    )
   )
   (W::incredible
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
      )
    )
   )
  (W::FANTASTIC
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fantastic%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-THAT-S))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fantastic%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fantastic%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fantastic%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )

  (W::amazing
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050919 :change-date 20061106 :wn ("amazing%5:00:00:impressive:00") :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF EXTRAP-ADJ-THAT-S))
     (example "an amazing presentation")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin task-learning :entry-date 20050919 :change-date 20061106 :wn ("amazing%5:00:00:impressive:00") :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF EXTRAP-ADJ-THAT-S))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin task-learning :entry-date 20050919 :change-date 20061106 :wn ("amazing%5:00:00:impressive:00") :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin task-learning :entry-date 20050919 :change-date 20061106 :wn ("amazing%5:00:00:impressive:00") :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF EXTRAP-ADJ-THAT-S))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::FAR
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("far%3:00:00"))
     (LF-PARENT ONT::REMOTE)
     (TEMPL ADJ-THEME-TEMPL)
     (example "not the near one, the far one")
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::FAST
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fast%3:00:01"))
     (LF-PARENT ONT::SPEEDY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fast%5:00:00:hurried:00"))
     (LF-PARENT ONT::QUICK)
     (example "a fast meeting")
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::swift
   (wordfeats (W::MORPH (:FORMS (-ly -ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("swift%5:00:00:fast:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::SPEEDY)
     )
    )
   )
   (W::sudden
   (wordfeats (W::MORPH (:FORMS (-ly))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :wn ("swift%5:00:00:fast:00") :comments nil)
     (LF-PARENT ONT::SPEED-val)
     (example "sudden cardiac death")
     )
    )
   )
  (W::speedy
   (wordfeats (W::MORPH (:FORMS (-ly -ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20050425 :change-date 20090731 :wn ("speedy%5:00:03:fast:00") :comments projector-purchasing)
     (LF-PARENT ONT::SPEEDY)
     )
    )
   )
    (W::rapid
   (wordfeats (W::MORPH (:FORMS (-ly ))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090130 :change-date 20090731 :wn ("speedy%5:00:03:fast:00") :comments nil)
     (LF-PARENT ONT::SPEEDY)
     (example "rapid heartbeat")
     )
    )
   )
   ;; derive from verb
;  (W::FILLED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
;     (LF-PARENT ONT::FULL)
;     )
;    )
;   )
  (W::FINAL
   (wordfeats (W::comp-op -) (w::morph (:forms (-ly))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("final%5:00:00:closing:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     )
    )
   )
  (W::tentative
   (SENSES
    ((LF-PARENT ONT::completion-VAL)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("tentative%5:00:00:conditional:00") :comments pq)
     (example "a tentative schedule")
     )
    )
   )
  (W::preliminary
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("preliminary%5:00:00:exploratory:00") :comments pq)
     (example "a preliminary version")
     )
    )
   )
    (W::penultimate
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (meta-data :origin plow :entry-date 20060524 :change-date nil :wn ("penultimate%5:00:00:last:00") :comments pq)
     (example "a penultimate version")
     )
    )
   )
  (W::RANDOM
   (wordfeats (W::comp-op -) (w::morph (:forms (-ly))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031223 :change-date nil :wn ("random%3:00:00" "random%5:00:00:unselected:00") :comments s7)
     (LF-PARENT ONT::SEQUENCE-VAL)
     )
    )
   )
  
  (W::FINE
   (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     )    
   ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("fine%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

  ;; derive from verb
;  (W::FINISHED
;   (SENSES
;    ((LF-PARENT ONT::FINISHED)
;     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::ptype W::with))))
;     (example "I am finished with buying books")
;     (meta-data :origin plow :entry-date 20060516 :change-date 20090731 :wn ("finished%3:00:01") :comments pqs)
;     )
;    ((LF-PARENT ONT::FINISHED)
;     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::vp (W::vform W::ing))))
;     (example "I am finished buying books")
;     (meta-data :origin plow :entry-date 20060516 :change-date 20090731 :wn ("finished%3:00:01") :comments pqs)
;     )
;    )
;   )

  (W::FOLLOWING
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("following%5:00:02:succeeding(a):00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     )
    )
   )
  (W::FREE
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (EXAMPLE "that's free [for him]")
     (LF-PARENT ONT::AVAILABLE)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("free%3:00:00"))
     (EXAMPLE "you're free to go")
     (LF-PARENT ONT::AVAILABLE)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((example "we have the second ambulance free")
     (LF-PARENT ONT::AVAILABLE)
     (SEM (F::GRADABILITY F::-))
     (TEMPL postpositive-adj-optional-xp-templ)
     (meta-data :origin monroe :entry-date 20050404 :change-date 20090731 :wn ("free%5:00:02:unoccupied:00") :comments s12)
     )
    ((meta-data :origin calo :entry-date 20060615 :change-date nil :wn ("free%5:00:00:unpaid:00") :comments pq)
     (LF-PARENT ONT::COST-val)
     (example "a free breakfast")
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (w::complimentary
   (senses
    ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("complimentary%5:00:00:unpaid:00") :comments pq)
     (LF-PARENT ONT::COST-val)
     (example "a complimentary breakfast")
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::FRESH
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("fresh%5:00:00:original:00"))
     (LF-PARENT ONT::novelty-VAL)
     (example "a fresh idea")
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil)
     (LF-PARENT ONT::AGE-VAL)
     (example "fresh produce")
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::FULL
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("full%3:00:00"))
     (LF-PARENT ONT::FULL)
     )
    )
   )
  (W::FUN
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("fun%5:00:00:entertaining:00") :comlex nil)
     (example "a good book")
     (LF-PARENT ONT::entertainment-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
   (W::enjoyable
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil :wn ("fun%5:00:00:entertaining:00") :comlex nil)
     (example "a good book")
     (LF-PARENT ONT::entertainment-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
   (W::delightful
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil :wn ("fun%5:00:00:entertaining:00") :comlex nil)
     (example "a good book")
     (LF-PARENT ONT::entertainment-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
   (W::allstar
   (SENSES
    ((LF-PARENT ONT::status-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::delicious
    (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::taste-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::zesty
    (wordfeats (W::MORPH (:FORMS (-LY -ER))))
   (SENSES
    ((LF-PARENT ONT::taste-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::spicy
    (wordfeats (W::MORPH (:FORMS (-LY -ER))))
   (SENSES
    ((LF-PARENT ONT::taste-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   (W::nuclear
   (SENSES
    ((LF-PARENT ONT::substantial-property-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date 20090915 :comments y3-test-data)
     )
    )
   )
   (W::famous
    (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::status-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
   
  (W::infamous
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::status-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data)
     )
    )
   )
  
   (W::organic
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((LF-PARENT ONT::substantial-property-val)
      (meta-data :origin caloy3 :entry-date 20070330 :change-date 20090915 :comments y3-test-data)
      )
     )
    )
  (W::GOOD
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::WORTHY
   (wordfeats (W::MORPH (:FORMS (-er))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date 20061106 :wn ("worthy%5:00:00:eligible:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
  
  (W::WORTHWHILE
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20061106 :wn ("worthwhile%5:00:00:worthy:00") :comments caloy2  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin calo :entry-date 20040915 :change-date 20061106 :wn ("worthwhile%5:00:00:worthy:00") :comments caloy2  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin calo :entry-date 20040915 :change-date 20061106 :wn ("worthwhile%5:00:00:worthy:00") :comments caloy2  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin calo :entry-date 20040915 :change-date 20061106 :wn ("worthwhile%5:00:00:worthy:00") :comments caloy2  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )    
    )
   )
  
  (W::VALUABLE
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20061106 :wn ("valuable%3:00:00" "valuable%5:00:00:worthy:00") :comments caloy2 :comlex (ADJECTIVE))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL central-adj-templ)
     )
    )
   )
  
  (W::TREMENDOUS
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("tremendous%5:00:00:extraordinary:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    )
   )
  
  (W::OUTSTANDING
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("outstanding%5:00:00:superior:02") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-THAT-S))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    )
   )
  
  (W::PHENOMENAL
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("phenomenal%5:00:00:extraordinary:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("phenomenal%5:00:00:extraordinary:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("phenomenal%5:00:00:extraordinary:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("phenomenal%5:00:00:extraordinary:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )

   (W::sterling
    (SENSES
     ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
      (LF-PARENT ONT::specialness-val)
      )
     )
    )
  (W::superior
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("superior%3:00:02") :comments html-purchasing-corpus :comlex (ADJECTIVE))
      (example "a good book")
      (LF-PARENT ONT::specialness-val)
      (TEMPL central-adj-templ)
      )
     )
    )      
  
   (w::premium
    (SENSES
     ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :wn ("premium%5:00:00:superior:00") :comments caloy2 :comlex nil)
      (example "a good book")
      (LF-PARENT ONT::specialness-val)
      (TEMPL central-adj-templ)
      )
     )
    )
   
   ((W::high w::end)
    (SENSES
     ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :comments caloy2 :comlex nil)
      (example "a good book")
      (LF-PARENT ONT::specialness-val)
      (TEMPL central-adj-templ)
      )
     )
    )
   
   ((W::low w::end)
    (SENSES
     ((meta-data :origin calo :entry-date 20041116 :change-date 20061106 :comments caloy2 :comlex nil)
      (example "a good book")
      (LF-PARENT ONT::substandard-VAL)
      (TEMPL central-adj-templ)
      )
     )
    )
   
   (W::splendid
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("splendid%5:00:00:impressive:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
      (example "a good book")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
      (TEMPL central-adj-templ)
      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("splendid%5:00:00:impressive:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (example "a wall good for climbing")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      (TEMPL adj-purpose-TEMPL)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("splendid%5:00:00:impressive:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (EXAMPLE "a drug suitable for cancer")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is a sense that allows for implicit/indirect senses of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;      (TEMPL adj-purpose-implicit-XP-templ)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("splendid%5:00:00:impressive:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (EXAMPLE "a solution good for him")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is another indirect sense of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;      (TEMPL adj-affected-XP-templ)
;;;      )
     )
    )   
   
   (W::spectacular
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("spectacular%5:00:00:conspicuous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
      (example "a good book")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
      (TEMPL central-adj-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("spectacular%5:00:00:conspicuous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
      (example "a wall good for climbing")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
      (TEMPL adj-purpose-TEMPL)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("spectacular%5:00:00:conspicuous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
      (EXAMPLE "a drug suitable for cancer")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
      ;; this is a sense that allows for implicit/indirect senses of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
      (TEMPL adj-purpose-implicit-XP-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("spectacular%5:00:00:conspicuous:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
      (EXAMPLE "a solution good for him")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
      ;; this is another indirect sense of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
      (TEMPL adj-affected-XP-templ)
      )
     )
    )
   
   (W::satisfactory
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("satisfactory%5:00:00:good:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
      (example "a good book")
      (LF-PARENT ONT::good)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::lo))
      (TEMPL central-adj-templ)
     )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("satisfactory%5:00:00:good:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (example "a wall good for climbing")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      (TEMPL adj-purpose-TEMPL)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("satisfactory%5:00:00:good:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (EXAMPLE "a drug suitable for cancer")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is a sense that allows for implicit/indirect senses of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;      (TEMPL adj-purpose-implicit-XP-templ)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("satisfactory%5:00:00:good:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (EXAMPLE "a solution good for him")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is another indirect sense of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;      (TEMPL adj-affected-XP-templ)
;;;      )
     )
    )
   
   (W::inferior
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inferior%5:00:00:nonstandard:02") :comments html-purchasing-corpus :comlex (ADJECTIVE))
      (example "a good book")
      (LF-PARENT ONT::substandard-VAL)
      (TEMPL central-adj-templ)
      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inferior%5:00:00:nonstandard:02") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;      (example "a wall good for climbing")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE (? pt w::to W::FOR)))))
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inferior%5:00:00:nonstandard:02") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;      (EXAMPLE "a drug suitable for cancer")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is a sense that allows for implicit/indirect senses of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;      (TEMPL adj-purpose-implicit-XP-templ)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("inferior%5:00:00:nonstandard:02") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;      (EXAMPLE "a solution good for him")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is another indirect sense of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;      (TEMPL adj-affected-XP-templ)
;;;      )
     )
    )  

   (W::subordinate
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("subordinate%5:00:00:junior:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
      (example "a good book")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (TEMPL central-adj-templ)
      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("subordinate%5:00:00:junior:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;      (example "a wall good for climbing")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::to))))
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("subordinate%5:00:00:junior:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;      (EXAMPLE "a drug suitable for cancer")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is a sense that allows for implicit/indirect senses of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;      (TEMPL adj-purpose-implicit-XP-templ)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("subordinate%5:00:00:junior:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
;;;      (EXAMPLE "a solution good for him")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is another indirect sense of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;      (TEMPL adj-affected-XP-templ)
;;;      )
     )
    )

   (W::superb
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("superb%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-THAT-S))
      (example "a good book")
      (LF-PARENT ONT::good)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
      (TEMPL central-adj-templ)
      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("superb%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-THAT-S))
;;;      (example "a wall good for climbing")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      (TEMPL adj-purpose-TEMPL)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("superb%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-THAT-S))
;;;      (EXAMPLE "a drug suitable for cancer")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is a sense that allows for implicit/indirect senses of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;      (TEMPL adj-purpose-implicit-XP-templ)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("superb%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-THAT-S))
;;;      (EXAMPLE "a solution good for him")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is another indirect sense of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;      (TEMPL adj-affected-XP-templ)
;;;      )
     )
    )
   
   (W::optimal
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("optimal%5:00:00:best:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL central-adj-templ)
     )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("optimal%5:00:00:best:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (example "a wall good for climbing")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      (TEMPL adj-purpose-TEMPL)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("optimal%5:00:00:best:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (EXAMPLE "a drug suitable for cancer")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is a sense that allows for implicit/indirect senses of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;      (TEMPL adj-purpose-implicit-XP-templ)
;;;      )
;;;     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("optimal%5:00:00:best:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;      (EXAMPLE "a solution good for him")
;;;      (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;      ;; this is another indirect sense of "for"
;;;      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;      (TEMPL adj-affected-XP-templ)
;;;      )
     )
    )
   
   (W::UNPARALLELED
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("unparalleled%5:00:00:incomparable:00") :comments html-purchasing-corpus :comlex nil)
      (example "a good book")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
      (TEMPL central-adj-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("unparalleled%5:00:00:incomparable:00") :comments html-purchasing-corpus :comlex nil)
      (example "a wall good for climbing")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
      (TEMPL adj-purpose-TEMPL)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("unparalleled%5:00:00:incomparable:00") :comments html-purchasing-corpus :comlex nil)
      (EXAMPLE "a drug suitable for cancer")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
      ;; this is a sense that allows for implicit/indirect senses of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
      (TEMPL adj-purpose-implicit-XP-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("unparalleled%5:00:00:incomparable:00") :comments html-purchasing-corpus :comlex nil)
      (EXAMPLE "a solution good for him")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
      ;; this is another indirect sense of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
      (TEMPL adj-affected-XP-templ)
      )
     )
    )
   
   (W::super
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("super%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (example "a good book")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
      (TEMPL central-adj-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("super%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("super%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("super%5:00:00:superior:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
     )
    ) 
   
   (W::TASTEFUL
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("tasteful%3:00:02") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (example "a good book")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (TEMPL central-adj-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("tasteful%3:00:02") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (example "a wall good for climbing")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      (TEMPL adj-purpose-TEMPL)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("tasteful%3:00:02") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (EXAMPLE "a drug suitable for cancer")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      ;; this is a sense that allows for implicit/indirect senses of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
      (TEMPL adj-purpose-implicit-XP-templ)
      )
     ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("tasteful%3:00:02") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
      (EXAMPLE "a solution good for him")
      (LF-PARENT ONT::ACCEPTABILITY-VAL)
      ;; this is another indirect sense of "for"
      ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
      ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
      (TEMPL adj-affected-XP-templ)
      )
     )
    )
   
  (W::fortunate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("fortunate%3:00:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (LF-PARENT ONT::lucky)
     (TEMPL central-adj-templ)
     )
    )
   )
  
  (W::unfortunate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("unfortunate%3:00:00") :comments html-purchasing-corpus :comlex (EXTRAP-ADJ-THAT-S))
     (LF-PARENT ONT::unlucky)
     (TEMPL central-adj-templ)
     )
    )
   )

   (W::lucky
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::lucky)
     (TEMPL central-adj-templ)
     )
    )
   )
   (W::unlucky
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::unlucky)
     (TEMPL central-adj-templ)
     )
    )
   )
   
  (W::WELCOME
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("welcome%3:00:00") :comments html-purchasing-corpus :comlex (ADJ-TO-INF))
     (example "a welcome change")
     (LF-PARENT ONT::pleasant-VAL)
     (TEMPL central-adj-templ)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )
  
  (W::UNWELCOME
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20061106 :wn ("unwelcome%3:00:00") :comments html-purchasing-corpus :comlex (ADJECTIVE))
     (example "an unwelcome change")
     (LF-PARENT ONT::pleasant-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    )
   )
   (W::peachy
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20090129 :change-date 20090731 :comments nil :wn ("grand%5:00:00:extraordinary:00" :comlex (EXTRAP-ADJ-FOR-TO-INF-RS)))
     (example "a peachy book")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )))
   
  (W::GRAND
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("grand%5:00:00:extraordinary:00" :comlex (EXTRAP-ADJ-FOR-TO-INF-RS)))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("grand%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("grand%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("grand%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::GREAT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))   
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("great%5:00:00:good:01") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a solution good for him")
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (LF-PARENT ONT::good)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::brilliant
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin lam :entry-date 20050422 :change-date 20061106 :wn ("brilliant%5:00:00:superior:00") :comments lam-initial :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin lam :entry-date 20050422 :change-date 20061106 :wn ("brilliant%5:00:00:superior:00") :comments lam-initial :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))     
     (example "a wall good for climbing")
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin lam :entry-date 20050422 :change-date 20061106 :wn ("brilliant%5:00:00:superior:00") :comments lam-initial :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))     
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin lam :entry-date 20050422 :change-date 20061106 :wn ("brilliant%5:00:00:superior:00") :comments lam-initial :comlex (ADJ-PP-FOR))     
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

  ;; derive from verb
;   (W::handicapped
;   (SENSES
;    ((meta-data :origin monroe :entry-date 20031216 :change-date nil :wn ("handicapped%5:00:00:unfit:00") :comments s10)
;     (LF-PARENT ONT::BODY-PROPERTY-VAL)
;     )
;    )
;   )
;   (W::incapacitated
;   (SENSES
;    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("incapacitated%5:00:00:powerless:00") :comments s7)
;     (LF-PARENT ONT::body-property-val)
;     )
;    )
;   )
  (W::HANDY
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("handy%5:00:00:accessible:00"))
     (EXAMPLE "that's handy [for him]")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("handy%5:00:00:accessible:00"))
     (EXAMPLE "that's handy to use")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::CP (W::cTYPE W::s-to))))
     )
    )
   )

  ;; derive from verb
;  (W::dejected
;   (SENSES
;    ((LF-PARENT ONT::emotional-property-val)
;     (templ central-adj-experiencer-templ)
;     (meta-data :origin "wordnet-3.0" :entry-date 20090513 :change-date nil :comments nil)
;     (example "he is dejected but trying to look cheerful")
;     )
;    )
;   )
  (W::ecstatic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090427 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "I am happy / a happy person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
     ((meta-data :origin cardiac :entry-date 20090427 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "I am happy for her")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date 20090427 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "I am happy that she does that")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::euphoric
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090427 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am happy / a happy person")
     (LF-PARENT ONT::EUPHORIC)
     (templ central-adj-experiencer-templ)
     )
     ((meta-data :origin cardiac :entry-date 20090427 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am happy for her")
     (LF-PARENT ONT::EUPHORIC)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date 20090427 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am happy that she does that")
     (LF-PARENT ONT::EUPHORIC)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
  (W::HAPPY
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am happy / a happy person")
     (LF-PARENT ONT::EUPHORIC)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "the news is happy / happy news")
     (LF-PARENT ONT::EUPHORIC)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin leam :entry-date 20070214 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am happy for her")
     (LF-PARENT ONT::EUPHORIC)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
    ((meta-data :origin leam :entry-date 20070214 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am happy that she does that")
     (LF-PARENT ONT::EUPHORIC)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::cheerful
   (wordfeats (W::morph (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am cheerful / a cheerful person")
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "the news is cheerful / cheerful news")
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-content-templ)
     )
    )
   )
  (W::angry
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSEs
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry / an angry person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "an angry remark")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     (preference .98)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry at her")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::at w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry that she does that")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
    (W::enthusiastic
   (wordfeats (W::morph (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am enthusiastic / an enthusiastic person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "an enthusiactic message")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     (preference .98)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am enthusiastic about her")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    )
   )
   (W::wild
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am wild / an angry person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am wild about her")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "a wild idea")
     (LF-PARENT ONT::typicality-VAL)
     (templ central-adj-templ)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
   (W::furious
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry / an angry person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry at her")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::at w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry that she does that")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
  (W::mad
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry / an angry person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "a mad idea") ;; like crazy 
     (LF-PARENT ONT::insane)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry at her")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::at w::about w::for)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry that she does that")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::anxious
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am anxious / an anxious person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "an anxious situation")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry about it")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    )
   )
  (W::tense
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080926 :change-date nil :comments LM-vocab)
     (example "he is tense / a tense person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "a tense situation")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    )
   )
   (W::glum
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am glum / a glum person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "his outlook is glum") ;; not a stimulus!
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am glum about it")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    )
   )
   (W::gloomy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am gloomy / a gloomy person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "a gloomy outlook")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am gloomy about it")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    )
   )
   (W::grumpy
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am grumpy / a grumpy person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "a grumpy disposition") ;; not a stimulus!
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     (preference .98)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am angry about it")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am grumpy that she does that")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::melancholy
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am melancholy / a melancholy person")
     (LF-PARENT ONT::UNGRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "a melancholy outlook")
     (LF-PARENT ONT::UNGRATEFUL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am melancholy about it")
     (LF-PARENT ONT::UNGRATEFUL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am melancholy that she does that")
     (LF-PARENT ONT::UNGRATEFUL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::heartbreaking
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129  :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "unhappy news")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    )
   )
   (W::miserable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy / an unhappy person")
     (LF-PARENT ONT::UNHAPPY)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20090129  :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "unhappy news")
     (LF-PARENT ONT::UNHAPPY)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090129  :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy about it")
     (LF-PARENT ONT::UNHAPPY)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy that she does that")
     (LF-PARENT ONT::UNHAPPY)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::unhappy
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy / an unhappy person")
     (LF-PARENT ONT::UNHAPPY)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "unhappy news")
     (LF-PARENT ONT::UNHAPPY)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy about it")
     (LF-PARENT ONT::UNHAPPY)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy that she does that")
     (LF-PARENT ONT::UNHAPPY)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
 (W::sorry
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy / an unhappy person")
     (LF-PARENT ONT::sorry)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "unhappy news")
     (LF-PARENT ONT::sorry)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy about it")
     (LF-PARENT ONT::sorry)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (example "I am unhappy that she does that")
     (LF-PARENT ONT::sorry)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
  (W::cranky
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am cranky / a cranky person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "a cranky response") ;; not a stimulus!
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am cranky about it")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    )
   )
  (W::morose
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am morose / a morose person")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date nil :comments nil :wn ("happy%3:00:00"))
     (example "a morose disposition") ;; not a stimulus!
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (example "I am morose about it")
     (LF-PARENT ONT::EMOTIONAL-PROPERTY-VAL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::about)))))
     )
    )
   )  
  (W::grateful
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am grateful / a grateful person")
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "a grateful note") ;; not a stimulus
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am grateful for her")
     (LF-PARENT ONT::GRATEFUL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am grateful that she does that")
     (LF-PARENT ONT::GRATEFUL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
  (W::ungrateful
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "he is ungrateful / an ungrateful person")
     (LF-PARENT ONT::UNGRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "a ungrateful comment") ;; not a stimulus
     (LF-PARENT ONT::UNGRATEFUL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am ungrateful that she does that")
     (LF-PARENT ONT::UNGRATEFUL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
   (W::thankful
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am thankful / a thankful person")
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "a thankful expression") ;; not a stimulus
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am thankful for her")
     (LF-PARENT ONT::GRATEFUL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date 20080414 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am thankful that she does that")
     (LF-PARENT ONT::GRATEFUL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
  (W::GLAD
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am glad")
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "glad tidings")
     (LF-PARENT ONT::GRATEFUL)
     (templ central-adj-content-templ)
     )
  ((meta-data :origin chf :entry-date 20070809 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am glad for her")
     (LF-PARENT ONT::GRATEFUL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype w::for))))
     )
  ((meta-data :origin chf :entry-date 20070809 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "I am glad that she does that")
     (LF-PARENT ONT::GRATEFUL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )    
    )
   )
  
  (W::SAD
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("sad%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::UNGRATEFUL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin adj-devel :entry-date 20080926 :change-date 20090731 :comments nil :wn ("happy%3:00:00"))
     (example "a sad day")
     (LF-PARENT ONT::UNGRATEFUL)
     (templ central-adj-content-templ)
     )
    ((meta-data :origin leam :entry-date 20070214 :change-date 20090731 :comments nil :wn ("sad%3:00:00"))
     (example "I am happy for her")
     (LF-PARENT ONT::UNGRATEFUL)
     (TEMPL ADJ-THEME-XP-TEMPL (xp (% W::PP (w::ptype (? pt w::for w::about)))))
     )
    ((meta-data :origin leam :entry-date 20070214 :change-date 20090731 :comments nil :wn ("sad%3:00:00"))
     (example "I am happy that she does that")
     (LF-PARENT ONT::UNGRATEFUL)
     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
     )

    )
   )
  (W::curious
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("curious%3:00:00") :comments projector-purchasing)
     (LF-PARENT ONT::psychological-property-val)
     (example "a curious person" "he is curious")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("curious%3:00:00") :comments projector-purchasing)
     (LF-PARENT ONT::psychological-property-val)
     (example "a curious person" "he is curious")
     (templ central-adj-content-templ)
     )
    )
   )
  ;; derive from verb
;  (W::famished
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090406 :change-date 20090731 :comments nil)
;     (LF-PARENT ONT::HUNGRY)
;     (templ central-adj-experiencer-templ)
;     )
;    )
;   )
  (W::peckish
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090406 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::HUNGRY)
     (templ central-adj-experiencer-templ)
     )
    )
   )
  (W::hungry
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::HUNGRY)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::thirsty
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::body-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::drowsy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::body-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   ; derive from verb
;   (W::caffeinated
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
;     (LF-PARENT ONT::body-PROPERTY-VAL)
;     (templ central-adj-experiencer-templ)
;     )
;    )
;   )
   
   (W::sleepy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::body-PROPERTY-VAL)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::healthy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::body-PROPERTY-VAL)
     (example "healthy person")
     (templ central-adj-experiencer-templ)
     )
     ((meta-data :origin calo :entry-date 20050527 :change-date nil :wn ("curious%3:00:00") :comments projector-purchasing)
     (LF-PARENT ONT::body-property-val)
     (example "a healthy diet" "a healthy lifestyle")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::physical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::physical-VAL)
     (example "physical fitness")
     )
    )
   )
   (W::bodily
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::physical-VAL)
     (example "bodily functions")
     )
    )
   )
   (W::mental
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::mental-VAL)
     (example "mental activity")
     )
    )
   )
   (W::cerebral
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::mental-VAL)
     (example "mental activity")
     )
    )
   )
   (w::stressful
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::task-complexity-val) ;; like difficult
     (example "Programmers are stressful to interview")
     (templ adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date  20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::task-complexity-val)
     (example "Programmers are stressful for managers")
     (templ adj-content-affected-XP-templ  (xp (% w::pp (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date  20090129 :change-date nil :comments LM-vocab)
     (EXAMPLE "it's stressful to see him")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((meta-data :origin cardiac :entry-date  20090129 :change-date nil :comments LM-vocab)
     (example "Programmers are stressful for managers to interview")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-control-TEMPL)
     )
    ))

   (w::hectic
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::task-complexity-val) ;; like difficult
     (example "Programmers are stressful to interview")
     (templ adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date  20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::task-complexity-val)
     (example "Programmers are stressful for managers")
     (templ adj-content-affected-XP-templ  (xp (% w::pp (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date  20090129 :change-date nil :comments LM-vocab)
     (EXAMPLE "it's stressful to see him")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((meta-data :origin cardiac :entry-date  20090129 :change-date nil :comments LM-vocab)
     (example "Programmers are stressful for managers to interview")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-control-TEMPL)
     )
    ))

   (w::strenuous
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::task-complexity-val) ;; like difficult
     (example "Programmers are strenuous to interview")
     (templ adj-content-templ)
     )
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::task-complexity-val)
     (example "Programmers are stressful for managers")
     (templ adj-content-affected-XP-templ  (xp (% w::pp (w::ptype w::for))))
     )
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (EXAMPLE "it's stressful to see him")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (example "Programmers are stressful for managers to interview")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-control-TEMPL)
     )
    ))

  (W::HARD
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "that's hard")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-cause-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (TEMPL adj-content-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "that's hard for him")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-cause-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (TEMPL adj-content-affected-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "it's hard to see him")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-action-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     (TEMPL adj-expletive-content-xp-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    ((meta-data :origin prehistoric :entry-date 20060824 :change-date 20090731 :comments csli-ts :wn ("hard%3:00:06"))
     (EXAMPLE "it's hard for me to see him")
     (LF-PARENT ONT::difficult)
     ;;     (TEMPL adj-theme-action-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     (TEMPL adj-expletive-content-control-TEMPL)
     )
    
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("hard%3:00:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Texture-val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::TOUGH
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090821 :wn ("tough%5:00:01:difficult:00") :comments html-purchasing-corpus)
     (EXAMPLE "that's tough [for him]")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("tough%5:00:01:difficult:00"))
     (EXAMPLE "it's tough to do")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::HEAVY
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("heavy%3:00:01"))
     (LF-PARENT ONT::heavy)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
     )
    )
   )
   
   (W::fat
    (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080730 :change-date 20090731 :comments speech-pretest)
     (LF-PARENT ONT::BROAD)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::more))
     (example "a fat cat" "a fat line")
     )
    )
   )
    (W::plump
    (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::BROAD)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::more))
     (example "a plump cat" "a plump line")
     )
    )
   )
    (W::skinny
    (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080730 :change-date 20090731 :comments speech-pretest)
     (LF-PARENT ONT::SLIGHT)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (example "a skinny cat" "a skinny line")
     )
    )
   )
   (W::overweight
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080327 :change-date nil :comments nil)
     (LF-PARENT ONT::overweight)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
     )
    )
   )
   (W::obese
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::overweight)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::more))
     )
    )
   )
   (W::underweight
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080327 :change-date nil :comments nil)
     (LF-PARENT ONT::underweight)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

   (W::scrawny
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080327 :change-date nil :comments nil)
     (LF-PARENT ONT::underweight)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

  (W::high
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("high%3:00:01"))
     (EXAMPLE "a high mountain" "a five foot high building")
     (LF-PARENT ONT::SLIGHT)
     )
    ;;;;; we want to use the no-premod meaning first
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("high%3:00:01"))
;     (EXAMPLE "a 5 foot high building")
;     (LF-PARENT ONT::Linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98)
;     )
    ((EXAMPLE "I need a higher resolution")
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     (meta-data :origin boudreaux :entry-date 20031024 :change-date 20090731 :wn ("high%3:00:02") :comments nil)
     )
    )
   )

  (W::HORIZONTAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("horizontal%3:00:00"))
     (LF-PARENT ONT::HORIZONTAL)
     )
    )
   )
  (W::diagonal
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::ORIENTATION-VAL)
     (EXAMPLE "show the label diagonally")
     (meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("diagonal%5:00:02:oblique:00" "diagonal%5:00:00:inclined:01") :comments nil)
     )
    )
   )
  ((W::upside w::down)
   (SENSES
    ((LF-PARENT ONT::ORIENTATION-VAL)
     (EXAMPLE "flip the object upside down")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :comments nil)
     )
    )
   )
  (W::IDENTICAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("identical%5:00:00:same:00"))
     (EXAMPLE "They are identical [to each other]")
     (LF-PARENT ONT::SAME)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::TO))))
     )
    )
   )
  (W::IMPASSABLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090915 :comments nil :wn ("impassable%3:00:00"))
     (LF-PARENT ONT::obstructed)
     )
    )
   )
  (W::IMPORTANT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::primary)
     (TEMPL adj-purpose-optional-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    )
   )
   (W::urgent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("urgent%5:00:00:imperative:00"))
     (LF-PARENT ONT::IMPORTANCE-VAL)
     (TEMPL adj-purpose-optional-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    )
   )
  (W::IMPOSSIBLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("impossible%3:00:00"))
     (EXAMPLE "that's impossible [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-val)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("impossible%3:00:00"))
     (EXAMPLE "it's impossible to do")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  ((W::IN W::A W::HURRY)
   (SENSES
    ((LF-PARENT ONT::manner)
     )
    )
   )
  ((W::IN W::TROUBLE)
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("in_trouble%5:00:00:troubled:00"))
     (EXAMPLE "he is in trouble")
     (LF-PARENT ONT::STATUS-VAL)
     (TEMPL ATTRIBUTIVE-ONLY-ADJ-TEMPL)
     )
    )
   )
  ((W::IN W::NEED)
   (SENSES
    ((LF-PARENT ONT::physical-reaction)
     (TEMPL postpositive-ADJ-experiencer-theme-TEMPL (XP (% W::PP (W::Ptype W::of))))
     )
    )
   )
   ((W::IN W::PAIN)
   (SENSES
    ((LF-PARENT ONT::physical-symptom-val)
     (TEMPL postpositive-adj-templ)
     )
    )
   )
   
  (W::INCOMPLETE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("incomplete%3:00:00"))
     (LF-PARENT ONT::INCOMPLETE)
     )
    )
   )

 ; derive from verb
;  (W::INJURED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("injured%3:00:00"))
;     (LF-PARENT ONT::BODY-PROPERTY-VAL)
;     )
;    )
;   )
  (W::INLAND
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("inland%3:00:00"))
     (LF-PARENT ONT::GEO-FEATURE-VAL)
     )
    )
   )
  (W::INSIGNIFICANT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("insignificant%3:00:00"))
     (LF-PARENT ONT::SECONDARY)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::INSTANTANEOUS
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("instantaneous%5:00:00:fast:00"))
     (LF-PARENT ONT::QUICK)
     )
    )
   )
  (W::INSTANT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("instant%5:00:00:fast:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::QUICK)
     )
    )
   )
   (W::UNINTERESTING
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::boring)
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::boring)
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::boring)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )   
   )
   (W::BORING
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::boring)
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::boring)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )   
   )
   (W::dull
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a dull book")
     (LF-PARENT ONT::boring)
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "it is dull for him")
     (LF-PARENT ONT::boring)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    ((meta-data :origin cardiac :entry-date 20080509 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
     (example "a dull pain")
     )
    )   
   )
   
  (W::INTERESTING
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::fascination-VAL)
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::fascination-VAL)
     (TEMPL adj-purpose-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::fascination-VAL)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("interesting%3:00:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::fascination-VAL)
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )   
   )
  
  (W::INTERMEDIATE
   (wordfeats (W::comp-op -))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("intermediate%3:00:00"))
     (LF-PARENT ONT::stage-VAL)
     )
    )
   )
  (W::INTERNAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::INTERNAL)
     (meta-data :origin calo :entry-date 20041119 :change-date 20090731 :wn ("internal%3:00:00") :comments caloy2)
     (example "an internal drive")
     )
    )
   )
  (W::EXTERNAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::EXTERNAL)
     (meta-data :origin calo :entry-date 20041119 :change-date 20090731 :wn ("external%3:00:00") :comments caloy2)
     (example "an external drive")
     )
    )
   )

  (W::INNER
   (SENSES
    ((LF-PARENT ONT::INTERNAL)
     (meta-data :origin lam :entry-date 20050422 :change-date 20090731 :wn ("inner%5:00:00:inward:00") :comments lam-initial)
     (example "the inner layer")
     )
    ))
  (W::OUTER
   (SENSES
    ((LF-PARENT ONT::EXTERNAL)
     (meta-data :origin lam :entry-date 20050422 :change-date 20090731 :wn ("outer%5:00:00:outward:00") :comments lam-initial)
     (example "the outer layer")
     )
    ))
   
  (W::INTERSECTING
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("intersecting%5:00:00:crossed:00"))
     (LF-PARENT ONT::FLOW-VAL)
     )
    )
   )
  (W::LARGE
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("large%3:00:00"))
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

  (W::giant
   (SENSES
    ((LF-PARENT ONT::large)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date 20090731 :comments y3-test-data)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::VAST
   (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("vast%5:00:00:large:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::MASSIVE
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("massive%5:00:00:large:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::huge
   (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("huge%5:00:01:large:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::whopping
   (SENSES
    ((meta-data :origin plow :entry-date 20050928 :change-date 20090731 :wn ("whopping%5:00:00:large:00") :comments naive-subjects)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::ROOMY
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("roomy%5:00:00:commodious:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Size-Val)
     )
    )
   )
  (W::SPACIOUS
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("spacious%5:00:00:commodious:00" "spacious%5:00:00:large:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  (W::extensive
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("extensive%5:00:00:large:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
;   (W::extended
;   (wordfeats (w::comparative +))
;   (SENSES
;    ((meta-data :origin calo :entry-date 20040504 :change-date 20090731 :wn ("extended%5:00:00:large:00") :comments html-purchasing-corpus)
;     (LF-PARENT ONT::large)
;     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
;     )
;    )
;   )
  (W::unlimited
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("unlimited%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::large)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
;  (W::limited
;   (SENSES
;    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("limited%3:00:00") :comments html-purchasing-corpus)
;     (LF-PARENT ONT::limited)
;     (example "limited quantities")
;     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::med))
;     )
;    )
;   )
  (W::substantial
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050909 :change-date nil :wn ("substantial%5:00:00:considerable:00") :comments nil)
     (EXAMPLE "include the notice in all copies or substantial portions of the software")
     (LF-PARENT ONT::Size-Val)
     )
    )
   )
  (W::LAST
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("last%5:00:00:closing:00" "last%3:00:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     (example "it was the last day they met")
     ;;(preference .95)
     )
    )
   )
  (W::former
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("former%3:00:00") :comments nil)
     (EXAMPLE "the former problem is a bummer")
     )
    )
   )
  ((W::status W::post)
   (SENSES
    ((LF-PARENT ONT::sequence-VAL)
     (meta-data :origin cernl :entry-date 20101029 :change-date nil :wn ("former%3:00:00") :comments nil)
     (EXAMPLE "history of diverticulitis, status post cholecystectomy")
     )
    )
   )
  (W::latter
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (meta-data :origin task-learning :entry-date 20050930 :change-date nil :wn ("latter%3:00:00") :comments nil)
     (EXAMPLE "the latter problem is a bummer")
     )
    )
   )
  (W::pioneering
   (SENSES
    ((meta-data :origin step :entry-date 20080721 :change-date nil :comments nil)
     (LF-PARENT ONT::novelty-val)
     (example "a pioneering effort")
     )
    )
   )
   (W::resulting
   (SENSES
    ((meta-data :origin step :entry-date 20080728 :change-date nil :comments nil)
     (LF-PARENT ONT::outcome-val)
     (example "the resulting explosion")
     )
    )
   )
  (W::mid
   (SENSES
    ((meta-data :origin step :entry-date 20080528 :change-date nil :comments nil)
     (LF-PARENT ONT::stage-val)
     (example "the mid-80's" "a mid-life crises")
     )
    )
   )
  (W::middle
   (SENSES
    ((meta-data :origin step :entry-date 20080528 :change-date nil :comments nil)
     (LF-PARENT ONT::stage-val)
     (preference .98) ;; prefer relational noun sense
     )
    )
   )
  (W::midway
   (SENSES
    ((meta-data :origin step :entry-date 20080528 :change-date nil :comments nil)
     (example "the midway point")
     (LF-PARENT ONT::stage-val)
     )
    )
   )
  (W::halfway
   (SENSES
    ((meta-data :origin step :entry-date 20080528 :change-date nil :comments nil)
     (LF-PARENT ONT::stage-val)
     (example "the halfway point")
     )
    )
   )
  (W::LATE
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("late%3:00:00"))
     (LF-PARENT ONT::SCHEDULED-TIME-MODIFIER)
     )
    )
   )
   (W::immediate
;   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("immediate%5:00:00:close:00"))
     (LF-PARENT ONT::scheduled-time-modifier)
     )
    )
   )
  (W::LEFT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("left%5:00:00:unexhausted:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     (LF-FORM W::REMAINING)
     )
    )
   )
  ((W::LEFT W::OVER)
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("left_over%5:00:00:unexhausted:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     (LF-FORM W::REMAINING)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("left_over%5:00:00:unexhausted:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     (LF-FORM W::REMAINING)
     (TEMPL postpositive-ADJ-TEMPL)
     )
    )
   )
  (W::LIGHT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("light%3:00:01"))
     (LF-PARENT ONT::LIGHTWEIGHT)
     (TEMPL LESS-ADJ-TEMPL)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("light%3:00:05"))
     (LF-PARENT ONT::LIGHT-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
   (W::DARK
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("dark%3:00:01"))
     (LF-PARENT ONT::LIGHT-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::LIGHTWEIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::LIGHTWEIGHT)
     (TEMPL LESS-ADJ-TEMPL)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
  (W::LITTLE
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("little%3:00:01"))
     (LF-PARENT ONT::little)
     (TEMPL LESS-ADJ-TEMPL)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::med))
     )
    )
   )
  (W::LOCAL
   (wordfeats (w::comp-op w::less))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("local%3:00:01"))
     (EXAMPLE "This problem is local [to the area]")
     (LF-PARENT ONT::DISTANCE-VAL)
     (TEMPL ADJ-CO-THEME-TEMPL)
     (SEM (f::orientation ont::less) (f::intensity ont::med))
     )
    )
   )
  (W::LOW
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ;;;; need to differentiate between the two senses
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("low%3:00:01"))
     (EXAMPLE "a low ceiling")
     (LF-PARENT ONT::BROAD)
     )
    ((EXAMPLE "Give me lower resolution" "a low salt diet")
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     (meta-data :origin boudreaux :entry-date 20031024 :change-date 20090731 :wn ("low%3:00:02") :comments nil)
     )
    )
   )

  (W::MAJOR
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("major%3:00:06"))
     (LF-PARENT ONT::primary)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

  (W::MILD
   (wordfeats (W::morph (:FORMS (-LY -er))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("mild%3:00:00"))
     (LF-PARENT ONT::SEVERITY-VAL)
     (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     )    
    )
   )
  (W::MINOR
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("minor%3:00:06"))
     (LF-PARENT ONT::SECONDARY)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

  (W::LONG
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("long%3:00:01"))
     (EXAMPLE "a long line")
     (LF-PARENT ONT::SLIGHT)
     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("long%3:00:01"))
;     (EXAMPLE "a 5 feet long line")
;     (LF-PARENT ONT::Linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98) ;;use the no-premod meaning first
;     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("long%3:00:02"))
     (LF-PARENT ONT::event-duration-modifier)
     (example "how long did the meeting last" "a long meeting/conversation" "long term parking")
     )
    ;; this overgenerates
    ((meta-data :origin cardiac :entry-date 20090416 :change-date nil :comments nil :wn ("long%3:00:02"))
     (LF-PARENT ONT::event-duration-modifier)
     (example "all night long" "the whole week long")   
     (TEMPL postpositive-adj-optional-xp-templ)
     )
    )
   )
  (W::TALL
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("tall%3:00:00"))
     (EXAMPLE "a tall building")
     (LF-PARENT ONT::SLIGHT)
     )
    ;;;;; we want to use the no-premod meaning first
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("tall%3:00:00"))
;     (EXAMPLE "a 5 foot tall building")
;     (LF-PARENT ONT::Linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98)
;     )
    )
   )
  (W::WIDE
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date 20090731 :wn ("wide%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "a wide road")
     (LF-PARENT ONT::BROAD)
     )
    ;;;;; we want to use the no-premod meaning first
;    ((meta-data :origin calo :entry-date 20031222 :change-date nil :wn ("wide%3:00:00") :comments html-purchasing-corpus)
;     (EXAMPLE "a 5 foot wide road")
;     (LF-PARENT ONT::linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98)
;     )
    )
   )
  (W::THICK
   (wordfeats (w::comparative +)(W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date 20090731 :wn ("thick%3:00:01") :comments html-purchasing-corpus)
     (EXAMPLE "a thick wall")
     (LF-PARENT ONT::BROAD)
     )
    ;;;;; we want to use the no-premod meaning first
;    ((meta-data :origin calo :entry-date 20031222 :change-date nil :wn ("thick%3:00:01") :comments html-purchasing-corpus)
;     (EXAMPLE "a 5 foot thick wall")
;     (LF-PARENT ONT::linear-D)
;     (TEMPL ADJ-PREMOD-TEMPL)
;     (PREFERENCE 0.98)
;     )
    )
   )
  (W::THIN
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("thin%3:00:01") :comments html-purchasing-corpus)
     (EXAMPLE "a thin line" "a thin person")
     (LF-PARENT ONT::SLIGHT)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
   )
   )
  (W::FLAT
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040407 :change-date 20090731 :wn ("flat%5:00:00:planar:00") :comments y1v4)
     (EXAMPLE "a flat screen" "a flat stomach")
     (LF-PARENT ONT::SLIGHT)
     )
    )
   )
  (W::SLIM
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("slim%5:00:00:thin:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::SLIGHT)
     )
    )
   )

   (W::SLender
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :wn ("slim%5:00:00:thin:00") :comments LM-vocab)
     (LF-PARENT ONT::SLIGHT)
     )
    )
   )
  
  (W::NARROW
   (wordfeats (w::comparative +) (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("narrow%3:00:00") :comments html-purchasing-corpus)
     (EXAMPLE "a narrow ridge")
     (LF-PARENT ONT::SLIGHT)
     )
    )
   )
  (W::TIGHT
   (wordfeats (W::MORPH (:FORMS (-ly -ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("tight%3:00:01") :comments html-purchasing-corpus)
     (EXAMPLE "a tight fit")
     (LF-PARENT ONT::BINDING-VAL)
     )
    )
   )
  (W::STRINGENT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("stringent%5:00:00:demanding:00") :comments html-purchasing-corpus)
     (EXAMPLE "stringent guidelines")
     (LF-PARENT ONT::BINDING-VAL)
     )
    )
   )
  (W::RIGOROUS
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("rigorous%5:00:00:demanding:00") :comments html-purchasing-corpus)
     (EXAMPLE "stringent guidelines")
     (LF-PARENT ONT::BINDING-VAL)
     )
    )
   )
  (W::strict
   (wordfeats (W::MORPH (:FORMS (-ly -ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("strict%5:00:00:exact:00") :comments html-purchasing-corpus)
     (EXAMPLE "strict guidelines")
     (LF-PARENT ONT::BINDING-VAL)
     )
    )
   )
  (W::LOOSE
   (wordfeats (W::MORPH (:FORMS (-ly -ER))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("loose%3:00:01") :comments html-purchasing-corpus)
     (EXAMPLE "a tight fit")
     (LF-PARENT ONT::BINDING-VAL)
     )
    )
   )
   (W::farthest
   (wordfeats (W::COMPARATIVE W::SUPERL) (W::FUNCTN ONT::linear-scale))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("farther%5:00:01:far:00"))
     (LF-PARENT ONT::max-val)
     (lf-form w::far)
     (TEMPL SUPERL-TEMPL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )

   (W::farther
   (wordfeats (W::COMPARATIVE +) (W::FUNCTN ONT::linear-scale))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("farther%5:00:01:far:00"))
     (LF-PARENT ONT::MORE-VAL)
     (lf-form w::far)
     (TEMPL COMPAR-TEMPL)
     (SEM (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )

  (W::MAIN
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("main%5:00:00:important:00"))
     (LF-PARENT ONT::primary)
     )
    )
   )
   (W::principal
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments y3-test-data :wn ("main%5:00:00:important:00") )
     (LF-PARENT ONT::IMPORTANCE-VAL)
     )
    )
   )
      
  (W::MEDICAL
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20110928 :comments nil :wn ("medical%3:01:00"))
 ;    (LF-PARENT ONT::SITUATION-OBJECT-MODIFIER)
     (LF-PARENT ONT::medical)
     )
    )
   )
  (W::MEDIUM
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("medium%5:00:00:moderate:00"))
     (LF-PARENT ONT::Size-Val)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::MISLEADING
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("misleading%5:00:00:dishonest:00"))
     (LF-PARENT ONT::CORRECTNESS-val)
     )
    )
   )
  (W::accurate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("accurate%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::correct)
     )
    )
   )
  (W::inaccurate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("inaccurate%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::incorrect)
     )
    )
   )
  (W::funny
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050826 :change-date nil :wn ("funny%5:00:00:questionable:00") :comments nil)
     (EXAMPLE "This font looks funny on that system")
     (LF-PARENT ONT::CORRECTNESS-val)
     )
    )
   )
  (W::valid
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050823 :change-date 20090731 :comments nil)
     (EXAMPLE "the return address on spam is usually not valid")
     (LF-PARENT ONT::LOGICAL)
     )
    )
   )
  (W::invalid
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("invalid%3:00:00") :comments nil)
     (EXAMPLE "the return address on spam is usually invalid")
     (LF-PARENT ONT::CORRECTNESS-val)
     )
    )
   )
  (W::legitimate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050831 :change-date 20090731 :wn ("legitimate%5:00:00:established:00") :comments nil)
     (EXAMPLE "too much of my legitimate email is marked as junk")
     (LF-PARENT ONT::LOGICAL)
     )
    )
   )
    
  (W::precise
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("precise%5:00:00:correct:00" "precise%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::PRECISE)
     )
    )
   )
  (W::imprecise
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("imprecise%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::precision-val)
     )
    )
   )
  (W::approximate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040416 :change-date nil :wn ("approximate%5:00:00:inexact:00") :comments caloy2)
     (LF-PARENT ONT::precision-val)
     )
    )
   )
  (W::exact
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("exact%5:00:00:correct:00") :comments html-purchasing-corpus)   (SEM (F::GRADABILITY F::-))
     (LF-PARENT ONT::precision-val)
     )
    )
   )
  (W::realistic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090915 :wn ("realistic%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::actual)
     )
    )
   )
  (W::real
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20090915 :wn ("real%5:00:00:true:00") :comments caloy2)
     (LF-PARENT ONT::actual)
     (example "coffee with real cream")
     )
    )
   )
  (W::actual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20090915 :wn ("actual%5:00:00:true:00") :comments caloy2)
     (LF-PARENT ONT::actual)
     )
    )
   )
  (W::imaginary
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050829 :change-date 20090915 :wn ("imaginary%5:00:00:unreal:00") :comments nil)
     (EXAMPLE "this is an imaginary example")
     (LF-PARENT ONT::nonactual)
     )
    )
   )
  (W::virtual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20051214 :change-date 20090915 :wn ("virtual%5:00:00:essential:00") :comments nil)
     (EXAMPLE "virtual reality")
     (LF-PARENT ONT::nonactual)
     )
    )
   )
  (W::hypothetical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050912 :change-date 20090915 :wn ("hypothetical%5:00:00:theoretical:00") :comments nil)
     (EXAMPLE "the hypothetical breed property")
     (LF-PARENT ONT::nonactual)
     )
    )
   )
  (W::MISCELLANEOUS
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("miscellaneous%5:00:00:general:00"))
     (LF-PARENT ONT::MODIFIER)
     )
    )
   )
  (W::MISTAKEN
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("mistaken%5:00:00:wrong:00"))
     (LF-PARENT ONT::incorrect)
     )
    )
   )
  ((W::MIXED (W::UP))
   (SENSES
    ((LF-PARENT ONT::CORRECTNESS-VAL)
     )
    )
   )
  (W::NEAR
   (wordfeats (W::MORPH (:FORMS (-ER))) (W::COMP-OP W::LESS))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("near%3:00:00"))
     (example "not the near one, the far one")
     (LF-PARENT ONT::near)
     (TEMPL ADJ-THEME-TEMPL)
     (SEM (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
  ((W::NEARBY)
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("nearby%5:00:00:near:00"))
     (EXAMPLE "they went to nearby schools")
     (LF-PARENT ONT::DISTANCE-VAL)
     (TEMPL ADJ-THEME-TEMPL)
     (SEM (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
  (W::EQUIDISTANT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("equidistant%5:00:00:equal:00"))
     (EXAMPLE "They are equidistant [between the lines]")
     (LF-PARENT ONT::DISTANCE-VAL)
     (SEM (F::GRADABILITY F::-))
     (TEMPL ADJ-CO-THEME-TEMPL (xp (% W::pp (W::ptype W::between))))
     )
    )
   )
  (W::DISTANT
    ;; can't auto-generate adv with theme templ
  ;; (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("distant%3:00:01"))
     (EXAMPLE "They are equidistant [between the lines]")
     (LF-PARENT ONT::REMOTE)
     (example "the distant horizon")
     (TEMPL ADJ-THEME-TEMPL)
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     )
    )
   )
  
  (W::nasty
   (wordfeats (W::morph (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date 20090731 :wn ("nasty%3:00:00") :comments s7 :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  
  (W::NEW
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("new%5:00:00:original:00" "new%5:00:00:other:00"))
     (LF-PARENT ONT::novelty-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::NEXT
   (wordfeats (W::COMP-OP W::LESS))
   (SENSES
    ;; what's an example of this? shouldn't next to be an adverb?
;    ((LF-PARENT ONT::DISTANCE-VAL)
;     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::Ptype W::to))))
;     (SEM (F::GRADABILITY F::-))
;     (example "he is next to the church")
;     )
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (example "let's meet next monday")
     (meta-data :origin calo-ontology :entry-date 20060419 :change-date nil :wn ("next%5:00:00:succeeding(a):00") :comments nil)
     )
    )
   )
  
  (W::NICE
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("nice%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("nice%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("nice%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("nice%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::NORTH
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("north%3:00:00"))
     (LF-PARENT ONT::NORTH)
     )
    )
   )
   (W::NORTHWEST
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("northwest%5:00:01:north:00") :comments s10)
     (LF-PARENT ONT::MAP-LOCATION-VAL)
     )
    )
   )
   (W::NORTHEAST
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("northeast%5:00:01:north:00") :comments s10)
     (LF-PARENT ONT::MAP-LOCATION-VAL)
     )
    )
   )
    (W::SOUTHEAST
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("southeast%5:00:01:south:00") :comments s10)
     (LF-PARENT ONT::MAP-LOCATION-VAL)
     )
    )
   )
    (W::SOUTHWEST
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("southwest%5:00:01:south:00") :comments s10)
     (LF-PARENT ONT::MAP-LOCATION-VAL)
     )
    )
   )
  (W::NORTHERN
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("northern%5:00:02:north:00"))
     (LF-PARENT ONT::NORTH)
     )
    )
   )
  (W::SOUTHERN
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("southern%5:00:02:south:00" "southern%3:00:01"))
     (LF-PARENT ONT::SOUTH)
     )
    )
   )
  (W::WESTERN
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("western%5:00:00:west:00"))
     (LF-PARENT ONT::WEST)
     )    
    )
   )
  (W::EASTERN
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("eastern%5:00:00:east:00"))
     (LF-PARENT ONT::EAST)
     )
    )
   )
  ((W::O W::K)
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL adj-purpose-TEMPL)
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     (LF-FORM W::OKAY)
     )
    )
   )
  
  (W::OK
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (TEMPL central-adj-templ)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (LF-PARENT ONT::good)
     (TEMPL adj-purpose-TEMPL)
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("ok%5:00:00:satisfactory:00")  :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     (LF-FORM W::OKAY)
     )
    )
   )
  
  (W::OKAY
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("okay%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (TEMPL central-adj-templ)
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("okay%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::good)
     (TEMPL adj-purpose-TEMPL)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("okay%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (LF-FORM W::OKAY)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("okay%5:00:00:satisfactory:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::good)
     (SEM (f::orientation ont::more) (f::intensity ont::lo))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     (LF-FORM W::OKAY)
     )
    )
   )

    (W::OLD
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("old%5:00:00:preceding:00"))
     (LF-PARENT ONT::AGE-VAL)
     )
    )
   )

  (W::YOUNG
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::AGE-VAL)
     )
    )
   )
  
  (W::OWN
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070323 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::own)
     (example "his own truck")
     (TEMPL own-TEMPL)
     )
    )
   )
  
  (W::ONLY
   (wordfeats (W::comparative +))
   (SENSES
    ;;;;; use this to allow it to appear in the + comparative-adj + cardinal rule
    ;;;;; the only two trucks, the best two trucks
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("only%5:00:00:single:05"))
     (LF-PARENT ONT::CARDINALITY-VAL)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::OPEN
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin step :entry-date 20080624 :change-date nil :comments nil :wn ("open%3:00:01"))
     (EXAMPLE "it's open") ;; basic use should not generate a purpose impro
     (LF-PARENT ONT::OPENNESS-VAL)
     )
    ;; changed adj-purpose-optional to adj-purpose
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("open%3:00:01"))
     (EXAMPLE "that's open for business")
     (LF-PARENT ONT::OPENNESS-VAL)
     (TEMPL ADJ-PURPOSE-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("open%3:00:01"))
     (LF-PARENT ONT::OPENNESS-VAL)
     (example "the stores open are ...")
     (TEMPL postpositive-ADJ-TEMPL)
     )
    )
   )
  (W::ORIGINAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (wordfeats (W::morph (:forms (-LY))) (W::comp-op -))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("original%5:00:01:first:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     )
    )
   )
  (W::OTHER
   (SENSES
    ;;;;; ((LF-PARENT LF_IDENTITY-VAL) (TEMPL ADJ-SUBCAT-OBJECT-TEMPL (XP (% PP (PTYPE THAN)))))
    ;;;;; ((LF-PARENT LF_IDENTITY-VAL) (TEMPL attributive-only-adj-templ))
    ;;;; Myrosia 2003-11-04 added "comparative +" to make "the other three drugs" work

    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("other%3:00:00"))
     (LF-PARENT ONT::IDENTITY-VAL)
     (TEMPL adj-theme-templ)
     (SEM (F::GRADABILITY F::-))
     (SYNTAX (W::atype W::attributive-only) (W::comparative +))
     )
    )
   )
  (W::OUT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20081028 :comments nil)
     ;; MD: this is marked as predicative-only because you cannot say "the out bulb", or at least not easily, and it was creating major ambiguities in multi-sentence cases with "burn out"
     (LF-PARENT ONT::IN-WORKING-ORDER-val)
     (example "the bridge is out")
     (templ predicative-only-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20080328 :change-date 20081028 :comments nil)
     (LF-PARENT ONT::enough-val)
     ;; MD: this is marked as predicative-only because you cannot say "the out sugar", and otherwise it creates ambiguities with "out" as a particle
     (TEMPL predicative-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::of))))
     (example "out of sugar" "out of breath" "out of time")
     )
    )
   )
  (W::DOWN
   (SENSES
    ((meta-data :origin monroe :entry-date 20060824 :change-date nil :comments nil :wn ("down%3:00:00"))
     (LF-PARENT ONT::FALLEN-val)
     (example "the lines are down")
     (templ predicative-only-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20101231 :change-date nil :comments nil)
     (LF-PARENT ONT::FALLEN-VAL)
     (example "they have lines down")
     (TEMPL postpositive-ADJ-TEMPL)
     )
    )
   )
  ;; derive from verb
;  (W::WASTED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil)
;     (LF-PARENT ONT::IN-WORKING-ORDER-val)
;     )
;    )
;   )
  (W::PARTICULAR
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("particular%5:00:00:specific:00" "particular%5:00:02:specific:00"))
     (LF-PARENT ONT::SPECIFICITY-VAL)
     )
    )
   )
  
  (W::PERFECT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("perfect%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("perfect%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("perfect%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("perfect%3:00:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-RS))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::political
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("political%3:00:00"))
     (LF-PARENT ONT::political)
     )
    )
   )
  (W::POSSIBLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("possible%3:00:00"))
     (EXAMPLE "that's possible [for him]")
     (LF-PARENT ONT::POSSIBLE)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("possible%3:00:00"))
     (EXAMPLE "it's possible to change it")
     (LF-PARENT ONT::POSSIBLE)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::PRESENT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("present%3:00:01"))
     (LF-PARENT ONT::temporal-location)
     (P "calculate the present day value")
     (TEMPL attributive-only-adj-templ)
     )
    ((meta-data :origin cernl :entry-date 20110314 :change-date nil :comments ticket-243)
     (LF-PARENT ONT::availability-val)
     (example "infiltrates that were not present on the scan")
     )
    )
   )
  (W::PRETTY
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("pretty%5:00:00:beautiful:00") :comlex (ADJECTIVE))
     (LF-PARENT ONT::BEAUTIFUL)
     )
    )
   )
  (W::UGLY
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("pretty%5:00:00:beautiful:00") :comlex (ADJECTIVE))
     (LF-PARENT ONT::BEAUTY-VAL)
     )
    )
   )
  
  (W::PREVIOUS
   (wordfeats (W::morph (:forms (-LY))) (W::comp-op -))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("previous%5:00:00:past:00" "previous%5:00:00:preceding:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     (TEMPL attributive-only-adj-templ)
     )
    )
   )
  (W::PRIOR
   (SENSES
    ((meta-data :origin calo :entry-date 20040414 :change-date nil :wn ("prior%5:00:00:antecedent:00") :comments caloy1v6)
     (LF-PARENT ONT::SEQUENCE-VAL)
     (TEMPL attributive-only-adj-templ)
     )
    )
   )
   (W::efficient
     (wordfeats (W::MORPH (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060123 :change-date nil :wn ("efficient%3:00:00") :comments caloy3)
     (LF-PARENT ONT::speed-VAL)
     )
    )
   )
  (W::QUICK
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("quick%5:00:00:active:01"))
     (LF-PARENT ONT::SPEEDY)
     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("quick%5:00:00:hurried:00"))
;     (LF-PARENT ONT::QUICK)
;     (TEMPL LESS-ADJ-TEMPL)
;     )
    )
   )
  (W::READY
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (EXAMPLE "it's ready")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (EXAMPLE "that's ready for him")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (EXAMPLE "he's ready to go")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  ((W::in W::place)
   (SENSES
    ((EXAMPLE "that's in place [for him]")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     (SYNTAX (W::atype W::predicative-only))
     )
    )
   )
  ((W::in W::position)
   (SENSES
    ((EXAMPLE "he is in position")
     (meta-data :origin trips :entry-date 20070503 :change-date nil :comments nil :wn ("ready%3:00:00"))
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL CENTRAL-ADJ-XP-TEMPL)
     (SYNTAX (W::atype W::predicative-only))
     )
    )
   )
  (W::REGULAR
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("regular%3:00:00"))
     (LF-PARENT ONT::COMMON)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20040504 :change-date 20090731 :wn ("regular%5:00:00:scheduled:00") :comments calo-y1variants)
     (LF-PARENT ONT::REGULAR)
     (example "you can pay in regular installments")
     )
    )
   )
   (W::IRREGULAR
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::OCCASIONAL)
     (example "he exercises at irregular intervals")
     )
    )
   )

  (W::habitual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070320 :change-date nil :wn ("frequent%3:00:00") :comments nil)
     (LF-PARENT ONT::frequency-val)
     (example "they had habitual meetings")
     )
    )
   )
  (W::periodic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050825 :change-date nil :wn ("periodic%3:00:00") :comments nil)
     (LF-PARENT ONT::frequency-val)
     (example "check for updates periodically")
     )
    )
   )
  (W::occasional
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060712 :change-date 20090731 :wn ("occasional%5:00:00:unpredictable:00") :comments plow-req)
     (LF-PARENT ONT::OCCASIONAL)
     (example "occasional storms")
     )
    )
   )
  ;; derive from verb
;  (W::isolated
;   (wordfeats (W::morph (:FORMS (-LY))))
;   (SENSES
;    ((meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("isolated%5:00:00:sporadic:00" "isolated%5:00:00:separate:00") :comments plow-req)
;     (LF-PARENT ONT::continuous-val)
;     (example "isolated storms")
;     )
;    )
;   )
  (W::frequent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date 20090731 :wn ("frequent%3:00:00") :comments calo-y1variants)
     (LF-PARENT ONT::REGULAR)
     (example "you can pay in frequent installments")
     )
    )
   )
  (W::vague
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ONT::precision-val)
     )
    )
   )
  (W::sharp
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (example "a sharp pain")
     )
    )
   )
  (W::rare
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :wn ("frequent%3:00:00") :comments LM-vocab)
     (LF-PARENT ONT::OCCASIONAL)
     (example "he rarely feels congested")
     )
    )
   )
  (W::infrequent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050909 :change-date 20090731 :wn ("infrequent%3:00:00") :comments nil)
     (LF-PARENT ONT::OCCASIONAL)
     (example "remove an infrequently used address")
     )
    )
   )
  (W::weekly
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("weekly%3:01:00") :comments calo-y1variants)
     (LF-PARENT ONT::frequency-val)
     (example "they have weekly meetings")
     )
    )
   )

  (W::monthly
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("monthly%3:01:00") :comments calo-y1variants)
     (LF-PARENT ONT::frequency-val)
     (example "they have monthly meetings")
     )
    )
   )
  (W::daily
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("daily%3:01:00") :comments calo-y1variants)
     (LF-PARENT ONT::frequency-val)
     (example "they have daily meetings" "a daily vitamin")
     )
    )
   )
   (W::yearly
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date nil :wn ("yearly%3:01:00") :comments calo-y1variants)
     (LF-PARENT ONT::frequency-val)
     (example "they have yearly meetings")
     )
    )
   )
  (W::REMAINING
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("remaining%5:00:00:unexhausted:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("remaining%5:00:00:unexhausted:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     (TEMPL postpositive-ADJ-TEMPL)
     )
    )
   )

  (W::NECESSARY
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("necessary%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("necessary%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::CENTRAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("central%5:00:00:important:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     )
    )
   )
  (W::BASIC
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("basic%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::fundamental-VAL)
     )
    )
   )
  ((W::BARE W::BONES)
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("basic%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::fundamental-VAL)
     (example "a bare bones system")
     )
    )
   )
  (W::vital
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090403 :change-date 20090731 :wn ("crucial%3:00:00") :comments nil)
     (LF-PARENT ONT::primary)
     )
    )
   )
   (W::CRUCIAL
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("crucial%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     )
    )
   )
   (W::CRITICAL
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("critical%5:00:00:indispensable:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     )
    )
   )
  (W::ESSENTIAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("essential%5:00:00:necessary:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     )
    )
   )
  (W::primary
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date 20090731 :wn ("primary%3:00:00") :comments calo-y1variants)
     (LF-PARENT ONT::primary)
     )
    )
   )
  (W::secondary
   (SENSES
    ((meta-data :origin calo :entry-date 20040504 :change-date 20090731 :wn ("secondary%3:00:01") :comments calo-y1variants)
     (LF-PARENT ONT::SECONDARY)
     )
    )
   )
  (W::INDISPENSABLE
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("indispensable%5:00:00:necessary:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("indispensable%5:00:00:necessary:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::primary)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::UNNECESSARY
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("unnecessary%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::SECONDARY)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("unnecessary%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::SECONDARY)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

  (W::RIDICULOUS
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ridiculous%5:00:00:undignified:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  
  (W::RIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("right%3:00:02"))
     (LF-PARENT ONT::evaluation-VAL)
     (example "that's right")
     (templ adj-co-theme-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("right%5:00:00:appropriate:00"))
     (EXAMPLE "that's right for him")
     (LF-PARENT ONT::EVALUATION-VAL)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::For))))
     (SYNTAX (W::allow-deleted-comp -))
     )
    )
   )

  (W::WRONG
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("wrong%3:00:02"))
     (LF-PARENT ONT::evaluation-VAL)
     (templ adj-co-theme-templ)
     (example "that's wrong")
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("wrong%5:00:00:inappropriate:00"))
     (EXAMPLE "that's wrong for him")
     (LF-PARENT ONT::EVALUATION-VAL)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::For))))
     (SYNTAX (W::allow-deleted-comp -))
     )
    )
   )
  (W::ROUND
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("round%3:00:00"))
     (LF-PARENT ONT::SHAPE-val)
     )
    )
   )
  (W::ROUTINE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("routine%5:00:00:ordinary:00"))
     (LF-PARENT ONT::COMMON)
     )
    )
   )
  
  (W::RETAIL
   (SENSES
    ((meta-data :origin calo :entry-date 20050324 :change-date nil :wn ("retail%3:00:00") :comments caloy2)
     (example "the manufacturer's retail price")
     (LF-PARENT ONT::COMMERCE-VAL)
     )
    )
   )

  (W::wholesale
   (SENSES
    ((meta-data :origin calo :entry-date 20050324 :change-date nil :wn ("wholesale%3:00:00") :comments caloy2)
     (example "the manufacturer's retail price")
     (LF-PARENT ONT::COMMERCE-VAL)
     )
    )
   )
 
  ((W::on w::sale)
   (SENSES
    ((example "this model is on sale")
     (meta-data :origin calo :entry-date 20050324 :change-date nil :comments caloy2)
     (LF-PARENT ONT::commerce-val)
     (SEM (F::GRADABILITY F::-))
     (SYNTAX (W::atype W::predicative-only))
     )
    ((example "the computers on sale are the g3 and g4")
     (meta-data :origin calo :entry-date 20050324 :change-date nil :comments caloy2)
     (LF-PARENT ONT::commerce-val)
     (SEM (F::GRADABILITY F::-))
     (TEMPL postpositive-adj-templ)
     )
    )
   )
  (W::economic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20031223 :change-date nil :wn ("economic%3:01:01") :comments nil)
     (LF-PARENT ONT::ECONOMIC-VAL)
     )
    )
   )
  (W::financial
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060421 :change-date nil :wn ("financial%3:01:00") :comments nil)
     (LF-PARENT ONT::ECONOMIC-VAL)
     )
    )
   )
  (W::RICH
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("rich%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::ECONOMIC-VAL)
     )
    )
   )
  (W::POOR
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("poor%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::ECONOMIC-VAL)
     )
    )
   )
  (W::SAME
   (wordfeats (W::ALLOW-POST-N1-SUBCAT +))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("same%3:00:02"))
     (EXAMPLE "They are same [as John's]" "the same book as John's")
     (LF-PARENT ONT::SAME)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::AS))))
     )    
    ))   
  
  ((W::THE W::SAME)
   (SENSES
    ((EXAMPLE "They are the same [as John's]")
     (LF-PARENT ONT::IDENTITY-VAL)
     (LF-FORM W::SAME)
     (SYNTAX (w::atype w::predicative-only))
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::AS))))
     (preference .97) ;; reduce competition with the article
     )
    ((EXAMPLE "I want a book the same as John's")
     (LF-PARENT ONT::IDENTITY-VAL)
     (LF-FORM W::SAME)
     (SYNTAX (w::atype w::postpositive) (w::allow-deleted-comp -))
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::AS))))
     (preference .97) ;; reduce competition with the article
     )    
    ))
   
 ; derive from verb
;  (W::SCHEDULED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("scheduled%3:00:00"))
;     (LF-PARENT ONT::SCHEDULED-TIME-MODIFIER)
;     )
;    )
;   )
   (W::rusty
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     (LF-PARENT ONT::modernity-val)
     (example "his exercise skills are a little rusty")
     )
    )
   )

   
  (W::RECENT
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("recent%5:00:00:new:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::modernity-val)
     )
    )
   )

  ;; derive from verb
;  (W::SCREWED
;   (SENSES
;    ((LF-PARENT ONT::ACCEPTABILITY-VAL)
;     (TEMPL LESS-ADJ-TEMPL)
;     )
;    )
;   )
  
  (W::SEPARATE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("separate%3:00:00"))
     (EXAMPLE "They are separate [from each other]")
     (LF-PARENT ONT::DIFFERENT)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::FROM))))
     )
    )
   )
  (W::alone
   (SENSES
    ((EXAMPLE "he is alone")
     (LF-PARENT ONT::singularity-VAL) 
     (meta-data :origin calo :entry-date 20040907 :change-date nil :wn ("alone%5:00:00:unsocial:00") :comments caloy2)
     (SYNTAX (W::atype W::predicative-only))
     )
    )
   )
  (W::individual
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((EXAMPLE "a user can create individual calendars")
     (LF-PARENT ONT::singularity-VAL) 
     (meta-data :origin task-learning :entry-date 20050823 :change-date nil :wn ("individual%3:00:00") :comments nil)
     )
    )
   )
  (W::SERIOUS
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("serious%5:00:00:important:00"))
     (LF-PARENT ONT::primary)
     )
    )
   )

  ;; severity and also frequency/suddenness; want to contract with severe, and also with chronic, which for now is a continuous-val
  (W::acute
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("severe%5:00:00:intense:00"))
     (LF-PARENT ONT::SEVERITY-VAL)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::SEVERE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("severe%5:00:00:intense:00"))
     (LF-PARENT ONT::SEVERITY-VAL)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  (W::extreme
   (SENSES
    ((LF-PARENT ONT::SEVERITY-VAL)
     (example "under extreme conditions")
     (meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("extreme%5:00:00:intense:00") :comments caloy2)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
  (W::moderate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::SEVERITY-VAL)
     (example "under moderate conditions")
     (meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("extreme%5:00:00:intense:00") :comments caloy2)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  (W::dramatic
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::severity-VAL)
     (example "dramatic improvements in performance")
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("dramatic%5:00:00:impressive:00") :comments nil)
     )
    )
   )
  (W::SHORT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("short%3:00:01"))
     (LF-PARENT ONT::BROAD)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("short%3:00:02"))
     (LF-PARENT ONT::event-duration-modifier)
     (example "a short meeting")
     (TEMPL LESS-ADJ-TEMPL)
     )
     ((meta-data :origin chf :entry-date 20070810 :change-date 20090731 :comments chf-dialogues)
      (LF-PARENT ONT::inadequate)
      (example "he is short of breath" "short of time")
      (TEMPL central-adj-xp-required-TEMPL (XP (% W::PP (W::Ptype (? pt w::on W::of)))))
     )
    )
   )
   (w::feverish
     (wordfeats (W::MORPH (:FORMS (-LY))))
   (senses
    ((meta-data :origin chf :entry-date 20080328 :change-date 20090731 :comments chf-dialogues)
     (lf-parent ONT::AILING)
     (example "he is feverish")
     )))
 (w::clammy
  (senses
   ((meta-data :origin asma :entry-date 20110812 :change-date nil :comments test-data)
    (lf-parent ONT::AILING)
    )))
   (w::bloody
    (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (senses
    ((meta-data :origin chf :entry-date 20080328 :change-date nil :comments chf-dialogues)
     (lf-parent ont::physical-symptom-val)
     )))
    (w::sweaty
     (wordfeats (W::MORPH (:FORMS (-er -LY))))
     (senses
      ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (lf-parent ont::physical-symptom-val)
     )))
    
  ((w::short w::of w::breath)
   (senses
   ((meta-data :origin chf :entry-date 20070910 :change-date nil :comments chf-dialogues)
   (lf-parent ont::physical-symptom-val)
   (templ less-adj-templ)
   (example "he is short of breath")
   )))
   ((w::out w::of w::breath)
   (senses
   ((meta-data :origin chf :entry-date 20071227 :change-date nil :comments nil)
   (lf-parent ont::physical-symptom-val)
   (templ less-adj-templ)
   (example "he is out of breath")
   )))
   ;; derive from verb
;   (w::winded
;   (senses
;   ((meta-data :origin chf :entry-date 20071227 :change-date nil :comments nil)
;   (lf-parent ont::physical-symptom-val)
;   (templ less-adj-templ)
;   (example "he is out of breath")
;   )))
   (w::breathless
    (wordfeats (W::MORPH (:FORMS (-LY))))
   (senses
   ((meta-data :origin chf :entry-date 20071227 :change-date nil :comments nil)
   (lf-parent ont::physical-symptom-val)
   (templ less-adj-templ)
   (example "he is out of breath")
   )))
   ;; derive from verb
;   (W::constipated
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
;     (LF-PARENT ont::physical-symptom-val)
;     (templ central-adj-templ)
;     )
;    )
;   )
  
   (W::DEEP
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("deep%3:00:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::BROAD)
     (TEMPL LESS-ADJ-TEMPL)
     (example "a deep hole")
     )
    ((meta-data :origin cardiac :entry-date 20090130 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::intense)
     (TEMPL LESS-ADJ-TEMPL)
     (example "deep breathing")
     )
    )
   )
  (W::shallow
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::SLIGHT)
     (TEMPL LESS-ADJ-TEMPL)
     (example "a shallow ditch")
     )
    ((meta-data :origin cardiac :entry-date 20090130 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::intense)
     (TEMPL LESS-ADJ-TEMPL)
     (example "shallow breathing")
     )
    )
   )

  ;; derive from verb
;  (W::labored
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
;     (LF-PARENT ONT::intensity-val)
;      (example "labored breathing")
;     )
;    )
;   )
  
    (W::dry
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     (LF-PARENT ONT::dampness-val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ;; a dry cough
    )
   )
    (W::wet
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
     (LF-PARENT ONT::dampness-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::HOT
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("hot%3:00:01") :comments html-purchasing-corpus)
      (LF-PARENT ONT::WARM)
     )
    )
   )
   (W::COLD
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("cold%3:00:01") :comments html-purchasing-corpus)
      (LF-PARENT ONT::COLD)
      (TEMPL LESS-ADJ-TEMPL)
      )
     )
    )
   (W::sunny
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("sunny%5:00:00:clear:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::windy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("windy%5:00:00:stormy:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::cloudy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615  :change-date 20090731 :wn ("cloudy%3:00:00") :comments pq)
      (LF-PARENT ONT::CLOUDY)
     )
    )
   )
   (W::humid
    (SENSES
     ((meta-data :origin plow :entry-date 20060712  :change-date nil :wn ("humid%5:00:00:wet:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::hazy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060712  :change-date 20090731 :wn ("hazy%5:00:00:cloudy:00") :comments pq)
      (LF-PARENT ONT::CLOUDY)
     )
    )
   )
   (W::muggy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060712  :change-date nil :wn ("muggy%5:00:00:wet:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::foggy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060712  :change-date 20090731 :wn ("foggy%5:00:00:cloudy:00") :comments pq)
      (LF-PARENT ONT::CLOUDY)
     )
    )
   )
   (W::overcast
    (SENSES
     ((meta-data :origin plow :entry-date 20060712  :change-date 20090731 :wn ("overcast%5:00:00:cloudy:00") :comments pq)
      (LF-PARENT ONT::CLOUDY)
     )
    )
   )
   (W::breezy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("breezy%5:00:00:stormy:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::rainy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("rainy%5:00:00:wet:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::smoggy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date 20090731 :wn ("smoggy%5:00:00:cloudy:00") :comments pq)
      (LF-PARENT ONT::CLOUDY)
     )
    )
   )
   (W::snowy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("snowy%5:00:02:covered:00") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::balmy
    (wordfeats (W::MORPH (:FORMS (-ER))))
    (SENSES
     ((meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("balmy%5:00:00:clement:02") :comments pq)
      (LF-PARENT ONT::atmospheric-val)
     )
    )
   )
   (W::SMOOTH
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("smooth%3:00:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::Texture-val)
      (TEMPL LESS-ADJ-TEMPL)
      )
     )
    )
   ;; derive from verb
;   (W::jagged
;    (SENSES
;     ((meta-data :origin task-learning :entry-date 20050824 :change-date nil :wn ("jagged%5:00:00:uneven:00") :comments nil)
;      (EXAMPLE "if the text appears jagged, you need to recalibrate")
;      (LF-PARENT ONT::Texture-val)
;      (TEMPL LESS-ADJ-TEMPL)
;      )
;     )
;    )
   (W::SOLID
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("solid%3:00:01") :comments html-purchasing-corpus)
      (LF-PARENT ONT::Texture-val)
      (TEMPL LESS-ADJ-TEMPL)
      )
     )
    )
   (W::SEAMLESS
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("seamless%3:00:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::Texture-val)
      (TEMPL central-ADJ-TEMPL)
      )
     )
    )
   (W::SOFT
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("soft%3:00:01") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Texture-val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("soft%3:00:04") :comments html-purchasing-corpus)
     (LF-PARENT ONT::QUIET)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

   (W::WEAK
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20050216 :change-date 20090731 :wn ("weak%3:00:00") :comments caloy2)
      (LF-PARENT ONT::weak)
      (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
      (TEMPL LESS-ADJ-TEMPL)
      )
     )
    )
   ((W::out w::of w::whack)
   (SENSES
    ((LF-PARENT ONT::in-working-order-val)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
   ((W::out w::of w::kilter)
   (SENSES
    ((LF-PARENT ONT::in-working-order-val)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
   ((W::off w::kilter)
   (SENSES
    ((LF-PARENT ONT::in-working-order-val)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
   ((W::off w::balance)
   (SENSES
    ((LF-PARENT ONT::steadiness-val)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )
   (W::steady
     (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::steady)
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090818 :comments LM-vocab)
     )
    ((LF-PARENT ONT::CONTINUOUS-VAL)
     (meta-data :origin chf :entry-date 20070810 :change-date nil :comments chf-dialogues)
     (EXAMPLE "I think my weight is steady")
     )
    )
   )
    (W::unsteady
       (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::UNSTEADY)
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     )
    ((LF-PARENT ONT::CONTINUOUS-VAL)
     (meta-data :origin chf :entry-date 20090818 :change-date nil :comments chf-dialogues)
     (EXAMPLE "I think my weight is unsteady")
     )
    )
   )
    (W::wobbly
     (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::steadiness-val)
     (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments LM-vocab)
     )
    )
   )
    (W::shaky
     (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::UNSTEADY)
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     )
    )
   )
   (W::shakey
     (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::steadiness-val)
     (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     )
    )
   )

    (W::unbalanced
     (wordfeats (W::MORPH (:FORMS (-er -LY))))
     (SENSES
      ((LF-PARENT ONT::steadiness-val)
       (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
       )
    )
   )
    ;; derive from verb
;     (W::balanced
;     (wordfeats (W::MORPH (:FORMS (-er -LY))))
;     (SENSES
;      ((LF-PARENT ONT::steadiness-val)
;       (meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
;       )
;    )
;   )

  (W::scarce
    (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::number-related-property-val)
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090915 :comments LM-vocab)
     )
    )
   )
   (W::bare
    (wordfeats (W::MORPH (:FORMS (-er -LY))))
   (SENSES
    ((LF-PARENT ONT::UNADORNED)
     (example "the bare essentials")
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     )
    )
   )
   (W::naked
     (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::UNADORNED)
     (example "the naked truth")
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     )
    )
   )
   (W::unadorned
     (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::UNADORNED)
     (example "the unadorned truth")
     (meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     )
    )
   )
   (W::hardy
   (SENSES
    ((LF-PARENT ONT::substantial-property-val)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date 20090915 :comments y3-test-data)
     )
    )
   )
   (W::strong
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20050216 :change-date 20090731 :wn ("strong%3:00:00") :comments caloy2)
      (LF-PARENT ONT::intense)
      (TEMPL central-ADJ-TEMPL)
      (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
      )
     )
    )
   (W::bright
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn ("bright%3:00:00") :comments projector-purchasing)
     (example "I need a very bright projector")
     (LF-PARENT ONT::luminosity-val)
     (TEMPL central-ADJ-TEMPL)
     )
    )
   )
   (W::dim
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin caloy2 :entry-date 20050527 :change-date nil :wn ("dim%5:00:00:dark:00") :comments projector-purchasing)
     (example "the lamp that lasts the longest is the dimmest")
     (LF-PARENT ONT::luminosity-val)
     (TEMPL central-ADJ-TEMPL)
     )
    )
   )
    (W::faint
     (wordfeats (W::MORPH (:FORMS (-ER -LY)))) 
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::weak)
     (templ central-adj-templ)
     (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
     )
    )
   )
   (W::LOUD
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("loud%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::NOISY)
     (TEMPL central-ADJ-TEMPL)
     )
    )
   )

   (W::QUIET
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("quiet%3:00:01") :comments html-purchasing-corpus)
      (LF-PARENT ONT::QUIET)
      (TEMPL central-ADJ-TEMPL)
      )
     )
    )
   (W::SILENT
    (wordfeats (W::MORPH (:FORMS (-LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20050505 :change-date 20090731 :wn ("silent%5:00:00:quiet:00") :comments projector-purchasing)
      (LF-PARENT ONT::QUIET)
      (TEMPL LESS-ADJ-TEMPL)
      )
     )
    )
   (W::NOISY
    (wordfeats (W::MORPH (:FORMS (-ER -LY))))
    (SENSES
     ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("noisy%3:00:00") :comments html-purchasing-corpus)
      (LF-PARENT ONT::NOISY)
      (example "they booked him in a noisy room facing the street")
      (TEMPL central-ADJ-TEMPL)
      )
     ((meta-data :origin lou2 :entry-date 20061121 :change-date nil :comments nil)
      (LF-PARENT ONT::interference-val)
      (example "ivan has a noisy sensor")
      (TEMPL central-ADJ-TEMPL)
      )
     )
    )

   (W::audible
    (SENSES
     ((meta-data :origin calo :entry-date 20050216 :change-date 20090915 :wn ("audible%3:00:00") :comments caloy2)
      (LF-PARENT ONT::audible-property-val)
      )
     )
    )
   
   (W::ROUGH
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("rough%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Texture-val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )

  (W::SIGNIFICANT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("significant%3:00:00"))
     (LF-PARENT ONT::primary)
     )
    )
   )
  (W::SIMILAR
   ;; can't auto-generate -ly with theme roles yet
   ;;(wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("similar%3:00:04"))
     (EXAMPLE "john is similar [to jane]")
     (LF-PARENT ONT::SIMILAR)
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE (? pt w::in w::to)))))
     )
    )
   )
   (W::kindred
   (SENSES
    ((meta-data :origin caloy3 :entry-date 20070330 :change-date 20090731 :comments caloy3-test-data :wn ("similar%3:00:04"))
     (LF-PARENT ONT::SIMILAR)
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE (? pt w::in w::to)))))
     )
    )
   )
  (W::comparable
    ;; can't auto-generate adv with theme templ
  ;; (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((EXAMPLE "png is comparable to gif")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("comparable%5:00:00:same:00") :comments nil)
     (LF-PARENT ONT::SIMILARITY-VAL)
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE (? pt w::in w::to)))))
     )
    )
   )

   (W::comparative
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::RELATIVE) ;; like relative(ly)
     (example "a comparative guide/study" "comparatively mild")
     )
    )
   )
  (W::analogous
    ;; can't auto-generate adv with theme templ
   ;;(wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((EXAMPLE "linking a program to a library is analogous to running a program")
     (meta-data :origin task-learning :entry-date 20050831 :change-date 20090731 :wn ("analogous%5:00:00:similar:00") :comments nil)
     (LF-PARENT ONT::SIMILAR)
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE (? pt w::in w::to)))))
     )
    )
   )
  
  (W::LIKE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("like%3:00:00"))
     (EXAMPLE "it is like that")
     (LF-PARENT ONT::SIMILAR)
     (templ adj-co-theme-templ (xp (% w::np)))
     )
    )
   )


  ;; could also be done in the grammar but it's only semi-productive
  ;; such an experience
  ;; quite a/an ...
  ;; others?
  ((w::such w::a)
   (SENSES
    ((meta-data :origin step :entry-date 20080612 :change-date nil :comments nil :wn ("like%3:00:00"))
     (LF-PARENT ONT::exemplifies)
     (example "such a proposal is a good candidate for funding")
     (templ central-adj-sing-templ)
     )
    )
   )
  
   (w::such
   (SENSES
    ((meta-data :origin step :entry-date 20080612 :change-date nil :comments nil :wn ("like%3:00:00"))
     (EXAMPLE "a proposal such as that one")
     (LF-PARENT ONT::exemplifies)
     (lf-form w::such-as)
     (templ binary-constraint-adj-templ)
     )
    ((LF-PARENT ONT::exemplifies)
     (example "such proposals are good candidates for funding")
     (templ central-adj-plur-templ)
     (preference .92) ; prefer such X as Y rule in grammar
     )
    )
   )
   
   ((w::as w::in)
   (SENSES
    ((meta-data :origin step :entry-date 20080623 :change-date nil :comments nil :wn ("like%3:00:00"))
     (EXAMPLE "free as in freedom")
     (LF-PARENT ONT::exemplifies)
     (templ binary-constraint-adj-templ  (xp (% w::pp (w::PTYPE w::in))))
     )
    )
   )
  (W::SINGLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("single%3:00:00"))
     (LF-PARENT ONT::CARDINALITY-VAL)
     )
    )
   )
  

  (W::dual
   (SENSES
    ((LF-PARENT ONT::CARDINALITY-VAL)
     (example "dual processors")
     (meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("dual%5:00:00:multiple:00") :comments caloy2)
     )
    )
   )

   (W::twin
   (SENSES
    ((LF-PARENT ONT::CARDINALITY-VAL)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :wn ("dual%5:00:00:multiple:00") :comments caloy3-test-data)
     )
    )
   )
    (W::civic
   (SENSES
    ((LF-PARENT ONT::urban-VAL)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     )
    )
   )
   (W::urban
   (SENSES
    ((LF-PARENT ONT::urban-VAL)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     )
    )
   )
   (W::rural
   (SENSES
    ((LF-PARENT ONT::urban-VAL)
     (meta-data :origin caloy3 :entry-date 20070330 :change-date nil :comments caloy3-test-data)
     )
    )
   )
  (W::SLOW
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("slow%3:00:01"))
     (LF-PARENT ONT::SPEED-VAL)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("slow%3:00:01"))
     (LF-PARENT ONT::event-duration-modifier)
     )
    )
   )
  (W::SMALL
   (wordfeats (W::MORPH (:FORMS (-ER ))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("small%5:00:00:limited:00"))
     (LF-PARENT ONT::small)
     (TEMPL LESS-ADJ-TEMPL)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::med))
     )
    )
   )
  (W::SO
   (SENSES
    ((LF-PARENT ONT::actual)
     (example "that's so") ;?
     (preference .97) ; don't interfere w/ adv interpretations of so
     )
    )
   )
  (W::teeny
   (SENSES
    ((LF-PARENT ONT::tiny)
     (meta-data :origin fruitcarts :entry-date 20060215 :change-date 20090731 :wn ("teeny%5:00:00:small:00") :comments nil)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
  (W::TINY
   (wordfeats (W::MORPH (:FORMS (-ER ))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("tiny%5:00:00:small:00"))
     (LF-PARENT ONT::tiny)
     (TEMPL LESS-ADJ-TEMPL)
     (SEM (F::GRADABILITY F::+) (f::orientation ont::less) (f::intensity ont::hi))
     )
    )
   )
   (w::center
     (senses
      ((lf-parent ont::location-val)
       (meta-data :origin step :entry-date 20080705 :change-date nil :comments step5)
       )
      ))
    (w::leftmost
     (senses
      ((lf-parent ONT::LEFT)
       (meta-data :origin fruitcarts :entry-date 20060215 :change-date 20090731 :wn ("leftmost%5:00:00:left:00") :comments nil)
       )
      ))	  
    (w::rightmost
     (senses
      ((lf-parent ONT::RIGHT)
       (meta-data :origin fruitcarts :entry-date 20060215 :change-date 20090731 :wn ("rightmost%5:00:00:right:00") :comments nil)
       )
      ))
     (w::lefthand
     (senses
      ((lf-parent ont::location-val)
       (templ attributive-only-adj-templ)
       (meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :comments nil)
       )
      ))	  
    (w::righthand
     (senses
      ((lf-parent ont::location-val)
       (templ attributive-only-adj-templ)
       (meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :comments nil)
       )
      ))
  (W::SLIGHT
   (wordfeats (W::MORPH (:FORMS (-ER ))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("slight%5:00:00:weak:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::Size-Val)
     (TEMPL LESS-ADJ-TEMPL)
     )
    ((LF-PARENT ONT::severity-VAL)
     (meta-data :origin cardiac :entry-date 20080429  :change-date nil :wn ("oppressive%5:00:00:domineering:00") :comments nil)
     (sem (f::gradability +) (f::intensity ont::lo) (f::orientation ont::less))
     (example "a slight headache")
     )
    )
   )
   (W::double
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date 20090731 :wn ("double%5:00:02:multiple:00") :comments caloy3)
     (example "a room with a double bed")
     (LF-PARENT ONT::large)
     )
    )
   )
   (W::triple
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :wn ("double%5:00:02:multiple:00") :comments LM-vocab)
      (LF-PARENT ONT::Size-Val)
     )
    )
   )
    (W::quadruple
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :wn ("double%5:00:02:multiple:00") :comments LM-vocab)
      (LF-PARENT ONT::Size-Val)
     )
    )
   )
   (W::king
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :comments caloy3)
     (example "a room with a king bed")
     (LF-PARENT ONT::Size-Val)
     )
    )
   )
   (W::queen
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060117 :change-date nil :comments caloy3)
     (example "a room with a queen bed")
     (LF-PARENT ONT::Size-Val)
     )
    )
   )
  (W::SILLY
   (wordfeats (W::MORPH (:FORMS (-ER ))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("silly%5:00:00:foolish:00"))
     (LF-PARENT ONT::INTELLIGENCE-VAL)
     )
    )
   )
  (W::SCIENTIFIC
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("scientific%3:01:00"))
     (LF-PARENT ONT::MODIFIER)
     )
    )
   )
  (W::split
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("split%5:00:02:divided:00") :comments s3)
     (LF-PARENT ONT::PART-WHOLE-val)
     (SEM (F::GRADABILITY F::-))
     )
    )
   )
  (W::UPRIGHT
   (SENSES
    ((meta-data :origin monroe :entry-date 20031217 :change-date nil :wn ("upright%5:00:00:vertical:00" "upright%3:00:02") :comments s15)
     (LF-PARENT ONT::phys-modifier) 
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
  ; derive from verb
;  (W::SEATED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("seated%3:00:00"))
;     (LF-PARENT ONT::PHYS-MODIFIER)
;     )
;    )
;   )
   (W::INTELLIGENT
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070827 :change-date 20090731 :comments nil :wn ("smart%3:00:00"))
     (LF-PARENT ONT::smart)
     )
    )
  )
  (W::DUMB
   (wordfeats (W::MORPH (:FORMS (-ER -LY ))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070827 :change-date 20090731 :comments nil :wn ("smart%3:00:00"))
     (LF-PARENT ONT::STUPID)
     )
    )
  )
 (W::STUPID
   (wordfeats (W::MORPH (:FORMS (-ER -LY ))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070827 :change-date 20090731 :comments nil :wn ("smart%3:00:00"))
     (LF-PARENT ONT::STUPID)
     )
    )
  )
  (W::SMART
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("smart%3:00:00"))
     (LF-PARENT ONT::smart)
     )
    )
   )
  (W::CLEVER
   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("clever%5:00:00:artful:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::smart)
     )
    )
   )
  (W::advisable
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20041122 :change-date nil :wn ("advisable%3:00:00") :comments caloy2)
     (LF-PARENT ONT::INTELLIGENCE-VAL)
     (example "is that advisable")
     )
    )
   )
  (W::SOLVABLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("solvable%5:00:00:soluble:00"))
     (EXAMPLE "that's solvable [for him]")
     (LF-PARENT ONT::TASK-COMPLEXITY-val)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    )
   )

  (W::SOUTH
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("south%3:00:00"))
     (LF-PARENT ONT::SOUTH)
     )
    )
   )
  (W::SPECIFIC
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("specific%3:00:00"))
     (LF-PARENT ONT::SPECIFICITY-VAL)
     )
    )
   )
  (W::SQUARE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("square%3:00:00"))
     (LF-PARENT ONT::SHAPE-val)
     )
    )
   )
  (W::rectangular
   (SENSES
    ((LF-PARENT ONT::SHAPE-val)
     (EXAMPLE "a frame is a rectangular section of a web page that is itself a separate html document")
     (meta-data :origin task-learning :entry-date 20050831 :change-date nil :wn ("rectangular%5:00:00:angular:00") :comments nil)
     )
    )
   )
  (W::STARTUP
   (SENSES
    ((EXAMPLE "a startup task")
     (LF-PARENT ONT::TASK-COMPLEXITY-val) ;; what? -- wdebeaum
     (templ adj-content-templ)
     )
    )
   )
  (W::STRAIGHT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("straight%5:00:00:continuous:00"))
     (LF-PARENT ONT::VERTICAL)
     (SEM (F::GRADABILITY F::+))
     )
    )
   )
  (W::PARALLEL
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("parallel%3:00:00"))
     (LF-PARENT ONT::HORIZONTAL)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::to))))
     )
    )
   )
  (W::SERIES
   (SENSES
    ((meta-data :origin beetle2 :entry-date 20081704 :change-date nil :comments nil :wn nil)
     (example "a series circuit" "in series")
     (LF-PARENT ONT::orientation-val)     
     (TEMPL central-adj-TEMPL)
     (preference 0.98)
     )
    )
   )

  (W::perpendicular
   (SENSES
    ((LF-PARENT ONT::VERTICAL)
     (meta-data :origin fruitcarts :entry-date 20060215 :change-date 20090731 :wn ("perpendicular%3:00:04") :comments nil)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::to))))
     )
    )
   )
  ((W::STRETCHER W::BOUND)
   (SENSES
    ((LF-PARENT ONT::BODY-PROPERTY-VAL)
     )
    )
   )

  (W::SUFFICIENT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("sufficient%3:00:00"))
     (EXAMPLE "that's sufficient [for him]")
     (LF-PARENT ONT::ADEQUATE)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::for))))
     )
    )
   )
   (W::INSUFFICIENT
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("sufficient%3:00:00"))
     (EXAMPLE "that's insufficient [for him]")
     (LF-PARENT ONT::inadequate)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::for))))
     )
    )
   )
   (W::adequate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("adequate%5:00:00:sufficient:00"))
     (EXAMPLE "that's adequate [for him]")
     (LF-PARENT ONT::ADEQUATE)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::for))))
     )
    )
   )
   (W::inadequate
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("adequate%5:00:00:sufficient:00"))
     (EXAMPLE "that's inadequate [for him]")
     (LF-PARENT ONT::inadequate)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::for))))
     )
    )
   )
   
  (W::successful
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("successful%3:00:00") :comments ma-request :comlex (ADJECTIVE))
     (LF-PARENT ONT::success-val)
     (sem (f::gradability +) (f::orientation ont::more) (f::intensity ont::med))
     (TEMPL central-adj-TEMPL)
     )
    )
   )
  
  (W::unsuccessful
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("unsuccessful%3:00:00") :comments ma-request :comlex (ADJECTIVE))
     (LF-PARENT ONT::success-val)
     (sem (f::gradability +) (f::orientation ont::less) (f::intensity ont::med))
     (TEMPL central-adj-TEMPL)
     )
    )
   )
  
   (W::UNSURE
    (SENSES
     ((LF-PARENT ONT::UNCERTAIN)
      (example "he is unsure that the answer is correct")
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
      (meta-data :origin lam :entry-date 20050421 :change-date 20090731 :wn ("unsure%3:00:00") :comments lam-initial)
      )
     ((LF-PARENT ONT::UNCERTAIN)
      (example "he is unsure of the answer")
      (syntax (w::allow-deleted-comp -))
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::PP (W::ptype W::of))))
      (meta-data :origin lam :entry-date 20050421 :change-date 20090731 :wn ("unsure%3:00:00") :comments lam-initial)
      ;; preference lowered just slightly so that the first version with reduced complement always wins
      (preference 0.99)
      )     
     ((LF-PARENT ONT::UNCERTAIN)
      (example "he is unsure what to do")
      (syntax (w::allow-deleted-comp -))
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::NP (w::sort w::wh-desc))))
      (meta-data :origin beeetle :entry-date 20081106 :change-date 20090731 :wn ("sure%3:00:00") :comments pilot4)
      )     
     )
    )

   (W::SURE
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
     ((LF-PARENT ONT::CERTAIN)
      (example "the plan is sure to succeed")
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
      (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("sure%3:00:00") :comments caloy2)
      )
     ((LF-PARENT ONT::CERTAIN)
      (example "he is sure that he will win")
      (syntax (w::allow-deleted-comp -))
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
      (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("sure%3:00:00") :comments caloy2)
      )
     ((LF-PARENT ONT::CERTAIN)
      (example "he is sure what to do")
      (syntax (w::allow-deleted-comp -))
      (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::NP (w::sort w::wh-desc))))
      (meta-data :origin beeetle :entry-date 20081106 :change-date 20090731 :wn ("sure%3:00:00") :comments pilot4)
      )     
     )
    )

  (W::Confident
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::CERTAIN)
     (example "he is confident that he will win")
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
     (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("confident%3:00:00") :comments caloy2)
     )
    )
   )

  
  (W::CERTAIN
   (SENSES
    ((lf-parent ont::specificity-val)
     (example "a certain number of results")
     )
    ((LF-PARENT ONT::CERTAIN)
     (example "the plan is certain to succeed")
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("certain%3:00:03") :comments caloy2)
     )
    ((LF-PARENT ONT::CERTAIN)
     (syntax (w::allow-deleted-comp -))
     (example "he is certain that he will win")
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
     (meta-data :origin calo :entry-date 20040921 :change-date 20090731 :wn ("certain%3:00:02") :comments caloy2)
     )
    ((LF-PARENT ONT::CERTAIN)
     (example "he is certain what to do")
     (syntax (w::allow-deleted-comp -))
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::NP (w::sort w::wh-desc))))
     (meta-data :origin beeetle :entry-date 20081106 :change-date 20090731 :wn ("sure%3:00:00") :comments pilot4)
     (preference 0.98)
     )     
    )
   )

   (W::definite
   (SENSES
    ((LF-PARENT ONT::confidence-VAL)
     (example "he is certain that he will come to the party")
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::cp (W::ctype W::s-finite))))
     (meta-data :origin calo :entry-date 20090424 :change-date nil :wn ("certain%3:00:02"))
     )
    )
   )
  
  (W::TEMPORARY
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("temporary%3:00:00"))
     (LF-PARENT ONT::temporal-location)
     )
    )
   )

   (W::dreadful
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a dreadful cold")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    )
   )
   (W::rotten
   (SENSES
    ((meta-data :origin cardiac :entry-date 20081015 :change-date 20090731 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a rotten cold")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    )
   )
  (W::TERRIBLE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (LF-PARENT ONT::bad)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrible%5:00:01:bad:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )

  (W::TERRIFIC
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrific%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrific%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (example "a wall good for climbing")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     (TEMPL adj-purpose-TEMPL)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrific%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a drug suitable for cancer")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is a sense that allows for implicit/indirect senses of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
;;;     (TEMPL adj-purpose-implicit-XP-templ)
;;;     )
;;;    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("terrific%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF))
;;;     (EXAMPLE "a solution good for him")
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     ;; this is another indirect sense of "for"
;;;     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
;;;     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
;;;     (TEMPL adj-affected-XP-templ)
;;;     )
    )
   )
  
  (W::TOP
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("top%3:00:00") :comlex (ADJECTIVE))
     (LF-PARENT ONT::LOCATION-VAL)
     )
;;;    ((example "I can pay top dollar for a computer")
;;;     (meta-data :origin calo :entry-date 20040505 :change-date nil :comments calo-y1variants)
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;     )
;;;    ((EXAMPLE "a drug suitable for cancer")
;;;     (meta-data :origin calo :entry-date 20040505 :change-date nil :comments calo-y1variants)
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;    )
;;;    ((EXAMPLE "a solution good for him")
;;;     (meta-data :origin calo :entry-date 20040505 :change-date nil :comments calo-y1variants)
;;;     (LF-PARENT ONT::ACCEPTABILITY-VAL)
;;;    )
    )
   )

  (W::TRICKY
   (wordfeats (W::MORPH (:FORMS (-ER))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("tricky%5:00:00:difficult:00"))
     (EXAMPLE "that's tricky [for him]")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-content-affected-optional-xp-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090821 :comments nil :wn ("tricky%5:00:00:difficult:00"))
     (EXAMPLE "the car is tricky to repair")
     (LF-PARENT ONT::difficult)
     (TEMPL adj-expletive-content-xp-templ (XP (% W::CP (W::CTYPE W::s-to))))
     )
    )
   )
  (W::TRUE
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090915 :comments nil :wn ("true%3:00:00"))
     (LF-PARENT ONT::actual)
     (example "a true friend")
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("true%3:00:00"))
     (EXAMPLE "that's true [for him]")
     (LF-PARENT ONT::EVALUATION-VAL)
     (TEMPL ADJ-CO-THEME-TEMPL (XP (% W::PP (W::PTYPE W::FOR))))
     )
    )
   )
  (W::ULTIMATE
   (wordfeats (W::morph (:forms (-LY))) (W::comp-op -))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("ultimate%5:00:00:last:00"))
     (LF-PARENT ONT::SEQUENCE-VAL)
     (TEMPL attributive-only-adj-templ)
     )
    )
   )
   (W::unfamiliar
   (SENSES
    ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "an unfamiliar person")
     (LF-PARENT ONT::unfamiliarity-val)
     (TEMPL central-adj-TEMPL)
     )
    ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "that's unfamiliar to him")
     (LF-PARENT ONT::unfamiliarity-val)
     (templ adj-affected-XP-templ  (xp (% w::pp (w::ptype w::to))))
     )
    ((meta-data :origin ptb :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "he is unfamiliar with it")
     (LF-PARENT ONT::familiarity-val)
     (templ adj-affected-stimulus-xp-templ  (xp (% w::pp (w::ptype w::with))))
     )
    )
   )
   (W::familiar
   (SENSES
    ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "a familiar person")
     (LF-PARENT ONT::familiarity-val)
     (TEMPL central-adj-TEMPL)
     )
    ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "that's familiar to him")
     (LF-PARENT ONT::familiarity-val)
     (templ adj-affected-XP-templ  (xp (% w::pp (w::ptype w::to))))
     )
    ((meta-data :origin ptb :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "he is familiar with it")
     (LF-PARENT ONT::familiarity-val)
     (templ adj-affected-stimulus-xp-templ  (xp (% w::pp (w::ptype w::with))))
     )
    )
   )
   ;; later- derive from verb
   (W::known
   (SENSES
    ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "a well-known person")
     (LF-PARENT ONT::familiarity-val)
     (TEMPL central-adj-TEMPL)
     )
    ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "a person well-known to him")
     (LF-PARENT ONT::familiarity-val)
     (TEMPL adj-affected-xp-TEMPL (XP (% W::PP (W::PTYPE W::to))))
     )
    )
   )
   (W::unknown
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("unknown%3:00:00"))
     (LF-PARENT ONT::unfamiliarity-VAL)
     )
      ((meta-data :origin cernl :entry-date 20100501 :change-date nil :comments nil)
     (EXAMPLE "a person unknown to him")
     (LF-PARENT ONT::unfamiliarity-val)
     (TEMPL adj-affected-xp-TEMPL (XP (% W::PP (W::PTYPE W::to))))
     )
    )
   )
  (W::UNAVAILABLE
   (wordfeats (W::comp-op W::LESS))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("unavailable%3:00:00"))
     (EXAMPLE "that's unavailable [to him]")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::PTYPE W::to))))
     )
    ((meta-data :origin windmills :entry-date 20080606 :change-date nil :comments nil :wn ("available%5:00:00:disposable:00"))
     (example "it is unavailable in 4 MW capacity")
     (LF-PARENT ONT::availability-val)
     (SEM (F::GRADABILITY F::-))
     (TEMPL adj-subcat-property-templ)
     )
    )
   )
  (W::unreachable
   (SENSES
    ((EXAMPLE "the server is unreachable")
     (meta-data :origin task-learning :entry-date 20050829 :change-date nil :wn ("unreachable%5:00:00:inaccessible:00") :comments nil)
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL central-adj-TEMPL)
     )
    )
   )
  ;; derive from verb
;  (W::UNFINISHED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("unfinished%3:00:02"))
;     (LF-PARENT ONT::INCOMPLETE)
;     )
;    )
;   )
  
  (W::TOTAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("total%5:00:00:gross:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::comprehensive
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("comprehensive%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::collective
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050831 :change-date 20090915 :wn ("collective%3:00:00") :comments nil)
     (EXAMPLE "control the distribution of derivative or collective works")
     (LF-PARENT ONT::number-related-property-VAL)
     (TEMPL central-adj-plur-templ)
     )
    )
   )
 
  (W::UNIMPORTANT
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("unimportant%3:00:04"))
     (LF-PARENT ONT::SECONDARY)
     (TEMPL LESS-ADJ-TEMPL)
     )
    )
   )
 
  (W::UNCERTAIN
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("uncertain%3:00:02") :comments html-purchasing-corpus)
     (LF-PARENT ONT::UNRELIABLE)
     )
    ((LF-PARENT ONT::UNCERTAIN)
     (example "he is uncertain what to do")
     (syntax (w::allow-deleted-comp -))
     (TEMPL CENTRAL-ADJ-XP-TEMPL (XP (% W::NP (w::sort w::wh-desc))))
     (meta-data :origin beeetle :entry-date 20081106 :change-date 20090731 :wn ("sure%3:00:00") :comments pilot4)
     (preference 0.98)
     )     

    )
   )
  (W::RELIABLE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("reliable%5:00:01:trustworthy:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::RELIABLE)
     )
    )
   )
   (W::unRELIABLE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date 20090731 :wn ("unreliable%5:00:00:fallible:00") :comments caloy2)
     (LF-PARENT ONT::UNRELIABLE)
     )
    )
   )
  (W::predictable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("predictable%3:00:00") :comments caloy2)
     (LF-PARENT ONT::CERTAINTY-VAL)
     )
    )
   )
  (W::unpredictable
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040915 :change-date nil :wn ("unpredictable%3:00:00") :comments caloy2)
     (LF-PARENT ONT::CERTAINTY-VAL)
     )
    )
   )
  (W::DEPENDABLE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("dependable%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::RELIABLE)
     )
    )
   )
  (W::attentive
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date nil :comments nil)
     (LF-PARENT ONT::attention-val)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::inattentive
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20081016 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::HEEDLESS)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::CAREFUL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("careful%3:00:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::thorough
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("thorough%5:00:00:careful:00") :comments nil)
     (LF-PARENT ONT::attention-VAL)
     (example "a thorough person")
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("careful%3:00:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (example "a thorough workout")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::CAUTIOUS
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("cautious%3:00:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("careful%3:00:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (example "a cautious letter")
     (templ central-adj-content-templ)
     (preference .98)
     )
    )
   )
   (W::reckless
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("reckless%5:00:00:careless:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (templ central-adj-experiencer-templ)
     )
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("careful%3:00:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (example "a reckless note")
     (templ central-adj-content-templ)
     (preference .98)
     )
    )
   )
   (W::heedless
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040920 :change-date 20090731 :wn ("heedless%5:00:00:careless:00") :comments caloy2)
     (LF-PARENT ONT::HEEDLESS)
     (templ central-adj-experiencer-templ)
     )
     ((meta-data :origin calo :entry-date 20040920 :change-date 20090731 :wn ("heedless%5:00:00:careless:00") :comments caloy2)
     (LF-PARENT ONT::HEEDLESS)
     (example "heedless remark")
     (templ central-adj-content-templ)
     )
    )
   )
   (W::mindful
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040920 :change-date nil :wn ("mindful%3:00:00") :comments caloy2)
     (LF-PARENT ONT::attention-VAL)
     (templ central-adj-experiencer-templ)
     )
    )
   )
   (W::dangerous
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20040920 :change-date 20090731 :wn ("dangerous%3:00:00") :comments caloy2)
     (LF-PARENT ONT::DANGEROUS)
     )
    )
   )
  (W::SKEPTICAL
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("skeptical%5:00:00:incredulous:00" "skeptical%5:00:00:distrustful:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::CERTAINTY-VAL)
     )
    )
   )
  (W::UNUSED
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("unused%5:00:00:inactive:03"))
     (EXAMPLE "the box is unused")
     (LF-PARENT ONT::AVAILABILITY-VAL)
     (TEMPL central-ADJ-TEMPL)
     )
    )
   )
  (W::UPPER
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("upper%5:00:00:high:00"))
     (LF-PARENT ONT::LOCATION-VAL)
     )
    )
   )

  (W::VERTICAL
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("vertical%3:00:00"))
     (LF-PARENT ONT::VERTICAL)
     )
    )
   )
  (W::portrait
   (SENSES
    ((LF-PARENT ONT::ORIENTATION-VAL)
     (EXAMPLE "lay out the document in portait orientation")
     (meta-data :origin task-learning :entry-date 20050912 :change-date nil :comments nil)
     )
    )
   )
  (W::landscape
   (SENSES
    ((LF-PARENT ONT::ORIENTATION-VAL)
     (EXAMPLE "lay out the document in landscape orientation")
     (meta-data :origin task-learning :entry-date 20050923 :change-date nil :comments nil)
     )
    )
   )
  (W::WARMUP
   (SENSES
    ((EXAMPLE "a warmup task")
     (LF-PARENT ONT::TASK-COMPLEXITY-val)
     (TEMPL adj-content-TEMPL)
     (SYNTAX (W::atype W::attributive-only))
     )
    )
   )
  (W::WEST
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("west%3:00:00"))
     (LF-PARENT ONT::WEST)
     )
    )
   )
  (W::WHOLE
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("whole%3:00:00"))
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::OVERALL
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("overall%5:00:00:gross:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::PART-WHOLE-VAL)
     )
    )
   )
  (W::WONDERFUL
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("wonderful%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("wonderful%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("wonderful%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("wonderful%5:00:00:extraordinary:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::more) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )
  
  (W::awesome
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("awesome%5:00:00:impressive:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a good book")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL central-adj-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("awesome%5:00:00:impressive:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (example "a wall good for climbing")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     (TEMPL adj-purpose-TEMPL)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("awesome%5:00:00:impressive:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a drug suitable for cancer")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is a sense that allows for implicit/indirect senses of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-purpose-implicit-templ is for indirect purposes, such as "this is good for cancer" where one has to infer that the actual use is in the treatment action
     (TEMPL adj-purpose-implicit-XP-templ)
     )
    ((meta-data :origin trips :entry-date 20060824 :change-date 20061106 :comments nil :wn ("awesome%5:00:00:impressive:00") :comlex (EXTRAP-ADJ-FOR-TO-INF-OMIT))
     (EXAMPLE "a solution good for him")
     (LF-PARENT ONT::ACCEPTABILITY-VAL)
     (SEM (f::gradability +) (f::orientation ont::less) (f::intensity ont::hi))
     ;; this is another indirect sense of "for"
     ;; the main sense is adj-purpose-templ for cases such as "this is good for treating cancer"
     ;; the adj-affected-templ is for cases when adjective describes how people are affected, such as "this is good for him" where one has to infer the exact action/result it is good for
     (TEMPL adj-affected-XP-templ)
     )
    )
   )

  ;; derive from verb
;  (W::WOUNDED
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("wounded%5:00:01:injured:00"))
;     (LF-PARENT ONT::BODY-PROPERTY-VAL)
;     (TEMPL postpositive-adj-templ)
;     )
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("wounded%5:00:01:injured:00"))
;     (LF-PARENT ONT::BODY-PROPERTY-VAL)
;     )
;    )
;   )
  ))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::frightening-val)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::frightening w::scary w::terrifying w::fearsome))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::body-part-val)
    (TEMPL central-adj-templ)
    (meta-data :origin cardiac :entry-date 20090408 :change-date nil :comments nil)
    )
   )
 :words (w::abdominal w::atrial w::aortic w::cardiac w::cardiovascular w::cerebral w::cerebellar w::coronary w::gastric w::gastrointestinal w::glandular w::intestinal w::intraveneous w::limbic w::lumbar w::muscular w::musculoskeletal w::pancreatic w::pulmonary w::renal w::skeletal w::spinal w::vascular))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::body-system-val)
    (TEMPL central-adj-templ)
    (meta-data :origin cardiac :entry-date 20090408 :change-date nil :comments nil)
    )
   )
 :words (w::aerobic w::autoimmune (w::auto w::immune) w::digestive w::genetic w::immune w::ischaemic w::ischemic w::lymphatic w::metabolic w::motor w::nervous w::reproductive w::respiratory w::urinary))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::physical-discrete-domain)
    (TEMPL central-adj-templ)
     (meta-data :origin cardiac :entry-date 20090130 :change-date nil :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::dietary w::nutritional w::medicinal))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::unclear)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
    (meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::unclear w::unobvious w::obscure w::opaque))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::clear)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
    (meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::clear w::obvious w::evident))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::noticeable)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
    (meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :comments nil  :wn ("prominent%5:00:00:conspicuous:00" "prominent%5:00:02:conspicuous:00") )
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::noticeable w::conspicuous w::noteworthy w::striking w::catchy w::prominent w::pronounced w::showy w::flamboyant w::obtrusive))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::unnoticeable)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
    (meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::unnoticeable w::inconspicuous w::unobtrusive w::inobtrusive))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::strange)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
    (meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :wn ("strange%3:00:00") :comments nil)
    )
   )
 :words (w::peculiar w::outlandish (w::off w::kilter) (w::out w::of w::kilter) (w::out w::of w::whack) w::uncommon w::unconventional w::exceptional w::unorthodox w::remarkable w::extraordinary))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::common)
    (TEMPL central-adj-templ)
    (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
    (meta-data :origin cardiac :entry-date 20090129 :change-date 20090804 :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (w::common w::conventional w::unexceptional w::orthodox w::unremarkable))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::rw-status-VAL)
    (TEMPL central-adj-templ)
    (meta-data :origin calo :entry-date 20060824 :change-date nil  :wn ("readable%5:00:00:legible:00") :comments nil)
    )
   )
 :words (w::readable w::writeable w::writable (w::read w::only)))


(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::event-time-rel)
    (TEMPL central-adj-templ)
    (meta-data :origin calo :entry-date 20060824 :change-date nil  :wn ("readable%5:00:00:legible:00") :comments nil)
    )
   )
 :words (w::upcoming w::pending w::forthcoming))


(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::motion-VAL)
    (TEMPL central-adj-templ)
    (meta-data :origin adj-devel :entry-date 20080925 :change-date nil :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (W::static w::dynamic w::motionless))

(define-list-of-words :pos W::adj
  :senses (
   ((LF-PARENT ONT::fundamental-VAL)
    (TEMPL central-adj-templ)
    (meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
    (SYNTAX (W::morph (:forms (-ly))))
    )
   )
 :words (W::elementary w::fundamental w::inherent w::underlying w::rudimentary w::bare))

(define-words :pos w::adj :templ central-adj-templ
  :words (
   (W::red
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("red%3:00:01:chromatic:00"))
     (LF-PARENT ONT::red)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::blue
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("blue%3:00:01:chromatic:00"))
     (LF-PARENT ONT::blue)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::brown
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("brown%3:00:01:chromatic:00"))
     (LF-PARENT ONT::brown)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   ) 
   (W::green
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("green%3:00:01:chromatic:00"))
     (LF-PARENT ONT::green)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
    (W::orange
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("orange%3:00:01:chromatic:00"))
     (LF-PARENT ONT::orange)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::black
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("black%3:00:01:chromatic:00"))
     (LF-PARENT ONT::black)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )

  (W::pink
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("pink%3:00:01:chromatic:00"))
     (LF-PARENT ONT::pink)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::tan
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("tan%3:00:01:chromatic:00"))
     (LF-PARENT ONT::tan)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::grey
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("grey%3:00:01:chromatic:00"))
     (LF-PARENT ONT::grey)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::gray
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("gray%3:00:01:chromatic:00"))
     (LF-PARENT ONT::gray)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )

   (W::gold
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("gold%3:00:01:chromatic:00"))
     (LF-PARENT ONT::gold)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::white
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("white%3:00:01:chromatic:00"))
     (LF-PARENT ONT::white)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::yellow
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("yellow%3:00:01:chromatic:00"))
     (LF-PARENT ONT::yellow)
     (SYNTAX (W::morph (:forms (-er))))
     (templ central-adj-templ)
     )
    )
   )
   (W::silver
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("silver%3:00:01:chromatic:00"))
     (LF-PARENT ONT::silver)
     (templ central-adj-templ)
     )
    )
   )
   (W::purple
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("purple%3:00:01:chromatic:00"))
     (LF-PARENT ONT::purple)
     (templ central-adj-templ)
     )
    )
   )
   (W::magenta
    (SENSES
    ((meta-data :origin joust :entry-date 20091027 :change-date 20091027 :comments nil :wn ("magenta%3:00:01:chromatic:00"))
     (LF-PARENT ONT::magenta)
     (templ central-adj-templ)
     )
    )
   ) 
  ))
  

(define-words :pos W::adj :templ ADJ-EXPERIENCER-TEMPL
 :words (
  (W::nauseous
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("nauseous%5:00:00:ill:00"))
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
  (W::SICK
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("sick%3:00:01" "sick%5:00:02:ill:01"))
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
  
  (W::sore
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("sore%5:00:00:painful:00"))
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::achey
    (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     (LF-PARENT ont::physical-symptom-val)
     (example "he feels achey")
     (templ central-adj-templ)
     )
    )
   )
   (W::achy
    (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070904 :change-date nil :comments nil :wn nil)
     (LF-PARENT ont::physical-symptom-val)
     (example "he feels achey")
     (templ central-adj-templ)
     )
    )
   )
   (W::unwell
   (SENSES
    ((meta-data :origin chf :entry-date 20070904 :change-date 20090731 :comments nil :wn nil)
     (LF-PARENT ONT::AILING)
     (example "he is unwell")
     (templ central-adj-templ)
     )
    )
   )
   
  (W::WELL
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("well%3:00:01"))
     (LF-PARENT ONT::physical-symptom-val)
     (example "He is finally well")
     (preference .98)
     (templ central-adj-templ)
     )
    )
   )
  (W::dizzy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("dizzy%5:00:00:ill:00"))
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
  (W::twitchy
   (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080222 :change-date nil :comments nil)
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
  ;; later - derive from verb
  (W::tired
   (wordfeats (W::morph (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("tired%3:00:00"))
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::weary
   (wordfeats (W::morph (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn ("tired%3:00:00"))
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::lethargic
   (wordfeats (W::morph (:FORMS ( -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date 20090731 :comments nil :wn ("tired%3:00:00"))
     (LF-PARENT ONT::DAZED)
     (templ central-adj-templ)
     )
    )
   )
   ;; derive from verb
    (W::fatigued
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil :wn ("tired%3:00:00"))
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::dehydrated
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("tired%3:00:00"))
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
;   (W::dog-tired
;    (SENSES
;    ((meta-data :origin trips :entry-date 20090129 :change-date nil :comments nil :wn ("tired%3:00:00"))
;     (LF-PARENT ont::physical-symptom-val)
;     (templ central-adj-templ)
;     )
;    )
;   )
  (W::exhausted
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("tired%3:00:00"))
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )

  (W::ill
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("ill%3:00:01"))
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
  (W::UPSET
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("upset%5:00:00:ill:01"))
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
  ;; derive from verb
;  (W::concerned
;   (wordfeats (W::morph (:FORMS (-LY))))
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("concerned%3:00:00"))
;     (LF-PARENT ONT::importance-val)
;     (TEMPL central-adj-templ)
;     )
;    )
;   )

   (W::congenital
    (wordfeats (W::morph (:FORMS (-LY))))
    (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil :wn ("cardiac%3:01:00"))
     (LF-PARENT ONT::congenital)
     (example "a congenital disease")
     (templ central-adj-templ)
     )
    )
   )
  
   (W::genetic
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::hereditary)
     (example "a genetic disorder")
     (templ central-adj-templ)
     )
    )
   )
    (W::hereditary
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil :wn ("cardiac%3:01:00"))
     (LF-PARENT ONT::hereditary)
     (example "a hereditary condition")
     (templ central-adj-templ)
     )
    )
   )
   (W::lightheaded
   (SENSES
    ((meta-data :origin chf :entry-date 20070904 :change-date 20090731 :comments nil :wn nil)
     (LF-PARENT ONT::AILING)
     (example "do you feel lightheaded")
     (templ central-adj-templ)
     )
    )
   )
  (W::allergic
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("allergic%3:01:00"))
     (LF-PARENT ONT::physical-reaction)
     (TEMPL ADJ-EXPERIENCER-THEME-TEMPL)
     (SYNTAX (W::COMP-OP W::LESS) (W::ATYPE W::central))
     )
    )
   )
  (W::sensitive
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::physical-reaction)
     (TEMPL ADJ-EXPERIENCER-THEME-TEMPL)
     (example "he is sensitive to noise")
     (SYNTAX (W::COMP-OP W::LESS) (W::ATYPE W::central))
     )
    )
   )
  (W::insensitive
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::physical-reaction)
     (TEMPL ADJ-EXPERIENCER-THEME-TEMPL)
     (SYNTAX (W::COMP-OP W::LESS) (W::ATYPE W::central))
     )
    )
   )
  (W::hypersensitive
   (SENSES
    ((meta-data :origin trips :entry-date 20080520 :change-date nil :comments nil)
     (LF-PARENT ONT::physical-reaction)
     (TEMPL ADJ-EXPERIENCER-THEME-TEMPL)
     (SYNTAX (W::COMP-OP W::LESS) (W::ATYPE W::central))
     )
    )
   )
  
  (W::crampy
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::painful
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
;   (W::stiff
;    (wordfeats (W::morph (:FORMS (-er -LY))))
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
;     (LF-PARENT ont::physical-symptom-val)
;     (templ central-adj-templ)
;     )
;    )
;   )
;   (W::energetic
;     (wordfeats (W::morph (:FORMS (-LY))))
;   (SENSES
;    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
;     (LF-PARENT ont::physical-symptom-val)
;     (templ central-adj-templ)
;     )
;    )
;   )
   ;; derive from verb
;  (W::addicted
;   (SENSES
;    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("addicted%3:00:00"))
;     (LF-PARENT ONT::physical-reaction)
;     (TEMPL ADJ-EXPERIENCER-THEME-templ)
;     (SYNTAX (W::COMP-OP W::LESS) (W::ATYPE W::central))
;     )
;    )
;   )
  (W::muzzy
    (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
   (W::woozy
     (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
   (W::groggy
     (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::DAZED)
     (templ central-adj-templ)
     )
    )
   )
  (W::giddy
    (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date 20090731 :comments LM-vocab)
     (LF-PARENT ONT::AILING)
     (templ central-adj-templ)
     )
    )
   )
   (W::puffy
    (wordfeats (W::morph (:FORMS (-er -LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20080508 :change-date nil :comments LM-vocab)
     (LF-PARENT ont::physical-symptom-val)
     (templ central-adj-templ)
     )
    )
   )
  (W::hyperactive
   (SENSES
    ((meta-data :origin medadvisor :entry-date 20060824 :change-date 20080520 :comments nil :wn ("hyperactive%5:00:00:active:00"))
     (LF-PARENT ONT::physical-symptom-val)
     (TEMPL central-adj-templ)
     )
    )
   )
  (W::normal
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date 20090731 :comments nil :wn ("normal%3:00:01"))
     (LF-PARENT ONT::COMMON)
     (templ central-adj-templ)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::more))
     )
    )
   )

   (W::abnormal
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::STRANGE)
     (templ central-adj-templ)
     (sem (f::gradability +) (f::intensity ont::med) (f::orientation ont::less))
     )
    )
   )
  
  (W::general
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("general%3:00:00"))
     (LF-PARENT ONT::part-whole-val)
     (templ central-adj-templ)
     )
    )
   )
  ))

(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (W::biological
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("biological%3:01:00"))
     (LF-PARENT ONT::BIOLOGICAL)
     )
    )
   )
  (W::bio
   (SENSES
    ((LF-PARENT ONT::BIOLOGICAL)
     )
    )
   )
  (W::chemical
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin beetle2 :entry-date 20081892 :change-date nil :comments pilot1 :wn ("chemical%3:01:00"))
     (LF-PARENT ONT::SCIENCE-DISCIPLINE-PROPERTY-VAL)
     )
    )
   )
  (W::automatic
   (SENSES
    ((meta-data :origin trips :entry-date 20060824 :change-date nil :comments nil :wn ("automatic%3:00:00"))
     (LF-PARENT ONT::AUTOMATIC)
     )
    )
   )
  (W::auto
   (SENSES
    ((LF-PARENT ONT::AUTOMATIC)
     )
    )
   )
  ))


(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (W::equivalent
   (SENSES
    ((meta-data :origin calo :entry-date 20031205 :change-date 20090731 :wn ("equivalent%3:00:04") :comments calo-y1script)
     (LF-PARENT ONT::EQUAL)
     (SEM (F::GRADABILITY f::-))
     (example "are they equivalent to each other")
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE w::to))))
     )
    ((meta-data :origin calo :entry-date 20040112 :change-date 20090731 :wn ("equivalent%3:00:04") :comments calo-y1script)
     (LF-PARENT ONT::EQUAL)
     (SEM (F::GRADABILITY f::-))
     (example "are they equivalent in speed")
     (templ adj-property-templ (xp (% w::pp (w::PTYPE w::in))))
     )
    )
   )
  (W::equal
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date 20090731 :wn ("equal%3:00:02") :comments html-purchasing-corpus)
      (LF-PARENT ONT::EQUAL)
     (SEM (F::GRADABILITY f::-))
     (example "are they equal to each other")
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE w::to))))
     )
     ((meta-data :origin calo :entry-date 20040112 :change-date 20090731 :wn ("equal%3:00:02") :comments html-purchasing-corpus)
      (LF-PARENT ONT::EQUAL)
      (SEM (F::GRADABILITY f::-))
      (example "are they equal in length")
      (templ adj-property-templ (xp (% w::pp (w::PTYPE w::in))))
     )
    )
   )

   (W::unequal
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date nil :wn ("unequal%3:00:02") :comments html-purchasing-corpus)
      (LF-PARENT ONT::similarity-val)
     (SEM (F::GRADABILITY f::-))
     (example "are they unequal to each other")
     (templ adj-co-theme-templ (xp (% w::pp (w::PTYPE w::to))))
     )
     ((meta-data :origin calo :entry-date 20040112 :change-date nil :wn ("unequal%3:00:02") :comments html-purchasing-corpus)
      (LF-PARENT ONT::similarity-val)
      (SEM (F::GRADABILITY f::-))
      (example "are they unequal in length")
      (templ adj-property-templ (xp (% w::pp (w::PTYPE w::in))))
     )
    )
   )

  (W::symmetric
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031222 :change-date nil :wn ("symmetric%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::shape-val)
     (SEM (F::GRADABILITY f::-))
     )
    )
   )
  (W::geometric
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin task-learning :entry-date 20050912 :change-date nil :wn ("geometric%3:01:00") :comments nil)
     (EXAMPLE "insert geometric shapes")
     (LF-PARENT ONT::shape-val)
     (SEM (F::GRADABILITY f::-))
     )
    )
   )

  
  (W::powerful
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031205 :change-date 20090731 :wn ("powerful%3:00:00") :comments calo-y1script)
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
  (W::potent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :comments calo-y1script)
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )
  (W::vigorous
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date nil :wn ("vigorous%5:00:00:energetic:00") :comments html-purchasing-corpus)
     (LF-PARENT ont::intensity-val)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )

   (W::intense
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin calo :entry-date 20031223 :change-date 20090731 :wn ("intense%3:00:00") :comments html-purchasing-corpus)
     (LF-PARENT ONT::intense)
     (sem (f::gradability +) (f::intensity ont::hi) (f::orientation ont::less))
     )
    )
   )

   (W::UNABLE
   (SENSES
    ((meta-data :origin calo :entry-date 20031205 :change-date 20090731 :wn ("unable%3:00:00") :comments calo-y1script)
     (EXAMPLE "He is unable to do this")
     (LF-PARENT ONT::unable)
     (SEM (F::GRADABILITY f::+))
     (TEMPL central-ADJ-optional-xp-TEMPL (XP (% W::cp (W::ctype W::s-to))))
     )
    )
   )

  ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Define adjectives for the Beetle environment
;;

(define-words :pos W::adj 
  :templ CENTRAL-ADJ-TEMPL
  :words (
	  ;;(w::open
	  ;; (senses
	  ;;  ((lf-parent ont::physical-discrete-property-val)
	  ;;   (meta-data :origin bee :entry-date 20040408 :change-date nil :comments test-s)
	  ;;   )
	  ;;  ))
	  ;; derive from verb
;          (w::closed
;           (senses
;            ;; changing adj-purpose-optional to adj-purpose to avoid purpose impros on basic formed
;            ((lf-parent ont::openness-val)
;             (templ adj-purpose-templ)
;             (example "it's closed for business")
;             (meta-data :origin bee :entry-date 20040408 :change-date nil :wn ("closed%3:00:01") :comments test-s)
;             )
;            ((meta-data :origin step :entry-date 20080624 :change-date nil :comments nil :wn ("open%3:00:01"))
;             (EXAMPLE "it's closed") ;; basic use should not generate a purpose impro
;             (LF-PARENT ONT::OPENNESS-VAL)
;             )
;            ))
;          (w::lit
;           (senses
;            ((lf-parent ont::artifact-property-val)
;             (meta-data :origin bee :entry-date 20040408 :change-date nil :wn ("lit%5:00:00:light:00") :comments test-s)
;             )
;            ))    
	  (w::on
	   (senses
	    ((lf-parent ont::artifact-property-val) 
	     (templ predicative-only-adj-templ)
	     (Example "The switch is off -- predicative only, because 'the off switch' is not at all the same")
	     (meta-data :origin bee :entry-date 20040408 :change-date nil :wn ("on%3:00:00") :comments test-s)
	     )
	    ))
	  (w::off
	   (senses
	    ((lf-parent ont::artifact-property-val) 
	     (templ predicative-only-adj-templ)
	     (Example "The switch is off -- predicative only, because 'the off switch' is not at all the same")
	     (meta-data :origin bee :entry-date 20040408 :change-date nil :wn ("off%3:00:00") :comments test-s)
	     )
	    ))
	  (w::left
	   (senses
	    ((lf-parent ONT::LEFT)
	     (templ attributive-only-adj-templ)
	     (meta-data :origin bee :entry-date 20040408 :change-date 20090731 :wn ("left%3:00:00") :comments test-s)
	     )
	    ))	  
	  (w::right
	   (senses
	    ((lf-parent ONT::RIGHT)
	     (templ attributive-only-adj-templ)
	     (meta-data :origin bee :entry-date 20040408 :change-date 20090731 :wn ("right%3:00:00") :comments test-s)
	     )
	    ))	  
	  ))

(define-words :pos W::adj 
  :templ CENTRAL-ADJ-TEMPL
  :words (
	  (w::foreign
	   (senses
	    ((lf-parent ont::nationality-val)
	     (meta-data :origin calo :entry-date 20050308 :change-date nil :wn ("foreign%3:00:02") :comments projector-corpus)
	     )
	    ))
	  (w::international
	   (senses
	    ((lf-parent ont::nationality-val)
	     (meta-data :origin task-learning :entry-date 20050819 :change-date nil :wn ("international%3:00:00" "international%5:00:00:foreign:02") :comments projector-corpus)
	     (EXAMPLE "display international characters")
	     )
	    ))
	  
  (W::subsequent
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::SEQUENCE-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("subsequent%3:00:00") :comments nil)
     (EXAMPLE "it applies to all subsequent copies")
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::to))))
     )
    )
   )
  (W::adjacent
   (SENSES
    ((LF-PARENT ONT::CONNECTED-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("adjacent%5:00:00:connected:00" "adjacent%5:00:00:close:01") :comments nil)
     (EXAMPLE "combine adjacent cells")
     (TEMPL adj-theme-templ)  
     )
    )
   )
  (W::flush
   (SENSES
    ((LF-PARENT ONT::CONNECTED-VAL)
     (meta-data :origin fruitcarts :entry-date 20060215 :change-date nil :wn ("flush%5:00:00:even:01") :comments nil)
     (EXAMPLE "move it so it's flush with the side of the square")
     (TEMPL adj-theme-templ)
     )
    )
   )
  (W::contiguous
    ;; can't auto-generate adv with theme templ
 ;;  (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::CONNECTED-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("contiguous%5:00:01:connected:00") :comments nil)
     (EXAMPLE "combine contiguous cells")
     (TEMPL adj-theme-templ)
     )
    )
   )
  (w::successive
    (senses
     ((lf-parent ont::ordered-val) ;; like consecutive
      (meta-data :origin step :entry-date 20080925 :change-date nil :wn ("serial%5:00:00:ordered:00") :comments nil)
      )
     )
    )
  (W::consecutive
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::ORDERED-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("consecutive%5:00:00:ordered:00") :comments nil)
     (EXAMPLE "display consecutive pages side-by-side")
     )
    )
   )
  (W::sequential
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::ORDERED-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("sequential%5:00:00:ordered:00") :comments nil)
     (EXAMPLE "do it in sequential order")
     )
    )
   )
  (W::respective
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::ORDERED-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("respective%5:00:00:individual:00") :comments nil)
     (EXAMPLE "put them in their respective slots")
     )
    )
   )
  (W::proportional
   (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::measure-related-property-val)
     (meta-data :origin task-learning :entry-date 20051028 :change-date 20090915 :wn ("proportional%5:00:00:proportionate:00") :comments nil)
     (EXAMPLE "the space is proportional to font size")
     (SEM (F::GRADABILITY F::-))
     (TEMPL central-adj-optional-xp-TEMPL (XP (% W::PP (W::Ptype W::to))))
     )
    )
   )
  (W::continuous
    (wordfeats (W::morph (:FORMS (-LY))))
   (SENSES
    ((LF-PARENT ONT::CONTINUOUS-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("continuous%3:00:01") :comments nil)
     (EXAMPLE "continuous tones")
     )
    )
   )
  (W::uninterrupted
   (SENSES
    ((LF-PARENT ONT::CONTINUOUS-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("uninterrupted%3:00:00") :comments nil)
     (EXAMPLE "an uninterrupted sequence")
     )
    )
   )
  (W::seamless
   (SENSES
    ((LF-PARENT ONT::CONTINUOUS-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("seamless%5:00:00:coherent:00") :comments nil)
     (EXAMPLE "the novel's seamless plot")
     )
    )
   )
  (W::coherent
   (SENSES
    ((LF-PARENT ONT::CONTINUOUS-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("coherent%3:00:00") :comments nil)
     (EXAMPLE "the novel's coherent plot")
     )
    )
   )
  (W::homogeneous
   (SENSES
    ((LF-PARENT ONT::homogeneous-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("homogeneous%3:00:00") :comments nil)
     (EXAMPLE "a homogeneous consistency")
     )
    )
   )
  (W::uniform
   (SENSES
    ((LF-PARENT ONT::homogeneous-VAL)
     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("uniform%3:00:00" "uniform%5:00:00:homogeneous:00") :comments nil)
     (EXAMPLE "a uniform consistency")
     )
    )
   )
  ;; derive from verb
;  (W::tiered
;   (SENSES
;    ((LF-PARENT ONT::grouping)
;     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("tiered%3:01:00") :comments nil)
;     (EXAMPLE "a tiered wedding cake")
;     )
;    )
;   )
;  (W::layered
;   (SENSES
;    ((LF-PARENT ONT::grouping)
;     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("layered%5:00:00:stratified:00") :comments nil)
;     (EXAMPLE "a layered wedding cake")
;     )
;    )
;   )
	  )
  )

;; derive from verb
(define-list-of-words :pos w::adj 
  :senses (((LF-parent ONT::physical-symptom-val) 
	    (templ central-adj-templ)
	    (meta-data :origin cardiac :entry-date 20090422 :change-date nil :comments nil)
	    ))
  :words (w::antsy ;w::bloated (w::bloated w::up)
	  w::fidgety w::jumpy
	  ;w::puffed (w::puffed w::up)
	  w::restless ;w::swollen (w::swollen w::up)
	  ))
  
(define-list-of-words :pos w::adj 
  :senses (((LF-parent ONT::nationality-val) 
	    (templ central-adj-templ)
	    (meta-data :origin calo-ontology :entry-date 20060128 :change-date nil :comments caloy3)
	    ))
  :words (w::chinese w::portuguese w::irish w::scottish w::british w::japanese w::dutch w::spanish w::french w::swedish w::norwegian w::danish w::african w::arabic w::turkish)
	  
  )
(define-words :pos W::adj 
  :templ CENTRAL-ADJ-TEMPL
  :words (
	  ; derive from verb
; 	  (w::blown
;	   (senses
;	    ((lf-parent ont::in-working-order-val)
;	     (meta-data :origin bee :entry-date 20040608 :change-date nil :comments portability-experiment)
;	     )
;	    ))
;	  (w::damaged
;	   (senses
;	    ((lf-parent ont::in-working-order-val)
;	     (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("damaged%3:00:00") :comments portability-experiment)
;	     )
;	    ))
	  (w::missing
	   (senses
	    ((lf-parent ont::availability-val)
	     (meta-data :origin bee :entry-date 20050307 :change-date nil :wn ("missing%5:00:00:absent:00" "missing%5:00:00:lost:01") :comments mockup-student-1)
	     )
	    ))
	  
	  (w::faulty
	   (senses
	    ((lf-parent ont::in-working-order-val)
	     (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("faulty%5:00:00:imperfect:00") :comments portability-experiment)
	     )
	    ))
	  (w::defective
	   (senses
	    ((lf-parent ont::in-working-order-val)
	     (EXAMPLE "if the library is defective, you pay for it")
	     (meta-data :origin task-learning :entry-date 20050919 :change-date nil :wn ("defective%5:00:00:imperfect:00" "defective%5:00:00:malfunctioning:00") :comments nil)
	     )
	    ))
	  ;; derive from verb
;          ((w::burned w::out)
;           (senses
;            ((lf-parent ont::in-working-order-val)
;             (meta-data :origin bee :entry-date 20040805 :change-date nil :comments portability-experiment)
;             )
;            ))
	  (w::technical
	   (senses
	    ((lf-parent ont::abstract-information-property-val)
	     ;; Put it down as abstract-information-property until we can figure out better where it belongs
	     (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("technical%3:01:00") :comments portability-experiment)
	     )
	    ))
	  (w::serial
	   (senses
; I think this is covered by ONT::ordered-val, below -- wdebeaum
;	    ((lf-parent ont::physical-discrete-property-val)	     
;	     ;; Put it down as physical-discrete-property until we can figure out better where it belongs
;	     (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("serial%5:00:00:ordered:00") :comments portability-experiment)
;	     )
	    ((lf-parent ont::ordered-val) ;; like consecutive
	     (example "a serial broadcast")
	     (meta-data :origin step :entry-date 20080925 :change-date nil :wn ("serial%5:00:00:ordered:00") :comments nil)
	     )
	    ))
	  (w::efficient
	   (senses
	    ((lf-parent ont::status-val)
	     ;; Put it down as status until we can figure out better where it belongs
	     (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("efficient%3:00:00") :comments portability-experiment)
	     )
	    ))
	  ;; derive from verb
;          (w::surprised
;           (senses
;            ((lf-parent ont::psychological-property-val)
;             (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("surprised%3:00:00") :comments portability-experiment)
;             (templ central-adj-experiencer-templ)
;             )
;            ((lf-parent ont::psychological-property-val)
;            (example "I am surprised that she does that")
;            (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
;            ))
;           )
	  (w::surprized
	   (senses
	    ((lf-parent ont::psychological-property-val) (lf-form w::surprised)
	     (meta-data :origin bee :entry-date 20040608 :change-date nil :comments portability-experiment)
	     (templ central-adj-experiencer-templ)
	     )
	    ((lf-parent ont::psychological-property-val)
	     (example "I am surprised that she does that")
	     (TEMPL ADJ-OF-CONTENT-XP-TEMPL)
	     )
	    ))
	  (w::mere
	   (senses
	    ((lf-parent ont::discrete-property-val)
	     (templ attributive-only-adj-templ)
	     (meta-data :origin bee :entry-date 20040608 :change-date nil :wn ("mere%5:00:00:specified:00") :comments portability-experiment)
	     )
	    ))	  
	  ))


(define-words :pos W::adj 
  :templ CENTRAL-ADJ-TEMPL
  :words (
	  ;; derived from verb
	  ;; additions from myrosia for LeAM
;          (W::CONFUSED
;           (SENSES
;            (
;             (LF-PARENT ONT::completion-val)
;             (meta-data :origin lam :entry-date 20050421 :change-date nil :wn ("confused%5:00:00:perplexed:00") :comments lam-initial)
;             (example "I am confused")
;             (SEM (F::GRADABILITY F::-))
;             )
;            ))

;          (W::STUCK
;           (SENSES
;            (
;             (LF-PARENT ONT::completion-val)
;             (meta-data :origin lam :entry-date 20070414 :change-date nil :wn ("confused%5:00:00:perplexed:00") :comments lam-initial)
;             (example "I am stuck")
;             (SEM (F::GRADABILITY F::-))
;             )
;            ))
;

	  (w::numerical
	   (senses
	    ((lf-parent ont::quantity-related-property-val)
	     (meta-data :origin lam :entry-date 20050421 :change-date 20090915 :wn ("numerical%5:00:00:quantitative:00") :comments lam-initial)
	     (example "numerical expression")
	     )
	    ))
	  ((w::non w::zero)
	   (senses
	    ((lf-parent ont::number-related-property-val)
	     (meta-data :origin beetle :entry-date 20080221 :change-date 20090915 :comments pilot1)
	     (example "non-zero value")
	     )
	    ))	  
	  (w::zero
	   (senses
	    ((lf-parent ont::number-related-property-val)
	     (meta-data :origin beetle :entry-date 20081112 :change-date 20090915 :comments pilot5)
	     (example "a zero voltage means that terminals are connected")
	     ;; this sentence is possible but unlikely, hence a low preference
	     ;; note that this is a true adjective: "a 5 voltage" is not possible
	     (preference 0.97)
	     )
	    ))	  
	  
	  (w::linear
	   (senses
	    ((lf-parent ont::numerical-property-val)
	     (meta-data :origin lam :entry-date 20050421 :change-date nil :wn ("linear%3:00:02") :comments lam-initial)
	     (example "numerical expression")
	     )
	    ))
	  (w::fractional
	   (senses
	    ((lf-parent ont::measure-related-property-val)
	     (meta-data :origin lam :entry-date 20050421 :change-date 20090915 :wn ("fractional%3:00:00") :comments lam-initial)
	     (example "fractional power")
	     )
	    ))
	  (w::algebraic
	   (senses
	    ((lf-parent ont::numerical-property-val)
	     (meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("algebraic%3:01:00") :comments lam-initial)
	     (example "algebraic equation")
	     )
	    ))
	  (w::trigonometric
	   (senses
	    ((lf-parent ont::numerical-property-val)
	     (meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("trigonometric%3:01:00") :comments lam-initial)
	     (example "trigonometric function")
	     )
	    ))
	  (w::trig
	   (senses
	    ((lf-parent ont::numerical-property-val)
	     (lf-form w::trigonometric)
	     (meta-data :origin lam :entry-date 20050425 :change-date nil :comments lam-initial)
	     (example "trig functions")
	     )
	    ))
	  
	  (w::afraid
	   (senses
	    ((lf-parent ont::emotional-property-val)
	     (meta-data :origin leam :entry-date 20050421 :change-date 20070214 :wn ("afraid%3:00:00") :comments lam-initial)
	     (example "I am afraid")
	     (templ predicative-only-experiencer-adj-templ)
	     )
	    ((lf-parent ont::emotional-property-val)
	     (meta-data :origin leam :entry-date 20050421 :change-date 20070214 :wn ("afraid%3:00:00") :comments lam-initial)
	     (example "I am afraid of dogs")
	     (templ adj-stimulus-xp-templ (xp (% w::pp (w::ptype w::of))))
	     )
	    ((lf-parent ont::emotional-property-val)
	     (meta-data :origin leam :entry-date 20050421 :change-date 20070214 :wn ("afraid%3:00:00") :comments lam-initial)
	     (example "I am afraid for her")
	     (templ adj-theme-xp-templ (xp (% w::pp (w::ptype w::for))))
	     )
	    ((LF-PARENT ONT::emotional-property-val)
	     (example "I am afraid [that I don't understand]")
	     (TEMPL ADJ-THEME-XP-TEMPL (XP (% W::cp (W::ctype (? ct W::s-finite w::s-to)))))
	     (meta-data :origin leam :entry-date 20050421 :change-date 20061107 :wn ("afraid%5:00:00:concerned:00") :comments lam-initial)
	     )	    
	    )	   
	   )
	  ;; derive from verb
;          (w::impressed
;           (senses
;            ((lf-parent ont::emotional-property-val)
;             (meta-data :origin leam :entry-date 20050421 :change-date 20070214 :wn ("impressed%5:00:00:affected:00")  :comments lam-initial)
;             (example "I am impressed")
;             (templ predicative-only-experiencer-adj-templ)
;             )
;            ((lf-parent ont::emotional-property-val)         
;             (meta-data :origin leam :entry-date 20050421 :change-date 20070214  :wn ("impressed%5:00:00:affected:00") :comments lam-initial)
;             (example "I am impressed with your solution")
;             (templ adj-stimulus-xp-templ (xp (% w::pp (w::ptype w::with))))
;             )
;            ((LF-PARENT ONT::emotional-property-val)
;             (example "I am impressed that you solved it")
;             (TEMPL ADJ-OF-CONTENT-XP-TEMPL (XP (% W::cp (W::ctype (? ct W::s-finite)))))
;             (meta-data :origin leam :entry-date 20050421 :change-date 20061107 :wn ("impressed%5:00:00:affected:00") :comments lam-initial)
;             )      
;            ))
;          
	  (w::neat
	   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
	   (senses
	    ((lf-parent ont::orderliness-val)
	     (meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("neat%5:00:00:tidy:00") :comments lam-initial)
	     (example "a neat solution")
	     )
	    ))
	  (w::tidy
	   (wordfeats (W::MORPH (:FORMS (-ER -LY))))
	   (senses
	    ((lf-parent ont::orderliness-val)
	     (meta-data :origin lam :entry-date 20050425 :change-date nil :wn ("tidy%3:00:00") :comments lam-initial)
	     (example "a tidy solution")
	     )
	    ))
	  (w::consistent
	   (wordfeats (W::MORPH (:FORMS (-LY))))
	   (senses
	    ((lf-parent ont::consistent-val)
	     (meta-data :origin task-learning :entry-date 20050830 :change-date 20051028 :wn ("consistent%3:00:00") :comments nil)
	     (example "a consistent solution" "a solution consistent with the constraints")
	     (TEMPL central-adj-xp-TEMPL (XP (% W::PP (W::PTYPE W::with))))
	     )
 	    ((lf-parent ont::continuous-val)
	     (meta-data :origin task-learning :entry-date 20051028 :change-date nil :wn ("consistent%3:00:01") :comments nil)
	     (example "a consistent surface")
	     )
	    ))
	  (w::inconsistent
	   (wordfeats (W::MORPH (:FORMS (-LY))))
	   (senses
	    ((lf-parent ont::consistent-val)
	     (TEMPL LESS-ADJ-TEMPL)
	     (meta-data :origin task-learning :entry-date 20050902 :change-date 20051028 :wn ("inconsistent%3:00:00") :comments nil)
	     (example "an inconsistent solution")
	     )
	    ))
	   (w::willing
	    (SENSES
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::willing)
	      (templ adj-action-templ)
	      (example "he is willing to go")
	      )
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::willing)
	      (example "a willing participant" "ready, willing and able")
	      )
	     )
	    )
	   ; derive from verb
;           (w::inclined
;            (SENSES
;             ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
;              (LF-PARENT ONT::willing)
;              (templ adj-action-templ)
;              (example "he is inclined to go")
;              )
;             )
;            )
	     (w::voluntary
	    (SENSES
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::willing)
	      (example "a voluntary contribution")
	      )
	     )
	    )
	   (w::unwilling
	    (SENSES
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::unwilling)
	      (templ adj-action-templ)
	      (example "he is unwilling to go")
	      )
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::unwilling)
	      (example "a willing participant" "ready, willing and able")
	      )
	     )
	    )
	   (w::disinclined
	    (SENSES
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::unwilling)
	      (templ adj-action-templ)
	      (example "he is disinclined to go")
	      )
	     )
	    )
	   (w::involuntary
	    (SENSES
	     ((meta-data :origin sense :entry-date 200901027 :change-date nil :comments nil)
	      (LF-PARENT ONT::unwilling)
	      (example "a involuntary contribution")
	      )
	     )
	    )
	  ))


(define-words :pos W::adj 
  :templ CENTRAL-ADJ-TEMPL
  :words (
	  ;; additions for food-kb
	  (W::LEAN
	   (SENSES
	    (
	     (LF-PARENT ONT::fat-content)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("lean%3:00:04") :comments nil)
	     (example "he only eats lean meat")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	  (W::skim
	   (SENSES
	    (
	     (LF-PARENT ONT::fat-content)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("skim%5:00:00:nonfat:00") :comments nil)
	     (example "he only drinks skim milk")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	  (W::lowfat
	   (SENSES
	    (
	     (LF-PARENT ONT::fat-content)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :comments nil)
	     (example "he only drinks lowfat milk")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	  (W::nonfat
	   (SENSES
	    (
	     (LF-PARENT ONT::fat-content)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("nonfat%3:00:00") :comments nil)
	     (example "he only drinks nonfat milk")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	   (W::boneless
	   (SENSES
	    (
	     (LF-PARENT ONT::food-preparation)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("boneless%3:00:00") :comments nil)
	     (example "boneless skinless chicken breast")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	   (W::skinless
	   (SENSES
	    (
	     (LF-PARENT ONT::food-preparation)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("skinless%3:00:00") :comments nil)
	     (example "boneless skinless chicken breast")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 (W::fluffy
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("fluffy%5:00:00:soft:00") :comments nil)
	     (example "fluffy mousse")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 (W::creamy
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("creamy%5:00:00:thick:02") :comments nil)
	     (example "creamy mousse")
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 (W::granular
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("granular%5:00:00:coarse:00") :comments nil)
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 (W::chunky
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("chunky%5:00:00:unshapely:00") :comments nil)
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 ;; derive from verb
;          (W::imported
;           (SENSES
;            (
;             (LF-PARENT ONT::origin-val)
;             (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("imported%5:00:00:foreign:00") :comments nil)
;             (SEM (F::GRADABILITY F::-))
;             )
;            ))
	   (W::domestic
	   (SENSES
	    (
	     (LF-PARENT ONT::origin-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("domestic%5:00:00:native:01") :comments nil)
	     (SEM (F::GRADABILITY F::-))
	     )
	    ))
	 (W::leathery
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("leathery%5:00:00:tough:00") :comments nil)
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 (W::glutinous
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("glutinous%5:00:00:adhesive:00") :comments nil)
	     (SEM (F::GRADABILITY F::+))
	     )
	    ))
	 (W::leafy
	   (SENSES
	    (
	     (LF-PARENT ONT::texture-val)
	     (meta-data :origin foodkb :entry-date 20050811 :change-date nil :wn ("leafy%3:00:00") :comments nil)
	     (SEM (F::GRADABILITY F::+))
	     )
))
	 
  
	  )
  )



;; calo: computer and projector purchasing
(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
(w::centigrade
    (SENSES
     ((LF-PARENT ONT::Physical-discrete-domain)
      (meta-data :origin plow :entry-date 20060615 :change-date nil :wn ("centigrade%3:01:00") :comments pq)
      )
     )
    )
(w::coax
    (SENSES
     ((LF-PARENT ONT::Physical-discrete-domain)
      (meta-data :origin calo :entry-date 20050418 :change-date nil :comments projector-purchasing)
      )
     )
    )
   (w::coaxial
    (SENSES
     ((LF-PARENT ONT::Physical-discrete-domain)
      (meta-data :origin calo :entry-date 20050418 :change-date nil :wn ("coaxial%5:00:00:concentric:00") :comments projector-purchasing)
      )
     )
    )
  (W::photographic
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("photographic%3:01:00") :comments caloy3)
     (LF-PARENT ONT::medium)
     (example "photographic film") ;; like electromagnetic, holographic
     )
    )
   )
 
   (W::still
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060711 :change-date nil :wn ("still%5:00:01:nonmoving:00") :comments caloy3)
     (LF-PARENT ONT::motion-VAL)
     (example "a still image")
     )
    ((meta-data :origin ?? :entry-date 20080925 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::QUIET)
     (example "a still night")
     )
    )
   )
   (W::linguistic
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("linguistic%3:01:00") :comments ma-request)
     (LF-PARENT ONT::property-VAL)
     )
    )
   )
  (W::lunar
   (SENSES
    ((meta-data :origin calo-ontology :entry-date 20060713 :change-date nil :wn ("lunar%3:01:00") :comments ma-request)
     (LF-PARENT ONT::location-VAL)
     (example "a lunar landing")
     )
    )
   )
  (W::palpable
   (SENSES
    ((LF-PARENT ONT::tangible-property-val)
     (meta-data :origin trips :entry-date 20090915 :change-date :comments nil)
     )
    )
   )
  (W::tangible
   (SENSES
    ((LF-PARENT ONT::tangible-property-val)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date 20090915 :wn ("tangible%3:00:00") :comments caloy3)
     )
    )
   )
  (W::intangible
   (SENSES
    ((LF-PARENT ONT::perceptibility)
     (meta-data :origin calo-ontology :entry-date 20060712 :change-date nil :wn ("intangible%3:00:00") :comments caloy3)
     )
    )
   )
 )
)


(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  ;; entry patterned on difficult	 
  ((w::a W::bitch)
   (wordfeats (W::morph (:forms (-none))))
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::task-complexity-val)
     (example "Programmers are a bitch to interview")
     (templ adj-content-templ)
     (preference .97) ;; reduce competition with the article
     )
    ((meta-data :origin csli-ts :entry-date 20070313 :change-date nil :comments nil :wn nil)
     (LF-PARENT ONT::task-complexity-val)
     (example "Programmers are a bitch for managers")
     (templ adj-content-affected-XP-templ  (xp (% w::pp (w::ptype w::for))))
     (preference .97) ;; reduce competition with the article
     )
    ((meta-data :origin csli-ts :entry-date 20070321 :change-date nil :comments nil :wn ("hard%3:00:06"))
     (EXAMPLE "it's a bitch to see him")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-xp-TEMPL (XP (% W::CP (W::CTYPE W::s-to))))
     (preference .97) ;; reduce competition with the article
     )
    ((meta-data :origin csli-ts :entry-date 20070321 :change-date nil :comments nil :wn ("hard%3:00:06"))
     (example "Programmers are a bitch for managers to interview")
     (LF-PARENT ONT::task-complexity-VAL)
     (TEMPL adj-expletive-content-control-TEMPL)
     (preference .97) ;; reduce competition with the article
     )
    ))
  (w::trustworthy
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070313 :change-date 20090731 :comments nil :wn  ("reliable%5:00:01:trustworthy:00"))
     (LF-PARENT ONT::RELIABLE) ;; like reliable
     (example "A trustworthy employee is Abrams")
     )
    )
   )
  (w::unevaluated
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070313 :change-date 20090818 :comments nil :wn nil)
     (LF-PARENT ONT::has-been-done-VAL)
     (example "Abrams was unevaluated")
     )
;;     (example "Abrams was unevaluated by Chiang")
    )
   )
  ((W::used w::to)
   (SENSES
    ((meta-data :origin csli-ts :entry-date 20070320 :change-date nil :comments nil :wn nil)
     (EXAMPLE "He is used to that")
     (LF-PARENT ONT::habituated)
     (SEM (F::GRADABILITY F::+))
     (TEMPL adj-experiencer-theme-req-templ (xp (% w::np)))
     )
    )
   )
  )
 )


(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (w::salty
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     (example "you should avoid salty foods")
     )
    )
   )
  (w::sweet
   (wordfeats (W::MORPH (:FORMS (-LY -ER))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     )
    )
   )
   (w::bitter
    (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     )
    )
   )
  (w::sour
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     )
    )
   )
  (w::pungent
    (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     )
    )
   )
  (w::piquant
   (wordfeats (W::MORPH (:FORMS (-LY))))
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     )
    )
   )
  (w::tasty
   (SENSES
    ((meta-data :origin chf :entry-date 20070809 :change-date nil :comments nil)
     (LF-PARENT ONT::taste-val)
     )
    )
   )
  )
 )


(define-words :pos W::adj :templ CENTRAL-ADJ-TEMPL
 :words (
  (w::underway
   (wordfeats (W::MORPH (W::ALLOW-POST-N1-SUBCAT +)))
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::event-time-rel)
     (SEM (F::GRADABILITY F::+))
     (example "the process is well underway")
     (templ predicative-only-adj-templ)
     )
    )
   )
   ((w::in w::progress)
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::event-time-rel)
     (example "the process is in progress")
     (templ predicative-only-adj-templ)
     )
    )
   )
   (w::broad
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date 20090731 :comments nil)
     (LF-PARENT ONT::large)
     (example "a broad range")
     (SEM (F::GRADABILITY F::+) (f::orientation ont::more) (f::intensity ont::med))
     )
    )
   )
   (w::federal
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::national-val)
     (example "federal government")
     )
    )
   )
   (w::national
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::national-val)
     (example "national government")
     )
    )
   )
   (w::modern
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::modernity-val)
     (example "modern art")
     )
    )
   )
   (w::contemporary
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::modernity-val)
     )
    )
   )
 (w::prehistoric
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::modernity-val)
     )
    )
   )
  (w::ancient
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::modernity-val)
     )
    )
   )
   ((w::old w::fashioned)
   (SENSES
    ((meta-data :origin windenergy :entry-date 20080521 :change-date nil :comments nil)
     (LF-PARENT ONT::modernity-val)
     )
    )
   )


 ;; negative polarity
  (W::whatsoever
   (SENSES
   ((LF-PARENT ONT::availability-val)
     (templ postpositive-adj-templ)
     (meta-data :origin cardiac :entry-date 20090120 :change-date nil :comments LM-vocab)
     (example "none whatsoever" "no plan whatsoever")
     )
    )
   )

  ;; negative polarity
  ((W::at w::all)
   (SENSES
   ((LF-PARENT ONT::availability-val)
    (templ postpositive-adj-templ)
     (meta-data :origin cardiac :entry-date 20090120 :change-date nil :comments LM-vocab)
     (example "none at all" "no plan at all")
     )

   ;; it is not quiet at all

   ;; it is not at all quiet ->  not at all
    )
   )
   
   )
 )

  
