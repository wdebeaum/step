(in-package :LFEvaluator)

(defun getk (l k) ; aka get-keyword-arg
  "Get the value of the keyword argument in list l whose keyword is k"
  (second (member k l))
  )

(defun remove-keyword-arg (form key)
  "@returns a copy of form without the first occurence of key and its value
   @example (remove-keyword-arg '(:him us :her you hi) :him) -> (:HER YOU HI)
   @author Nate Chambers"
  (cond ((null form) nil)
        ((atom form) (list form))
        ((eq key (first form)) (cddr form))
        (t (cons (first form) (remove-keyword-arg (rest form) key))))
)

(defmacro rpush (item place)
  "Add item onto the end of the list in place (like push, but for the other end of the list)"
  `(setf ,place (nconc ,place (list ,item))))

;; TODO? use binary search instead of linear (and a vector instead of a list)
;; still worst-case linear time due to insertion
(defun find-in-or-add-to-sorted-list (item list &key (before-test #'<) (equal-test #'=) (key #'identity))
  "Tries to find item (or its equivalent according to equal-test) in list
   (sorted according to before-test). If found, the found version of the item is
   returned. If not, the given item is inserted in sorted order.
   
   Returns two values:
   1. The (possibly modified in place) list.
   2. The item (preferably as found in the list, otherwise the given item)."
  (if (consp list)
    (let ((car-key (funcall key (car list)))
          (item-key (funcall key item)))
      (cond
       ((funcall equal-test car-key item-key) ; found an equal item
	(values list (car list)))
       ((funcall before-test car-key item-key) ; not there yet
	(multiple-value-bind (new-list new-item)
	    (find-in-or-add-to-sorted-list item (cdr list)
		:before-test before-test :equal-test equal-test :key key)
	  (rplacd list new-list)
	  (values list new-item)
	  ))
       (t
        ; (car list) is after item, and we didn't find an equal item, so insert
	(values (cons item list) item))
       ))
    ;; list is nil, so make a new one containing only the item
    (values (list item) item)
    ))

(defun nil-pad (lst len)
  "ensure that lst is of length len or longer, by padding it with nils if not"
  (if (< (length lst) len)
    (nconc lst (make-list (- len (length lst)) :initial-element nil))
    lst))

(defun copy-hash-table (orig)
  "Make a new hash table whose test and mappings are the same as orig"
  (let ((cp (make-hash-table :test (hash-table-test orig))))
    (maphash (lambda (k v) (setf (gethash k cp) v)) orig)
    cp))

(defun print-debug (tags &rest format-params)
  "print to stdout iff at least one of the tags matches *debug-tags*.
   Attach a prefix identifying TerminalLearn and the tags that matched.
   If tags is a number, print to stdout if a greater or equal number is among
   *debug-tags*."
; Run the following command to see which tags are in use:
; cat *.lisp |grep -o -P 'print-debug.*?"' |sort |uniq -c
  (cond
    ((numberp tags)
     (let ((debug-level (apply #'max (cons 0 (remove-if-not #'numberp *debug-tags*)))))
       (when (<= tags debug-level)
         (format t "~&LFE ~a: " tags)
	 (apply #'format (cons t format-params))
	 )))
    ((listp tags)
     (let ((common-tags (intersection tags *debug-tags*)))
       (when common-tags
         (format t "~&LFE ~a: " common-tags)
         (apply #'format (cons t format-params))
         )))
    ((member tags *debug-tags*)
     (format t "~&LFE (~a): " tags)
     (apply #'format (cons t format-params))
     )))

;; this should eventually go in src/util/string.lisp next to numeric-stringp
(defun alpha-stringp (str)
  "@returns True if the string is all letters"
  (dotimes (i (length str) t)
    (if (not (alpha-char-p (char str i))) (return nil))))

(defun lists-to-ids (l)
  "Recursively convert the (list of (lists of ...)) node(s) l to a similar structure containing the node IDs in place of the nodes."
  (if (listp l)
    (mapcar #'lists-to-ids l)
    (get-node-id l)
    ))

(defun slots-to-keyword-args (object slot-names)
  "Make a list of keyword arguments corresponding to the given slots in the given object. Arguments are omitted if NIL."
  (mapcan (lambda (slot-name)
            (when (slot-value object slot-name)
              (list (intern (string slot-name) 'keyword)
	            (slot-value object slot-name)
		    )))
          slot-names))

(defun concatenate-function (&rest args)
  "Return the function whose name is the concatenation of the args, or nil if the name isn't bound to a function."
  (let ((fname (intern (apply #'concatenate (cons 'string (mapcar #'string args))))))
    (when (fboundp fname)
      (symbol-function fname))))

(defun packageless-equalp (a b)
  "Like equalp, except it ignores the packages of symbols."
  (cond
   ;; compare symbols' name strings instead of the symbols themselves
   ((and (symbolp a) (symbolp b))
    (string= (symbol-name a) (symbol-name b)))
   ;; recurse on conses
   ((and (consp a) (consp b))
    (and (packageless-equalp (car a) (car b))
         (packageless-equalp (cdr a) (cdr b))
	 ))
   ;; give an error for all other container types
   ;; (I don't feel like implementing them)
   ((or (arrayp a) (arrayp b)
        (hash-table-p a) (hash-table-p b)
	(typep a 'structure-object) (typep b 'structure-object)
	)
    (error "arrays, hashes, and structures are unimplemented in packageless-equalp"))
   ;; for everything else (numbers, characters), revert to equalp
   (t (equalp a b))
   ))

(defvar *word-forms-cache* (make-hash-table))

(defun get-word-forms (w)
  (unless (nth-value 1 (gethash w *word-forms-cache*))
    (setf (gethash w *word-forms-cache*)
          (mapcar #'car (lxm::get-all-word-forms w))))
  (nth-value 0 (gethash w *word-forms-cache*))
  )

(defun words-match-p (a b)
  "Could the words a and b be the same if we ignore morphological variants?
   If a or b is nil, return t only if both are nil."
  (or (string= (symbol-name a) (symbol-name b))
      (and a b
           (or
	       (not (null (member (intern (symbol-name a) 'w)
				  (get-word-forms (intern (symbol-name b) 'w))
				  )))
	       (when (or (find #\- (symbol-name a)) (find #\- (symbol-name b)))
	         (words-match-p
		   (intern (first (split-string (symbol-name a) :on #\-)))
		   (intern (first (split-string (symbol-name b) :on #\-)))
		   ))
	       ))))

