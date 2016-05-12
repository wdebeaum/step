
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
))
