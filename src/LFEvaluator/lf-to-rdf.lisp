(in-package :LFEvaluator)


(defun lf-to-rdf (lf-terms)
  "Return a string containing RDF representing the given LF terms."
  (with-output-to-string (s)
    (format s "<?xml version=\"1.0\"?>
<rdf:RDF
    xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"
    xmlns:role=\"http://www.cs.rochester.edu/research/trips/role#\"
    xmlns:TMA=\"http://www.cs.rochester.edu/research/trips/TMA#\"
    xmlns:LF=\"http://www.cs.rochester.edu/research/trips/LF#\">
<!--
~s
-->~%" lf-terms)
    (dolist (term (convert-to-package lf-terms))
      (let ((indicator (first term))
            (id (second term))
	    (type-word (third term))
	    (roles (cdddr term))
	    type word)
        ;; interpret the different kinds of third element
        (if (consp type-word)
	  (cond
	    ((eql :* (car type-word))
	      (setf type (second type-word))
	      (setf word (third type-word))
	      )
	    ((eql 'set-of (car type-word))
	      (setf type 'set)
	      (setf roles (append (list :of (second type-word)) roles))
	      )
	    (t
	      (error "Unknown type of third element of a term: ~s" type-word))
	    )
	  ;; not a list
	  (setf type type-word)
	  )
        (format s "  <rdf:Description rdf:ID=\"~s\">~%" id)
	(format s "    <LF:indicator>~s</LF:indicator>~%" indicator)
	(format s "    <LF:type>~s</LF:type>~%" type)
	(when word
	  (format s "    <LF:word>~s</LF:word>~%" word))
	(loop while roles
	      for role = (pop roles) then (pop roles)
	      for value = (pop roles) then (pop roles)
	      do
	  (cond
	    ((eql :TMA role)
	      ;; expand TMA into separate roles
	      (dolist (pair (reverse value))
		(push (second pair) roles)
		(push (intern (symbol-name (first pair)) :keyword) roles)
		))
	    ((eql :MEMBERS role)
	      (dolist (m value)
	        (format s "    <role:MEMBER rdf:resource=\"#~s\" />~%" m)))
	    ((eql :MODS role)
	      (dolist (m value)
	        (format s "    <role:MOD rdf:resource=\"#~s\" />~%" m)))
	    ((is-trips-variable value)
	      ;; write the role as a resource reference
	      (format s "    <role~s rdf:resource=\"#~s\" />~%" role value))
	    ;; TODO separate out parts of role values like
	    ;; (:* length-unit meter) for :UNIT and (:* possibility may) for
	    ;; :modality
	    (t
	      ;; write the role as a string
	      (format s "    <role~s>~s</role~s>~%" role value role))
	    ))
        (format s "  </rdf:Description>~%")
        ))
    (format s "</rdf:RDF>~%")
    s))

