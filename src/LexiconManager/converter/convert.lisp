;;;;
;;;; File: convert.lisp
;;;; Creator: George Ferguson
;;;; Created: Wed Jun  6 16:08:38 2012
;;;; Time-stamp: <Wed Jun 20 09:34:06 EDT 2012 ferguson>
;;;;
#||
This code reads old-style lexicon input files and produces new-style
per-lemma lexicon input files.

This is complicated by my desire to preserve the comments associated with
the lexicon entries. Thus the readtable hacking (to save the comments), and
the convoluted logic that restores them as the entries are output.
||#


(setq sb-c::*undefined-warning-limit* 0)

;;;
;;; Database
;;;

(defvar *word-sensedefs* (make-hash-table :test #'equal)
  "Hashtable storing sensedefs per word. Uses EQUAL since some ``words''
are actually lists (for lexicalized compounds).")

(defun save-word-sensedef (word sensedef)
  "Adds SENSEDEF to the list of sense definitions for WORD."
  (let ((senses (gethash word *word-sensedefs*)))
    (setq senses (append senses (list sensedef)))
    (setf (gethash word *word-sensedefs*) senses)))

(defun get-word-sensedefs (word)
  "Return the list of sense definitions for WORD."
  (gethash word *word-sensedefs*))

(defun get-defined-words ()
  "Return the list of defined words."
  (loop for key being each hash-key of *word-sensedefs*
       collect key))

(defun clear-defined-words ()
  "Clear the list of defined words and their definitions."
  (clrhash *word-sensedefs*))

;;;
;;; Input
;;;

(defun read-preserving-comments-and-case (&optional (stream t))
  "Read and return a form from the given STREAM, preserving comments as strings
that start with a semicolon in the returned form. Also preserves the case of
read symbols (via READTABLE-CASE)."
  (let ((*readtable* (copy-readtable nil)))
    (setf (readtable-case *readtable*) :preserve)
    (set-macro-character #\; #'comment-reader)
    (read stream)))

(defun comment-reader (stream ch)
  "Called to read a comment after a semicolon has been read. Returns the
content to end-of-line (or file) as a string."
  (let ((buf (make-array 256 :element-type 'standard-char :adjustable t :fill-pointer 0)))
    (vector-push-extend ch buf)
    (loop
       while (not (eql (setq ch (read-char stream nil #\Newline)) #\Newline))
       do (vector-push-extend ch buf))
    (string buf)))

(defun commentp (x)
  "Returns non-NIL if X is a string starting with a semicolon."
  (and (stringp x) (eql (char x 0) #\;)))

(defun translate-stream (stream)
  "Read old-style lexicon definitions from STREAM and convert to new-style
definitions."
  (loop with form
       while (setq form (read-preserving-comments-and-case stream))
       do (translate-form form)))

(defun translate-form (form)
  "Translate old-style lexicon definition FORM to new-style lexicon
definitions."
  (cond
    ((listp form)
     (ecase (car form)
       ((define-words |define-words|)
	(apply #'translate-define-words (cdr form)))
       ((define-list-of-words |define-list-of-words|)
	(apply #'translate-define-list-of-words (cdr form)))))
    ((commentp form)
     ;; embedded comment, probably applies to next define-words or define-list-of-words
     (format *error-output* "Yow! toplevel comment: ~A" form))
    (t
     (error "unexpected form: ~S" form))))

;;;
;;; DEFINE-WORDS
;;;

(defvar *comment* nil)

(defun translate-define-words (&key ((:|pos| pos)) ((:|templ| templ)) ((:|words| words)))
  "DEFINE-WORDS has keyword args for default POS and TEMPL, and then keyword
arg WORDS for the list of word definitions (to be defined with those defaults)."
  (loop for worddef in words
     do (cond
	  ((not (stringp worddef))
	   (apply #'translate-define-words-worddef pos templ worddef))
	  ((commentp worddef)
	   ;; embedded comment presumably applies to next word
	   (if *comment*
	       (setq *comment* (format nil "~A~%~A" *comment* worddef))
	       (setq *comment* worddef)))
	  (t
	   (error "unexpected worddef: ~S" worddef)))))

(defun translate-define-words-worddef (pos templ word attrs)
  "Each word definition (worddef) has a list of (name value) pairs following
the word (symbol or list of symbols for compounds).
The most important of these is SENSES, whose value is a list of sense
definitions (sensedefs), each of which is itself a list of (name
value) pairs.
Another worddef attribute is WORDFEATS."
  (

(defun translate-define-words-worddef-senses (pos templ word senses)
  (if (member (car senses) '(senses |senses|))
      (setq senses (cdr senses))
      (error "senses for ~S didn't start with SENSES: ~S" word senses))
  ;; If prior comment, save it with this word
  (when *comment*
    (save-word-sensedef word *comment*)
    (setq *comment* nil))
  ;; Then process the senses
  (loop for sensedef in senses
     do (cond
	  ((not (stringp sensedef))
	   (translate-define-words-sensedef pos templ word sensedef))
	  ((commentp sensedef)
	   ;; embedded comment for next sense
	   (if *comment*
	       (setq *comment* (format nil "~A~%  ~A" *comment* sensedef))
	       (setq *comment* (format nil "~&  ~A~%" sensedef))))
	  (t
	   (error "unexpected sensedef: ~S" sensedef)))))

(defun translate-define-words-sensedef (pos templ word sensedef)
  ;; Apply defaults if not given in sensedef
  (when (not (sensedef-defines-property sensedef '(templ |templ|)))
    (setq sensedef (cons (list 'templ templ) sensedef)))
  (when (not (sensedef-defines-property sensedef '(pos |pos|)))
    (setq sensedef (cons (list 'pos pos) sensedef)))
  ;; If prior comment, save it with this sensedef (at the start)
  (when *comment*
    (setq sensedef (cons *comment* sensedef))
    (setq *comment* nil))
  ;; Save sense associated with word
  (save-word-sensedef word sensedef))

(defun sensedef-defines-property (sensedef props)
  "True if a property listed in PROPS is defined in the given SENSEDEF,
which may include embedded comments (hence can't just use ASSOC)."
  (find-if #'(lambda (x)
	       (and (consp x) (member (car x) props)))
	   sensedef))

;;;
;;; DEFINE-LIST-OF-WORDS
;;;

(defun translate-define-list-of-words (&key ((:|pos| pos)) ((:|templ| templ)) ((:|senses| senses)) ((:|words| words)))
  (loop for word in words
     do (translate-define-words-worddef pos templ word (cons 'senses senses))))

;;;
;;; Output
;;;

(defun output ()
  "Output all the definitions."
  (let ((words (get-defined-words)))
    (setq words (sort words #'(lambda (a b)
				(when (consp a) (setq a (car a)))
				(when (consp b) (setq b (car b)))
				(string< (symbol-name a) (symbol-name b)))))
    (loop for word in words
       do (output-word word))))

(defun output-word (word)
  (format t "-----------------~%")
  (let ((sensedefs (get-word-sensedefs word)))
    ;; Possible leading comment associated with word
    (when (stringp (car sensedefs))
      (format t "~A~%" (car sensedefs))
      (setq sensedefs (cdr sensedefs)))
    (format t "(lemma ")
    (print-sensedef-element word) ; used to get nice symbol printing even in list
    (format t "~%")
    (loop for sensedef in sensedefs
       do (if (stringp sensedef)
	      (format t "~A" sensedef)
	      (output-sensedef sensedef)))
    (format t ")~%~%")
    (format t "-----------------~%")))

(Defun output-sensedef (sensedef)
  "Prints given SENSEDEF to the default output stream."
    ;; Possible leading comment associated with sense
  (when (stringp (car sensedef))
    (format t "~A" (car sensedef))
    (setq sensedef (cdr sensedef)))
  (format t "  (sense~%")
  (loop for x in sensedef
     do (cond
	  ((commentp x)
	   (format t " ~A~%" x))
	  (t
	   (format t "~&    ")
	   (print-sensedef-element x))))
  ;; If last item was a comment, then close paren is on new line, else not
  (if (commentp (elt sensedef (1- (length sensedef))))
      (format t "  )")
      (format t ")"))
  (format t "~%"))

;; We want to print symbols without escapes (`|'), but we want things
;; like strings to have quotes. Argh! Oh and could we have it nicely
;; indented also please?

(defvar *default-pprint-dispatch* *print-pprint-dispatch*)
(defvar *my-pprint-dispatch* (copy-pprint-dispatch))
(set-pprint-dispatch 'symbol 'my-pprint-symbol 0 *my-pprint-dispatch*)

(defvar *unprefixed-packages*
  (list *package* (find-package :common-lisp)))

(defun my-pprint-symbol (stream sym)
  (let ((*print-pprint-dispatch* *default-pprint-dispatch*)
	(sympkg (symbol-package sym))
	(lcname (string-downcase (symbol-name sym))))
    (cond
      ((keywordp sym)
	(format stream ":~A" lcname))
      ((member sympkg *unprefixed-packages*)
	(format stream "~A" lcname))
      (t
	(format stream "~A::~A" (package-name sympkg) lcname)))))

(defun print-sensedef-element (x)
  (let ((*print-pprint-dispatch* *my-pprint-dispatch*))
    (if (and (consp x) (eq (car x) '|meta-data|))
	(print-sensedef-meta-data x)
	(write x))))

(defun print-sensedef-meta-data (x)
  "Prints a meta-data element nicely formatted."
  (pprint-logical-block (nil x :prefix "(" :suffix ")")
    (write (pprint-pop))
    (pprint-exit-if-list-exhausted)
    (write-char #\space)
    (loop
       (pprint-indent :block 10)
       (write (pprint-pop)) 
       (pprint-exit-if-list-exhausted) 
       (write-char #\space) 
       (write (pprint-pop)) 
       (pprint-exit-if-list-exhausted) 
       (pprint-newline :mandatory))))

;;;
;;; Testing
;;;

(defpackage :W (:nicknames |w|))
(defpackage :ONT (:nicknames |ont|))
(defpackage :F (:nicknames |f|))

(defun test (str)
  (clear-defined-words)
  (let ((form (read-preserving-comments-and-case (make-string-input-stream str))))
    (translate-form form)
    (output)
    (values)))

(defun test1 ()
  (test "(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  ;;  Note:: handling it this way overgenerates e.g., \"the two ones in the corner\" parses.
  (W::ONE
   (SENSES
	 ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn (\"one%1:09:00\"))
	  (syntax (W::one +))  ;; such a strange word, we give it its own feature
	  (LF-PARENT ont::referential-sem)
	  (example \"the other one\")
	  (preference .96) ;; prefer number sense
	 )
      )
    )
))"))

(defun test2 ()
  (test "(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  ;;  Note:: handling it this way overgenerates e.g., \"the two ones in the corner\" parses.
  (W::ONE
   (SENSES
	 ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn (\"one%1:09:00\"))
	  (syntax (W::one +))  ;; such a strange word, we give it its own feature
	  (LF-PARENT ont::referential-sem)
	  (example \"the other one\")
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
))"))

(defun test3 ()
  (test "(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  ;;  Note:: handling it this way overgenerates e.g., \"the two ones in the corner\" parses.
  (W::ONE
   (SENSES
	 ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn (\"one%1:09:00\"))
	  (syntax (W::one +))  ;; such a strange word, we give it its own feature
	  (LF-PARENT ont::referential-sem)
	  (example \"the other one\")
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
    ((meta-data :origin trips :entry-date 20060803 :change-date nil :comments nil :wn (\"thing%1:03:00\"))
     (LF-PARENT ONT::referential-sem)
     )
    )
   )
))"))

(defun test4 ()
  (test "(define-words :pos W::n :templ COUNT-PRED-TEMPL
 :words (
  (W::SYSTEM
   (SENSES
    ;; this sense is for a physical arrangement of components
    ((LF-PARENT ONT::INSTRUMENTATION)
     (example \"an entertainment system\")
     (meta-data :origin caloy2 :entry-date 20050404 :change-date nil :wn (\"system%1:06:00\") :comments projector-purchasing)
     )
    ;; this is for abstractions
    ((EXAMPLE \"a meal system\")
     (meta-data :origin medadvisor :entry-date 20030404 :change-date nil :wn (\"system%1:14:00\") :comments nil)
     (LF-PARENT ONT::procedure)
      (PREFERENCE 0.98) ;; prefer ont::instrumentation sense
     )
    ((LF-PARENT ONT::agent)
     (example \"ask the system to help you\")
     (meta-data :origin integrated-learning :entry-date 20050817 :change-date nil :comments nil)
     )
    )
   )
))"))

(defun test5 ()
  (test "(define-list-of-words :pos W::n
  :senses (
   ((LF-PARENT ONT::working-out)
    (meta-data :origin cardiac :entry-date 20090129 :change-date nil :comments nil)
    (TEMPL count-PRED-TEMPL)
    )
   )
 :words (w::crunch  (w::jumping w::jack) w::pushup (w::push w::up) (w::sit w::up) w::situp))"))

(defun test6 ()
  (test "(define-words :pos W::v :templ AGENT-THEME-XP-TEMPL
 :words (
  (W::STOP
   (wordfeats (W::morph (:forms (-vb) :nom w::stop)))
   (SENSES
    ((EXAMPLE \"He stopped the rioting\")
     (LF-PARENT ONT::STOP)
     (SEM (F::Aspect F::bounded) (F::Time-span F::atomic))
     (templ cause-effect-xp-templ (xp (% w::vp (w::vform w::ing))))
     )
    ((EXAMPLE \"he/the truck stopped\")
     (LF-PARENT ONT::STOP)
     (SEM (F::Aspect F::bounded) (F::Time-span F::atomic))
     (templ affected-templ)
     (meta-data :origin fruit-carts :entry-date 20050308 :change-date nil :comments nil)
     )
    ((LF-PARENT ONT::STOP)
     (example \"the computers/managers stopped working\")
     (SEM (F::Aspect F::bounded) (F::Time-span F::atomic))
     (TEMPL affected-effect-xp-templ (xp (% w::vp (w::vform w::ing))))
     )
    ((LF-PARENT ONT::STOP)
     (SEM (F::Aspect F::bounded) (F::Time-span F::atomic))
     (TEMPL CAUSE-affected-xp-TEMPL)
     (EXAMPLE \"He/The storm stopped the fair/the truck\")
     )
    ((LF-PARENT ONT::STOP)
     (SEM (F::Aspect F::bounded) (F::Time-span F::atomic))
     (TEMPL effect-TEMPL)
     (EXAMPLE \"The rioting stopped\")
     )
     ((meta-data :origin wordnet-3.0 :entry-date 20090528 :change-date nil :comments nil)
     (LF-PARENT ONT::stop)
     (TEMPL CAUSE-EFFECT-AFFECTED-OBJCONTROL-TEMPL (xp (% w::cp (w::ctype w::s-from-ing))))
     (example \"The hospital stops visitors from smoking\")
     )
    )
   )
))"))
