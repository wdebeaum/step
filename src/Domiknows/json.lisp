(in-package :domiknows)

;;;; JSON parser

;;; The grammar rule functions here take an input stream as the first (and
;;; usually only) argument, and attempt to parse one item from that stream.
;;; They return two values: a boolean indicating whether the rule succeeded,
;;; and the parsed value, if any. If a rule fails in a way that the JSON is
;;; still valid, no characters are consumed from the stream. Otherwise an error
;;; is signaled.

(defun j-one-of (s chars)
  "Consume one of the given chars."
  (if (member (peek-char nil s nil) chars)
    (values t (read-char s))
    (values nil nil)))

(defun j-pred (s pred)
  "Consume a char satisfying the given predicate."
  (let ((c (peek-char nil s nil)))
    (if (and c (funcall pred c))
      (values t (read-char s))
      (values nil nil))))

(defun j-ws (s)
  "Consume a string of whitespace."
  (loop for c = (read-char s nil)
	while (member c '(#\Space #\Tab #\Newline #\Return))
	finally (when c (unread-char c s)))
  (values t nil))

(defun j-number (s)
  "Consume a number."
  (let (succ sign first-digit whole-digits frac-digits exp-sign exp-digits)
    (multiple-value-setq (succ sign) (j-one-of s '(#\-)))
    (multiple-value-setq (succ first-digit) (j-pred s #'digit-char-p))
    (unless succ
      (return-from j-number (values nil nil)))
    (push first-digit whole-digits)
    (unless (char= #\0 first-digit)
      (loop with d = nil
	    do (multiple-value-setq (succ d) (j-pred s #'digit-char-p))
	       (unless succ (loop-finish))
	       (push d whole-digits))
      (setf whole-digits (nreverse whole-digits))
      )
    (when (j-one-of s '(#\.))
      (multiple-value-setq (succ first-digit) (j-pred s #'digit-char-p))
      (unless succ
	(error "JSON parse error: expected digit after decimal point, but got ~a" (peek-char nil s nil "EOF")))
      (push first-digit frac-digits)
      (loop with d = nil
	    do (multiple-value-setq (succ d) (j-pred s #'digit-char-p))
	       (unless succ (loop-finish))
	       (push d frac-digits))
      (setf frac-digits (nreverse frac-digits))
      )
    (when (j-one-of s '(#\E #\e))
      (multiple-value-setq (succ exp-sign) (j-one-of s '(#\- #\+)))
      (multiple-value-setq (succ first-digit) (j-pred s #'digit-char-p))
      (unless succ
	(error "JSON parse error: expected digit in exponent, but got ~a" (peek-char nil s nil "EOF")))
      (push first-digit exp-digits)
      (loop with d = nil
	    do (multiple-value-setq (succ d) (j-pred s #'digit-char-p))
	       (unless succ (loop-finish))
	       (push d exp-digits))
      (setf exp-digits (nreverse exp-digits))
      )
    ;(format t "~s~%" (list :sign sign :whole-digits whole-digits :frac-digits frac-digits :exp-sign exp-sign :exp-digits exp-digits))
    (values t
	    (* (if sign -1 1)
	       (+
	         (parse-integer (format nil "~{~c~}" whole-digits))
		 (if frac-digits
		   (float (/ (parse-integer (format nil "~{~c~}" frac-digits))
			     (expt 10 (length frac-digits))))
		   0))
	       (if exp-digits
		 (expt 10 (* (if (eq #\- exp-sign) -1 1)
			     (parse-integer (format nil "~{~c~}" exp-digits))))
		 1)
	       )
	    )
    ))

(defvar *hex-digits* (coerce "0123456789ABCDEFabcdef" 'list))

(defun j-string (s)
  "Consume a quoted string."
  (multiple-value-bind (succ q) (j-one-of s '(#\"))
      (declare (ignore q))
    (unless succ
      (return-from j-string (values nil nil))))
  (values t (with-output-to-string (o)
    (loop for c = (read-char s nil)
	  while (and c (not (char= #\" c)))
	  do (cond
	       ((char= #\\ c) ;; escape
		 (ecase (read-char s)
		   ;; escaped literal characters
		   (#\" (write-char #\" o))
		   (#\\ (write-char #\\ o))
		   (#\/ (write-char #\/ o))
		   ;; control characters
		   (#\b (write-char #\Backspace o))
		   (#\f (write-char #\Page o))
		   (#\n (write-char #\Newline o))
		   (#\r (write-char #\Return o))
		   (#\t (write-char #\Tab o))
		   ;; 4-hex-digit unicode character code
		   (#\u
		     (loop with hex-digits = nil
			   for i from 0 below 4
			   do (multiple-value-bind (succ d)
				  (j-one-of s *hex-digits*)
				(unless succ
				  (error "JSON parse error: expected 4 hexadecimal digits after \\u in string, but got ~a" (peek-char nil s nil "EOF")))
				(push d hex-digits))
			   finally
			     (setf hex-digits (nreverse hex-digits))
			     (let* ((hex-str (format nil "~{~c~}" hex-digits))
				    (code (parse-integer hex-str :radix 16))
				    (c (code-char code)))
			       (write-char c o))
			   ))
		   ))
	       ;; regular, unescaped characters
	       (t (write-char c o))
	       )
	  finally (unless c (error "JSON parse error: unterminated string"))
	  ))))

(defun j-lit (s lit)
  "Consume the given literal string."
  (loop with first = t
	for expected across lit
	do (multiple-value-bind (succ c) (j-one-of s (list expected))
	       (declare (ignore c))
	     (cond
	       (succ nil)
	       (first (return-from j-lit (values nil nil)))
	       (t (error "JSON parse error: expected literal ~s to continue, but got ~a" lit (peek-char nil s nil "EOF")))
	       ))
	)
  (values t lit))

(defun j-true (s)
  (if (j-lit s "true") (values t t) (values nil nil)))

;;; NOTE: this collapses JSON true and null both to Lisp NIL

(defun j-false (s)
  (if (j-lit s "false") (values t nil) (values nil nil)))

(defun j-null (s)
  (if (j-lit s "null") (values t nil) (values nil nil)))

;; forward-declare object and array for use in value
(declaim (ftype (function (stream) (values boolean t)) j-object j-array))

(defun j-value (s)
  (j-ws s)
  (let (succ v)
    (multiple-value-setq (succ v) (j-string s)) (unless succ
    (multiple-value-setq (succ v) (j-number s)) (unless succ
    (multiple-value-setq (succ v) (j-object s)) (unless succ
    (multiple-value-setq (succ v) (j-array s)) (unless succ
    (multiple-value-setq (succ v) (j-true s)) (unless succ
    (multiple-value-setq (succ v) (j-false s)) (unless succ
    (multiple-value-setq (succ v) (j-null s)) (unless succ
      ;(error "JSON parse error: expected value, but got ~a" (peek-char nil s nil "EOF"))
      (return-from j-value (values nil nil))
      ))))))) ; pile o' parens balancing all the "(unless succ" above
    (j-ws s)
    (values t v)
    ))

(defun j-array (s)
  (unless (j-one-of s '(#\[))
    (return-from j-array (values nil nil)))
  (loop with elems = nil
    do
      (j-ws s)
      (multiple-value-bind (succ elem) (j-value s)
	(if succ
	  (push elem elems)
	  (loop-finish)))
      (unless (j-one-of s '(#\,))
	(loop-finish))
    finally
      (unless (j-one-of s '(#\]))
	(error "JSON parse error: expected \",\" or \"]\" while parsing array, but got ~a" (peek-char nil s nil "EOF")))
      (return-from j-array (values t (nreverse elems)))
    )
  )

(defun j-object (s)
  "Consume a JSON object as a keyword-argument list, turning object keys into
   upcased keyword symbols, e.g.
   { \"foo\": 42, \"bar\": 57 }
   becomes
   (:FOO 42 :BAR 57)."
  (unless (j-one-of s '(#\{))
    (return-from j-object (values nil nil)))
  (loop with elems = nil
	with succ = nil
	with elem = nil
    do
      (j-ws s)
      (multiple-value-setq (succ elem) (j-string s))
      (if succ
	(push (intern (string-upcase elem) :keyword) elems)
	(loop-finish))
      (j-ws s)
      (unless (j-one-of s '(#\:))
	(error "JSON parse error: expected \":\" after object key ~s, but got ~a" (car elems) (peek-char nil s nil "EOF")))
      (multiple-value-setq (succ elem) (j-value s))
      (if succ
	(push elem elems)
	(error "JSON parse error: expected value after object key ~s, but got ~a" (car elems) (peek-char nil s nil "EOF")))
      (unless (j-one-of s '(#\,))
	(loop-finish))
    finally
      (unless (j-one-of s '(#\}))
	(error "JSON parse error: expected \",\" or \"}\" while parsing object, but got ~a" (peek-char nil s nil "EOF")))
      (return-from j-object (values t (nreverse elems)))
    )
  )

(defun j-test ()
  "Test parsing a JSON object that should exercise most of the parser code."
  (let ((input " { \"foo\" : 42 , \"bar\":-57.123e2, \"baz\": [ 0.123 ], \"literals\": [true, false ,null], \"empties\": [{},[]] } ")
	(expected-output
	  '(:FOO 42
	    :BAR -5712.3003 ; single precision floating point error
	    :BAZ (0.123)
	    :LITERALS (t nil nil)
	    :EMPTIES (nil nil))))
    (multiple-value-bind (succ actual-output)
        (with-input-from-string (s input) (j-value s))
      (cond
	((not succ)
	  (format t "NOT OK~%failed to parse anything~%"))
	((equalp expected-output actual-output)
	  (format t "OK~%"))
	(t
	  (format t "NOT OK~%actual output:~%~s~%" actual-output))
	))))

(defun parse-json-string (str)
  "Parse a JSON value from the whole string str. Signal an error if the whole
   string could not be parsed as a single JSON value."
  (with-input-from-string (s str)
    (multiple-value-bind (succ v) (j-value s)
      (unless succ
	(error "JSON parse error: failed to find a JSON value"))
      (let ((c (peek-char nil s nil)))
	(when c ; not eof
	  (error "JSON parse error: junk after JSON value: ~a" c)))
      v)))
