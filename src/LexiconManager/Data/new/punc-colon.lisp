;;;;
;;;; W::punc-colon
;;;;

(define-words :pos W::punc :boost-word t :templ NO-FEATURES-TEMPL
 :tags (:punc)
 :words (
  (W::punc-colon
   (SENSES
    ((LF (W::COLON))
     (syntax (w::skip +))
     (non-hierarchy-lf t))
    )
   )
))

