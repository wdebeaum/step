;; These are The Rules for all the conventional speech act forms

(in-package "IM")

(reset-im-rules 'SA-rules)

(mapcar #'(lambda (x) (add-im-rule x 'SA-rules))
 '(
   ;;  Proposing actions
   ;; e.g., I want to buy a computer / i'd like to buy a computer (note: maybe overgenerates on "I'd want to buy a computer")
     ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!c)  
      (ONT::F ?!c (:* ONT::WANT ?www) :formal ?!theme :EXPERIENCER ?!v1 
	:force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE))
      ((? p ONT::PRO ONT::PRO-SET) ?!v1 ?type :PROFORM (? xx W::I W::WE))
      -want-to-proposal>
       (ONT::PROPOSE :who *USER* :to *ME*
		    :what ?!theme
		    :as ONT::GOAL)
       )

   ;; e.g., I need to buy a computer
     ((Ont::speechact ?x ONT::SA_TELL :CONTENT ?!c)  
       (ONT::F ?!c (:* ONT::NECESSITY ?w) :formal ?!theme :neutral ?!v1 :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE))
       ((? a ONT::PRO ONT::PRO-SET) ?!v1 ?type :PROFORM (? xx w::i w::we w::you))
       -necessity-to-proposal>
       (ONT::PROPOSE :who *USER* :to *ME*
		    :what ?!theme
		    :as ONT::GOAL)
       )
     
     ; We/I/you will/are going to buy a computer.
     ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!c)  
      (ONT::F ?!c ?t :AGENT ?!ag :formal ?!theme 
	:modality (? m ONT::GOING-TO ONT::FUTURE))
      ((? p ONT::PRO ONT::PRO-SET) ?!v1 ?type :PROFORM (? xx W::I W::WE w::you))
      -going-to>
       (ONT::PROPOSE :who *USER* :to *ME*
		    :what ?!c
		    :as ONT::GOAL)
       )

     ;; e.g., let's work on buying me a computer
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!c)
       (ONT::F ?!c (:* ?xx W::WORK-ON) :agent ?!agent :formal ?!action)
      (ONT::PRO ?!agent (ONT::SET-OF ONT::PERSON))
      -request-to-work-propose>
      (ONT::PROPOSE :who *USER* :to *ME* ;:id *1
		   :what ?!action
		   :as ONT::GOAL)
      )

 ;; e.g., let me teach/show you how to buy a computer
     ((ONT::SPEECHACT ?V17407 ONT::SA_REQUEST :CONTENT ?!V14992)
      (ONT::F ?!V14992 (:* ONT::ALLOW W::LET) :FORMAL ?!action 
       :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE))
      (ONT::F ?!action ONT::SITUATION-ROOT)
      -let-me-do-x>
      (ONT::PROPOSE :who *USER* :to *ME* ;:id *1
		   :what ?!action
		   :as ONT::GOAL
		   )
      )

     #|
    ;; indirect proposal, "shall i/we do this" 
   ((ONT::SPEECHACT ?v ONT::SA_YN-QUESTION :CONTENT ?!v1)
    (ONT::F ?!v1 ONT::SITUATION-ROOT :force ont::FUTURE)
    -yes-no-proposal>
    (ONT::PROPOSE :who *user* :to *ME* :what ?!v1 :as ONT::GOAL)
    )
     |#

   ;; can you/I... (indirect requests)
   ((ONT::SPEECHACT ?V7187 ONT::SA_YN-QUESTION :CONTENT ?!c)
    (ONT::F ?!c ONT::EVENT-OF-CHANGE ;ONT::EVENT-OF-ACTION  ; can you find a drug...
	    :AGENT ?!V6 :force (? f ONT::ALLOWED ONT::PROHIBITED ONT::FUTURE ONT::FUTURENOT ONT::POSSIBLE ONT::FUTURE))
    ((? z ONT::PRO ONT::PRO-SET) ?!V6 ONT::PERSON :proform (? xx w::ME w::I w::you w::we w::us))
    (?s ?v ?t) ; filler to beat -request-to-identify3c>
      -can-indirect-proposal> .99 ; lower score than the other more specific "can you..." rules, e.g., -can-indirect-request>
      (ONT::PROPOSE :who *USER* :to *ME*
		   :what ?!c
		   ;:as ONT::GOAL
		   )
      )   
   
   ;; indirect question, "are there any trucks available" 
   ((ONT::SPEECHACT ?v ONT::SA_YN-QUESTION :CONTENT ?!v1)
    (ONT::F ?!v1 ONT::EXISTS :neutral ?!n)    
    -yes-no-question>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :as ONT::GOAL)
    )

   #|
   ;; are there any trucks carrying pineapples?
   ;; are there any green trucks?
   ((ONT::SPEECHACT ?v ONT::SA_YN-QUESTION :CONTENT ?!v1)
    (ONT::F ?!v1 ONT::EXISTS :neutral ?!n) 
    (?!spec ?!n ?!t :MODS (?!m))
    
    -yes-no-question-suchthat>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :as ONT::GOAL)
    (?!spec ?!n ?!t :suchthat ?!m)
    )
   |#

   ;; are there any trucks carrying pineapples?
   ;; are there any green trucks?
   ((ONT::SPEECHACT ?v ONT::SA_YN-QUESTION :CONTENT ?!v1)
    (ONT::F ?!v1 ONT::EXISTS :neutral ?!n) 
    (?!spec ?!n ?!t :MODS (?!m))
    (ONT::F ?!m ?!t2)
    -yes-no-question-suchthat>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :suchthat ?!m)
    ;(?!spec ?!n ?!t :suchthat ?!m)
    )

   ;; are there any inhibitors?
   ((ONT::SPEECHACT ?v ONT::SA_YN-QUESTION :CONTENT ?!v1)
    (ONT::F ?!v1 ONT::EXISTS :neutral ?!n) 
    (?!spec ?!n ?!t) ;:suchthat ?!m)
    ;(ONT::F ?!m ?!t2)
    -yes-no-question-suchthat2>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!m)
    ;(?!spec ?!n ?!t :suchthat ?!m)
    )
   
   ;; Do you know any good books?
   ;; Do you know any drugs for BRAF?
   ((ONT::SPEECHACT ?v ONT::SA_YN-QUESTION :CONTENT ?!v1)
    (ONT::F ?!v1 ONT::KNOW :neutral ?!n) 
    (?!spec ?!n ?!t :MODS (?!m))
    (ONT::F ?!m ?!t2)
    -yes-no-question-suchthat-know>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :suchthat ?!m)
    ;(?!spec ?!n ?!t :suchthat ?!m)
    )
   
   ;; 
   
 ;; (can/could/would/will you) help me do X
;; can/could/would you--> :FORCE is ONT::POSSIBLE
;; will you--> :FORCE is ONT::FUTURE
     ((ONT::SPEECHACT ?V7187 ONT::SA_YN-QUESTION :CONTENT ?!V6720)
      (ONT::F ?!V6720 (:* ONT::HELP W::HELP) :FORMAL ?!theme :affected ?!V6742 :AGENT ?!V6618 :force (? f ONT::ALLOWED ONT::PROHIBITED ONT::FUTURE ONT::FUTURENOT ONT::POSSIBLE))  ;; interesting "can you help me": and "can't you help me" are paraphrases!
      (ONT::PRO ?!V6742 (:* ONT::PERSON ont::ME))
      (ONT::PRO ?!V6618 (:* ONT::PERSON ont::YOU))
      -ask-for-help>
      (ONT::PROPOSE :who *USER* :to *ME*
		   :what ?!theme
		   :as ONT::GOAL
		   )
      )

   ;; I'd like to work on X
     ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!c)
      (ONT::F ?!c  (:* (? t ONT::WANT) ?w) :ACTION ?!theme :neutral ?!v1 :force (? f ONT::TRUE ONT::REQUIRED ONT::ALLOWED ONT::FUTURE))
      ((? p ONT::PRO-SET ONT::PRO) ?!v1 ?type :PROFORM (? xx w::I w::WE))
      (ONT::F ?!theme (:* ONT::WORK W::WORK) :formal ?!action)
      -assert-want-to-work-to-propose>
      (ONT::PROPOSE :who *USER* :to *ME*
		   :what ?!action
		   :as ONT::GOAL
		   )
      )
   
     ;; I'll teach you to buy a computer
     
     ((ONT::SPEECHACT ?!V9120 ONT::SA_TELL :CONTENT ?!V8097)
      (ONT::F ?!V8097 ONT::TRANSFER-INFORMATION :formal ?!action :AGENT ?!me
	     :force ?force)
      ((? p ONT::PRO-SET ONT::PRO) ?!me ?type :PROFORM (? xx w::I w::WE))
      -prop-learn-activity1>
      (ONT::PROPOSE :who *USER* :to *ME* :what ?!V8097 :as ONT::GOAL)
      )

   ;; The blocks should/must be red
     
   ((ONT::SPEECHACT ?!V9120 ONT::SA_TELL :CONTENT ?!V8097)
    (ONT::F ?!V8097 ONT::SITUATION-ROOT :modality (:* (? x ONT::SHOULD ONT::MUST) ?lex)  :force ?force)
    -prop-modal-assertion>
   (ONT::PROPOSE :who *USER* :to *ME* :what ?!V8097 :as ONT::MODIFICATION)
   )
     

     ;;  Enumerations
   ;; let's work on this first
     ;; Note: "first" attached is to "let"

     ((ONT::SPEECHACT ?!V1 ONT::SA_REQUEST :content ?!act  )
      (ONT::F ?!seq (:* ONT::SEQUENCE-POSITION ?!indicator))
      (ONT::F ?!act ?type :force ?f :MODS (?!seq))
      -proc-enumerate1>
      (ONT::PROPOSE :who *USER* :to *ME* :what ?!act :enumeration ?!indicator))

 
   ;; otherwise
     ((ONT::SPEECHACT ?V22716 (? sa ONT::SA_TELL ONT::SA_REQUEST) :content ?!v2 )
      (ONT::F ?!v2 ?type :force ?f :mods (?!xxx))      
      (ONT::F ?!xxx ONT::CHOICE-OPTION)
      -otherwise-condition>
      (ONT::PROPOSE :who *USER* :to *ME*
		   :what ?!V2 :as ONT::ALTERNATIVE))



     ;; e.g., Name/List/Tell me/Look up the drugs that... (mod)
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (?!spec ?!n ?!t :mods (?!m))
      (ONT::F ?!m (? !t2 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE)) ; e.g., *not* beautiful or unknown adjectives or ASSOC-WITH (for pertainyms) etc , so that it picks the "that" clause instead of the adjective in, e.g., Look up the large dog that bit the cat 
      -request-to-identify>
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :suchthat ?!m)
      )

     ;; e.g., Show/Look up the evidence/information that... (no :suchthat) (formal)
    ;; e.g., Show/Look up the evidence/information.     
     ;; e.g., Show/Look up the evidence/information we generated. (mod)     
   ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
    (ONT::F ?!theme (? t3 ONT::SHOW ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
    ;(?!spec ?!n (? t2 ONT::INFORMATION) :formal ?!X) ; e.g., evidence that, information, data 
    (?!spec ?!n (? t2 ont::information-function-object ont::mental-construction))
    -request-show-evidence-to-identify>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!X)
    )

   ;; e.g., Give me the evidence/information/plan/definition that... (no :suchthat) (formal/mod/none)
   ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
    (ONT::F ?!theme (? t3 ONT::GIVING) :AFFECTED ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
    ;(?!spec ?!n (? t2 ONT::INFORMATION) :formal ?!X) ; e.g., evidence that, information, data 
    (?!spec ?!n (? t2 ont::information-function-object ont::mental-construction))
    -request-give-evidence-to-identify>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!X)
    )

     ;  Name/List/Tell me/Look up the expensive drugs (neutral) (no :suchthat)
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (?!spec ?!n ?!t :mods (?!m))
      (ONT::F ?!m (? t2 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE)) ; e.g., beautiful or unknown adjectives, without the "that" clause
      -request-to-identify-adj> 0.98 ; prefer -request-to-identify> and -request-to-identify-b>
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!m)
      )

     ;  Name/List/Tell me about/Look up the drug (neutral) (no :suchthat)
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :neutral ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (?!spec ?!n ?!t)
      -request-to-identify-simple> 
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!n)
      )
     
     ;  Name/List/Tell me about/Look up the activation of the drug (formal) (no :suchthat)
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :FORMAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (?!spec ?!n ?!t)
      -request-to-identify-simple2> 
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!n)
      )

     ;; e.g., Name/List/Tell me/Look up the drugs regulated by... (suchthat)
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (?!spec ?!n ?!t :suchthat ?!m)
      (ONT::F ?!m (? !t2 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE)) ; e.g., *not* beautiful or unknown adjectives
      -request-to-identify-b>
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :suchthat ?!m)
      )

   ;;  Tell me about <event>  ==>  what is ?   
   ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
    (ONT::F ?!theme (? t3 ONT::TELL) :MOD ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
    (?!spec ?!n (? t2 ONT::ASSOCIATED-INFORMATION) :ground ?!X) ; e.g., about the evidence/ the explosion/ the gene, ... 
    -request-tell-about>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!X)
    )
   

     ;; e.g., Tell me/Let me know if there is/are proteins that activate...
     ;; e.g., I want to know if there is an orange block (SA_TELL)
     ((ONT::SPEECHACT ?x (? sa ONT::SA_REQUEST ONT::SA_TELL) :CONTENT ?!theme)
      (ONT::F ?!theme (? t3 ONT::TELL ONT::ALLOW ONT::WANT ONT::LOOK-UP) :FORMAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (ONT::F ?!n3 ONT::CLAUSE-CONDITION :CONTENT ?!c) ; note n3, not n
      (ONT::F ?!c ONT::EXISTS :NEUTRAL ?!n2)
      ;(ONT::PRO ?!p ONT::EXPLETIVE :PROFORM w::there) ; this is not put through the match
      (?!spec2 ?!n2 ?!t2 :MODS (?!m))
      (ONT::F ?!m (? !t4 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE))
      -request-to-identify3>
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n2 :suchthat ?!m)
      )

     ;; e.g., Are any of those.../Do any... 
     ((ONT::SPEECHACT ?x (? sa ONT::SA_YN-QUESTION) :CONTENT ?!theme)
      ;(?reln ?!theme ?type) ; beats -ynq1>
      (?reln ?!theme ?type :NOROLE -) ; beats -ynq1> ; excludes "are there any..."
      (?reln1 ?!t ONT::REFERENTIAL-SEM :QUAN ONT::ANY)
      -request-to-identify3c>
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!t :suchthat ?!theme)
      )
     
   ;; e.g., Tell me/Let me know whether the block is red.
   ((ONT::SPEECHACT ?x (? sa ONT::SA_REQUEST ONT::SA_TELL) :CONTENT ?!theme)
    (ONT::F ?!theme (? t3 ONT::TELL ONT::ALLOW ONT::WANT ONT::LOOK-UP) :FORMAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
    (ONT::F ?!n3 ONT::CLAUSE-CONDITION :CONTENT ?!c)
    ;;(ONT::F ?!c ONT::EXISTS :NEUTRAL ?!n2)
					;(ONT::PRO ?!p ONT::EXPLETIVE :PROFORM w::there) ; this is not put through the match
    ;;(?!spec2 ?!n2 ?!t2 :MODS (?!m))
    ;;(ONT::F ?!m (? !t4 ONT::DOMAIN-PROPERTY ONT::MODIFIER))
    -request-to-identify3b>
    (ONT::ASK-IF :who *user* :to *ME* :what ?!c)
    )

   ;; e.g., I want to learn/find out how...
   ((ONT::SPEECHACT ?x (? sa ONT::SA_REQUEST ONT::SA_TELL) :CONTENT ?!theme)
    (ONT::F ?!theme (? t3 ONT::WANT ) :FORMAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE))
    (ONT::F ?!n (? t4 ONT::COGITATION) :FORMAL ?!wh-var)
    ((? spec ONT::WH-TERM ONT::WH-TERM-SET) ?!wh-var ONT::METHOD :suchthat ?!st)
    -request-to-identify-which-b> 
    (ONT::PROPOSE :who *user* :to *ME* :what ?!n :as ONT::GOAL)
    )   
   
   ;; e.g., Tell me/Let me know which/what blocks are red.
   ((ONT::SPEECHACT ?x (? sa ONT::SA_REQUEST ONT::SA_TELL) :CONTENT ?!theme)
    (ONT::F ?!theme (? t3 ONT::TELL ONT::ALLOW ONT::WANT ONT::LOOK-UP) :FORMAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE))
    ((? spec ONT::WH-TERM ONT::WH-TERM-SET) ?!wh-var ?!wh-type :suchthat ?!st)
    -request-to-identify-which>
    (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!wh-var :suchthat ?!st)
    )   
   
     ;; I want to know (about)...
     ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!theme )
      (ONT::F ?!theme (? t3 ONT::WANT) :FORMAL ?!n :force (? f ONT::TRUE ONT::ALLOWED ONT::FUTURE ONT::POSSIBLE)) 
      (ONT::F ?!n ONT::KNOW :NEUTRAL ?!n2) ; note n3, not n
      (?!spec2 ?!n2 ?!t2 :MODS (?!m))
      (ONT::F ?!m (? !t4 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE))
      -request-to-identify4>
      (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n2 :suchthat ?!m)
      )

     ;; can you name... (indirect requests)
     ((ONT::SPEECHACT ?V7187 ONT::SA_YN-QUESTION :CONTENT ?!c)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n 
	      :AGENT ?!V6 :force (? f ONT::ALLOWED ONT::PROHIBITED ONT::FUTURE ONT::FUTURENOT ONT::POSSIBLE ONT::FUTURE)) 
     (?!spec ?!n ?!t :mods (?!m))
     (ONT::F ?!m (? !t2 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE))
     ((? z ONT::PRO) ?!V6 ONT::PERSON :proform (? xx w::you))    
     -can-indirect-yes-no>
     (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :suchthat ?!m)
      )

   ;; can you tell me whether ... (indirect requests)
     ((ONT::SPEECHACT ?V7187 ONT::SA_YN-QUESTION :CONTENT ?!c)
      (ONT::F ?!theme (? t3 ONT::TELL ONT::LOOK-UP) :FORMAL ?!n 
	      :AGENT ?!V6 :force (? f ONT::ALLOWED ONT::PROHIBITED ONT::FUTURE ONT::FUTURENOT ONT::POSSIBLE ONT::FUTURE)) 
     (?!spec ?!n ONT::CLAUSE-CONDITION :content ?!m)
     ((? z ONT::PRO) ?!V6 ONT::PERSON :proform (? xx w::you))    
     -can-indirect-request>
     (ONT::ASK-IF :who *user* :to *ME* :what ?!m)
      )

     ;; can you name... (indirect requests)
     ((ONT::SPEECHACT ?V7187 ONT::SA_YN-QUESTION :CONTENT ?!c)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n 
	      :AGENT ?!V6 :force (? f ONT::ALLOWED ONT::PROHIBITED ONT::FUTURE ONT::FUTURENOT ONT::POSSIBLE ONT::FUTURE)) 
     (?!spec ?!n ?!t :suchthat ?!m)
     (ONT::F ?!m (? !t2 ONT::DOMAIN-PROPERTY ONT::MODIFIER ONT::PREDICATE))
     ((? z ONT::PRO) ?!V6 ONT::PERSON :proform (? xx w::you))    
     -can-indirect-request-b>
     (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n :suchthat ?!m)
      )

     ;; can you name the drug (indirect requests) (no :suchthat)
     ((ONT::SPEECHACT ?V7187 ONT::SA_YN-QUESTION :CONTENT ?!c)
      (ONT::F ?!theme (? t3 ONT::NAMING ONT::LISTING ONT::TELL ONT::LOOK-UP) :NEUTRAL ?!n 
	      :AGENT ?!V6 :force (? f ONT::ALLOWED ONT::PROHIBITED ONT::FUTURE ONT::FUTURENOT ONT::POSSIBLE ONT::FUTURE)) 
     (?!spec ?!n ?!t)
     ((? z ONT::PRO) ?!V6 ONT::PERSON :proform (? xx w::you))    
     -can-indirect-request-b2>
     (ONT::ASK-WHAT-IS :who *user* :to *ME* :what ?!n) ;:suchthat ?!m)
      )

     
     ;; e.g., buy me a computer
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme)
      (ONT::F ?!theme ?type :force ?f)
      -request-to-propose>
      (ONT::REQUEST :who *USER* :to *ME* :what ?!theme)
      )

      ;; e.g., Ivan, buy me a computer
     ((ONT::SPEECHACT ?x ONT::SA_REQUEST :CONTENT ?!theme :vocative ?!v)
      (ONT::F ?!theme ?type :force ?f)
      -request-to-propose-voc>
      (ONT::REQUEST :who *USER* :to ?!v :what ?!theme)
      )

     ;; e.g., You/We buy me a computer
     ;; I can't move this block.
     ;; Note: "You/We can/can't move this block." "I can move this block" are taken as ONT::REQUEST (-request-to-propose-with-agent>)
     ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!theme)
      (ONT::F ?!theme (? type ONT::EVENT-OF-ACTION) :AGENT ?!ag :force ONT::IMPOSSIBLE)  ; restrict the ?type to exclude, e.g., "You are silly"
      ((? p ONT::PRO-SET ONT::PRO) ?!ag ?t2 :PROFORM (? xx w::I))
      -request-to-propose-with-agent-2> 1.01
      (ONT::TELL :who *USER* :to *ME* :what ?!theme)
      )

     ;; e.g., You/We buy me a computer
     ;; I'll/can move this block.
     ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!theme)
      (ONT::F ?!theme (? type ONT::EVENT-OF-ACTION) :AGENT ?!ag :force ?f)  ; restrict the ?type to exclude, e.g., "You are silly"
      ((? p ONT::PRO-SET ONT::PRO) ?!ag ?t2 :PROFORM (? xx w::I w::WE w::you))
      -request-to-propose-with-agent>
      (ONT::REQUEST :who *USER* :to *ME* :what ?!theme)
      )
  
   ;; basic inform acts  - default for tells if no other matches
   ((ONT::SPEECHACT ?x ONT::SA_TELL :CONTENT ?!c)
    (ONT::F ?!c ?type)
    -inform> .98   
    (ONT::TELL :who *USER* :to *ME* :what ?!c)
    )

   ;; EXPLICIT ELLIPSIS RULESact interpretation depends on discourse context

   ;; see rule as an answers to a question in generic-Q-model rules
   ;; ellipsis - followup after questions or proposals

   ;; e.g., How about from Atlanta?
   #|
   ((ONT::SPEECHACT ?!xx ONT::SA_REQUEST-COMMENT :CONTENT ?!v)
   --ellipsis1>
   (ONT::ELLIPSIS :who *USER* :to *ME* :what ?!v));; :context ?context :prior-index ?index))
   |#

   ((ONT::SPEECHACT ?!xx ONT::SA_REQUEST-COMMENT :CONTENT ?!v)
    -request-comment>
    (ONT::REQUEST-COMMENT :who *USER* :to *ME* :what ?!v))

   ;; how about you do it  -- if the argument is a sentence we make it a propose
   ((ONT::SPEECHACT ?!xx ONT::SA_REQUEST-COMMENT :CONTENT ?!v)
    (ONT::F ?!v ONT::EVENT-OF-ACTION)
    -request-comment-as-propose>
    (ONT::PROPOSE :who *USER* :to *ME* :what ?!v))
   
   ;; e.g., Fill in the author field.   And the title field.
   ((ONT::SPEECHACT ?!xx ONT::SA_IDENTIFY :CONTENT ?!v :mods (?!m))
    (ONT::F ?!m ONT::CONJUNCT)
    -ellipsis2>
    (ONT::ELLIPSIS :who *USER* :to *ME* :what ?!v));; :context ?context :prior-index ?index))
      
   ;;==============================================================
      ;; Corrections

      

      ;;==============================================================
      ;;  QUESTIONS
      ;;   Questions go to the ASK act, and the :what argument depends on the question type
      ;;       Explicit role query, e.g., what is the budget
      
      ;; WH Questions 
      ;;   e.g. what is the budget

      #|
      ; This rule might not fire any more.  "What is the budget?" is matched by -roleQ1-rev
      ((ONT::SPEECHACT ?!a ONT::SA_WH-QUESTION :FOCUS ?!ff :CONTENT ?!rr)
       (ONT::WH-TERM ?!ff ?foc-type)
       (ONT::F ?!rr (? xxx ONT::IN-RELATION ONT::BE) :neutral ?!ff :neutral1 ?!dd)
       -roleQ1>
       (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!dd :aspect ?foc-type)
       )

      ;;  The budget is what?
      ((ONT::SPEECHACT ?!a ONT::SA_WH-QUESTION :FOCUS ?!ff :CONTENT ?!rr)
       (ONT::WH-TERM ?!ff ?foc-type)
       (ONT::F ?!rr (? xxx ONT::IN-RELATION ONT::BE)  :neutral ?!dd :neutral1 ?!ff)
       -roleQ1-rev>
       (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!dd :aspect ?foc-type)
       )
      |#

   #|
      ;;  What next?
      ((ONT::SPEECHACT ?!a ONT::SA_WH-QUESTION :FOCUS ?!ff :CONTENT ?!rr :MOD ?!m1)
       (ONT::WH-TERM ?!ff ?foc-type)
       (ONT::F ?!m1 ont::SEQUENCE-POSITION)
       -Q-next>
       (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!ff)
       )
   |#  
   
   ;; e.g., What budget are we using?
   ((ONT::SPEECHACT ?!a ONT::SA_WH-QUESTION :FOCUS ?!ff :CONTENT ?!rr)
       ;((? spec ONT::WH-TERM ONT::WH-TERM-SET) ?!ff ?!type)
       -standardQ>
       (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!ff :suchthat ?!rr)
       )

      ; what next?
      ; to get around that using standardQ would lose the "next" that is on the speechact
      ((ONT::SPEECHACT ?!V1 ?act :content ?!c :mods (?!seq))
       (?spec ?!c  (:* ONT::REFERENTIAL-SEM W::WHAT) :PROFORM W::WHAT)
       (ONT::F ?!seq (:* ONT::SEQUENCE-POSITION w::next))
      -what-next>
       (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!c :suchthat ?!V1 )
       (ONT::F ?!V1 (:* ONT::HAVE-PROPERTY w::BE) :NEUTRAL ?!c :FORMAL ?!seq)
       (ONT::F ?!seq (:* ONT::SEQUENCE-val-next w::next))
      )
   
      
   ;; conditional questions: "What happens to the price of wheat in South Sudan if we cut the amount of fertilizer?"

     ((ONT::SPEECHACT ?!a ONT::SA_WH-QUESTION :FOCUS ?!ff :CONTENT ?!rr)
      (ONT::WH-TERM ?!ff ?!type)
      (ONT::F ?!rr ONT::SITUATION-ROOT :condition ?!cond-op)
      (ONT::F ?!cond-op ONT::POS-CONDITION :GROUND ?!test)
      ;(ONT::F ?!test ONT::EVENT-OF-CAUSATION)
      (ONT::F ?!test ONT::EVENT-OF-CHANGE)  ; "activate" is not EVENT-OF-CAUSATION
      -ask-wh-condition>
      (ONT::ASK-CONDITIONAL-WHAT-IS :who *USER* :to *ME* :what ?!ff :suchthat ?!rr :condition ?!test)
      )
      
   ;; conditional questions: is ERK activated if we add Serafinabib?

     ((ONT::SPEECHACT ?!a ONT::SA_YN-QUESTION :CONTENT ?!rr)
      (ONT::F ?!rr ONT::SITUATION-ROOT :condition ?!cond-op)
      (ONT::F ?!cond-op ONT::POS-CONDITION :GROUND ?!test)
      ;(ONT::F ?!test ONT::EVENT-OF-CAUSATION)
      (ONT::F ?!test ONT::EVENT-OF-CHANGE)  ; "activate" is not EVENT-OF-CAUSATION      -ynq-condition>
      -ynq-condition>
      (ONT::ASK-CONDITIONAL-IF :who *USER* :to *ME* :what ?!rr :condition ?!test)
      )

   ;; conditional questions: is ERK activated if we add Serafinabib?

     ((ONT::SPEECHACT ?!a ONT::SA_YN-QUESTION :CONTENT ?!rr)
      (ONT::F ?!rr ONT::SITUATION-ROOT :condition ?!cond-op)
      (ONT::F ?!cond-op ONT::POS-CONDITION :VAL ?!test)
      (ONT::F ?!test ONT::EVENT-OF-CAUSATION)
      -ynq-condition-old-with-val>
      (ONT::ASK-CONDITIONAL-IF :who *USER* :to *ME* :what ?!rr :condition ?!test)
      )
   
   ;; is the box on the table?, Is the box this?
     ((ONT::SPEECHACT ?!a ONT::SA_YN-QUESTION :CONTENT ?!rr)
      (ONT::F ?!rr ?type)
      -ynq> 1
      (ONT::ASK-IF :who *USER* :to *ME* :what ?!rr)
      )

   ;; The dog?
     ((ONT::SPEECHACT ?!a ONT::SA_YN-QUESTION :CONTENT ?!rr)
      (?sp ?!rr ?type)
      -ynq1> 0.98 ; prefer -ynq1b>
      (ONT::ASK-IF :who *USER* :to *ME* :what ?!rr)
      )

     ;; Any dog? (no :suchthat)
     ;; Any inhibitors? (with :suchthat)
     ((ONT::SPEECHACT ?!a ONT::SA_YN-QUESTION :CONTENT ?!rr)
      (?sp ?!rr ?type :QUAN ONT::ANY :SUCHTHAT ?st) ; :suchthat optional
      -ynq1b> 
      (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!rr :suchthat ?st)
      )

     ; Did you eat anything?
     ((ONT::SPEECHACT ?!a ONT::SA_YN-QUESTION :CONTENT ?!rr)
      (ONT::F ?!rr ?type)
      (?spec ?!t ONT::REFERENTIAL-SEM :PROFORM w::anything)
      -ynq2> 
      (ONT::ASK-WHAT-IS :who *USER* :to *ME* :what ?!t :suchthat ?!rr)
      )

     
   #||   ;; I think this is unmotivated given we have -inform>

      ;;==========================================
      ;; REPORTS 
      ;; REPORTS on states of existence e.g., "I'll be at the office soon", "The box is red"
     ;; but "This is the box" is matched by the rule -inform> (Should it?)
     
      ;; general reports - lowest priority interp as it only matches the speech act
      ((ONT::SPEECHACT ?!x ONT::SA_TELL :CONTENT ?!c)
       (ONT::F ?!c ONT::HAVE-PROPERTY)
       -report> 
       (ONT::REPORT :who *USER* :to *ME* :what ?!c))||#
     
   ;;  bare gerunds also appear as IDENTIFY e.g., "getting up"
    ((ONT::SPEECHACT ?a ONT::SA_IDENTIFY :CONTENT ?!vv)
     ((? x ont::BARE ont::F) ?!vv (? type ont::situation-root))
     -event-frag1>
    (ONT::REPORT :who *USER* :to *ME* :what ?!vv)
    )

   ;; General rule for interpreting NP utts (usually we have more specific rules from context e.g., a question)
   ;; This has lower priority so we will prefer -frag-none1> and other answers
   ((ONT::SPEECHACT ?!a ONT::SA_IDENTIFY :CONTENT ?!vv)
    ((? x ont::THE ont::THE-SET ont::A ont::INDEF-SET ont::PRO ont::PRO-SET ONT::QUANTIFIER ONT::SM ONT::BARE) ?!vv ?type)
    -np-answer> 0.98
    (ONT::IDENTIFY :who *USER* :to *ME* :what ?!vv)
    )

   ; I mean the dog
   ((ONT::SPEECHACT ?!a ONT::SA_TELL :CONTENT ?!vv)
    (ONT::F ?!vv ONT::INTENTION :FORMAL ?!f)
    ((? x ont::THE ont::THE-SET ont::A ont::INDEF-SET ont::PRO ont::PRO-SET ONT::QUANTIFIER ONT::SM ONT::BARE) ?!f ?!type)
    -np-answer-I-mean> 
    (ONT::IDENTIFY :who *USER* :to *ME* :what ?!f)
    )
   
   ;; FRAGMENTS 

   #||
   ;;  fragments that only work as answers:  e.g., somewhat, really
   (;;(ONT::SPEECHACT ?a ONT::SA_FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv (? tt ONT::DEGREE-MODIFIER ONT::GRADE-MODIFIER ONT::QMODIFIER ONT::DEGREE-OF-BELIEF ONT::LIKELIHOOD))
    -frag-degree> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv :force ONT::TRUE)
    )

    ;;  e.g., not really
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv (? tt ONT::DEGREE-MODIFIER ONT::GRADE-MODIFIER  ONT::DEGREE-OF-BELIEF ONT::LIKELIHOOD ONT::QMODIFIER) :MODS (?!mm))
    (ONT::F ?!mm ONT::NEG)
    -frag-degree-not> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv :force ONT::FALSE)
    )
||#
   ;; e.g., action fragment, used if nothing better is found!

   ((ONT::F ?!v ?type)
    -event-frag> .95
    (ONT::FRAGMENT :who *USER* :to *ME* :what ?!v))
   
    
   ;; e.g., none, any, any dog
   ((ONT::SPEECHACT ?!a ONT::SA_IDENTIFY :CONTENT ?!vv)
    (ONT::A ?!vv ONT::ANY-SEM :QUAN (? x ONT::NONE ONT::ANY))
    -frag-none1>
    (Ont::answer :who *USER* :to *ME* :what ?!vv)
    )

   ;; ??
   ((ONT::SPEECHACT ?a ONT::SA_IDENTIFY :CONTENT ?!vv)
    (ONT::A ?!vv ?s :SIZE ?!size)
    (ONT::QUANTITY-TERM ?!size ONT::NUMBER :VALUE (? x ont::NONE ONT::ANY))
    -frag-none2>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv)
    )

   ((?spec ?!v ONT::NUMBER)
    -frag-number> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :what ?!v))

   #||
   ;; fragment predicates, e.g., severe, very sad, ...
   (;;(ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv ONT::PROPERTY-VAL :figure -)
    -frag-> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv)
    )

   ;; fragments specifying a condition: e.g., in the morning 
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv (? typ ONT::TIME-SPAN-REL))
     -frag-time-condition->
     (ONT::ANSWER :who *USER* :to *ME* :condition ?!vv)
     )

   ;;  fragment adverbials (e.g., locations, in my ankles, above the stove)
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv (? typ ONT::SPATIAL-LOC ONT::position-reln ont::path) :ground ?gd)
    (?spec ?gd ?gd-type)
    -frag-location-path-> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv)
    )

   ||#
   
   ;; e.g., when I climb the stairs
    ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :content ?!cc)
     (ONT::F ?!cc (:* ONT::EVENT-TIME-REL W::WHEN) :FIGURE ?!x)
     (ONT::IMPRO ?!x ?y)
     -explicit-condition-> 
     (ONT::ANSWER :who *USER* :to *ME* :condition (when ?!x))
     )

   ;; e.g., If I am running, 
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :content ?!vv)
    (ONT::F ?!vv (:* ONT::POS-CONDITION W::IF) :FIGURE ?!x :GROUND ?!val)
    (ONT::IMPRO ?!x ?y)
    -explicit-condition1-> 
    (ONT::ANSWER :who *USER* :to *ME* :condition (if ?!val))
    )

   ;;  genersl rules to replace many specific instances
   ;; e.g., sometimes, in the house, 
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv (? pp ONT::PROPERTY-VAL ONT::PREDICATE ONT::POSITION-RELN))
    -frag-property> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv)
    )
   #||
    ;; not needed as negation is handled in FORCE computation
    ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
     (ONT::F ?!vv (? pp ONT::PROPERTY-VAL ONT::PREDICATE ONT::POSITION-RELN) :mod ?!n)
     (ONT::F ?!n ONT::NEG)
    -frag-not-property> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :content ?!vv)
     )
   
   
   ;; e.g., sometimes, occasionally, never
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv (? t ONT::FREQUENCY ONT::FREQUENCY-VAL))
    -frag-frequency> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :content ?!vv)
    )

   ;; e.g., not often
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv ONT::FREQUENCY :mod ?!n)
    (ONT::F ?!n ONT::NEG)
    -frag-not-frequency> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :frequency ?!vv :force ONT::FALSE)
    )

   ;; e.g., not today
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!vv)
    (ONT::F ?!vv ONT::EVENT-TIME-REL :mod ?!n)
    (ONT::F ?!n ONT::NEG)
    -frag-not-time-loc> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :time-loc ?!vv :force ONT::FALSE)
    )
   ||#
   
   ;; e.g., sometimes when I climb the stairs
   ((ONT::SPEECHACT ?a ONT::SA_CONDITION :condition ?!vv :content ?!v :MODS (?!v1))
    (ONT::F ?!v1 (? xx ONT::FREQUENCY ONT::RESTRICTION))
    -frag-frequency-condition>
    (ONT::ANSWER :who *USER* :to *ME* :frequency ?!v1 :condition ?!vv :what ?!v)
    )

   ;; e.g., never/often in the morning
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT :CONTENT ?!v1 :MODS (?!v2))
    (ONT::F ?!v1  (? xx ONT::FREQUENCY ONT::RESTRICTION))
    (ONT::F ?!v2 ONT::TIME-SPAN-REL)
    -frag-frequency-implicit-condition> 0.98
    (ONT::ANSWER :who *USER* :to *ME* :frequency ?!v1 :condition ?!v2)
    )
   
   ;;  Evaluations, e.g., good, fine, ...
   ((ONT::SPEECHACT ?!a ONT::SA_EVALUATE :CONTENT ?!vv)
    -evaluation>
;    (ONT::EVALUATE :who *USER* :to *ME* :what ?!vv)
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv)
    )

   ;;  Evaluations, e.g., not too good/bad
   ((ONT::SPEECHACT ?!a ONT::SA_EVALUATE :CONTENT ?!vv)
    (ONT::F ?!vv ?type :DEGREE ?!mod)
    (ONT::F ?!mod ONT::DEGREE-MODIFIER)
    -evaluation-mods>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!vv)
    )
#||
   ;;  MANNER FRAGMENTS
   ;; E.G., pretty well
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT  :CONTENT ?!c)
    (ONT::F ?!c ONT::MANNER  :MOD ?!mod)
    (ONT::F ?!mod ONT::DEGREE-MODIFIER)
    -degree-manner-mod> 0.98
     (ONT::ANSWER :who *USER* :to *ME* :what ?!c)
    )

   ;; well
   ((ONT::SPEECHACT ?a ONT::SA_PRED-FRAGMENT  :CONTENT ?!c)
    (ONT::F ?!c ONT::MANNER)
    -degree-manner> 0.98
     (ONT::ANSWER :who *USER* :to *ME* :what ?!c)
    )
||#
   ;;===========================================
   ;;  RULES that use Problem solving verbs: e.g., work, teach, correct, ...
   ;;
      
        
    
     ;; have Alex pan left/get Alex to pan left
     ((ONT::SPEECHACT ?!V14482 (? sa ONT::SA_REQUEST ONT::SA_TELL) :CONTENT ?!V13852)
      (ONT::F ?!V13852 ONT::MAKE-IT-SO :FORMAL ?!act :AGENT ?!causer :affected ?!agt :force ?force)
      -have-X-do-Y>
      (ONT::REQUEST :who *USER* :to ?!agt
		   :what ?!act))
		   
    
      
         
     ;;===============================================
     ;;  Conventional Acts

     
      ((ONT::SPEECHACT ?!x  ONT::SA_GREET :content ?!y)
       -greet>
       (ONT::GREET :who *USER* :to *ME* :content ?!y)
       )
      
   ;; conventional prompts e.g., hello?  
   ((ONT::SPEECHACT ?!x ONT::SA_PROMPT-FOR :content ?!y)
       -prompt>
       (ONT::PROMPT :who *USER* :to *ME* :content ?!y)
    )
   
   ;; this may not work any more
      ;; OK, alright
      ((ONT::SPEECHACT ?!x ONT::SA_CONFIRM)
       -ack1>
       (ONT::ACK :who *USER* :to *ME*)
      )

      ;;  e.g., "goodbye."  (Note: "goodbye" without punctuation gives SA_IDENTIFY)
      ((ONT::SPEECHACT ?!x ONT::SA_CLOSE :content ?V1)
       -close>
       (ONT::CLOSE :who *user* :to *me*  :what ?V1))
      
      ;; do not work: OK, you're welcome
      ;; works: thanks! 
  
      ((ONT::SPEECHACT ?!x (? act ONT::SA_ACK ONT::SA_THANK ONT::SA_WELCOME))
      -ack2>
       ((? act ONT::SA_ACK ONT::SA_THANK ONT::SA_WELCOME)  :who *USER* :to *ME*)
      )

      #|
   ;; extract discourse markers out as their own act if not otherwise handled
      ;; Then take out the garbage.
     ((ONT::SPEECHACT ?!V1 ?act :mods (?!seq))
      (ONT::F ?!seq (:* ONT::SEQUENCE-POSITION ?!indicator))
      -discourse-sequence-marker>
      (ONT::manage-conversation :signal ?!indicator))
      |#

   ;; this rule should only work for questions about how to do this, or what objects we should use for a task, etc.
   ((ONT::SPEECHACT ?!V10966 ONT::SA_REQUEST :CONTENT ?!V10811)
    (ONT::F ?!V10811 (:* ONT::USE W::USE) :affected ?!vv)
    (CALL (Match-to-QUERY-FROM-DISCOURSE ?!vv ?!new))
    -suggest-use-answer>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!new))
	 
   ((ONT::SPEECHACT ?!a ONT::SA_IDENTIFY :CONTENT ?!rr)
    (?spec ?!rr (ONT::SET-OF ?type) :SIZE ?!n)
    (CALL (Match-to-QUERY-FROM-DISCOURSE ?!n ?!new))
    -generic-question-number-mentioned>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!new)
    )
#|
   ((ONT::SPEECHACT ?a ONT::SA_IDENTIFY :CONTENT ?!rr)
    (?spec ?!rr ONT::REFERENTIAL-SEM :NUMBER ?!n)
;    (CALL (Match-to-QUERY-FROM-DISCOURSE ?!n ?!new))
    -generic-question-number-mentioned2>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!rr)
    )

   ((ONT::SPEECHACT ?a ONT::SA_IDENTIFY :CONTENT ?!rr)
    (?spec ?!rr ONT::NUMBER :VALUE ?!n)
;    (CALL (Match-to-QUERY-FROM-DISCOURSE ?!n ?!new))
    -generic-question-number-mentioned2a>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!rr)
    )

   ; none
   ((ONT::SPEECHACT ?a ONT::SA_IDENTIFY :CONTENT ?!rr)
    (ONT::INDEF-SET ?x ?t :SIZE (? n ONT::NONE ONT::A-FEW))
;    (CALL (Match-to-QUERY-FROM-DISCOURSE ?!n ?!new))
    -generic-question-number-mentioned3>
    (ONT::ANSWER :who *USER* :to *ME* :what ?!rr)
    )
|#
   ))
  



;; These rules are used to extract out the information we need to generate
;;   expectations from questions that the system asks.

(mapcar #'(laMbda (x) (add-im-rule x 'q-expect-generation))

  ;;  This handles Q's like "what is the budget", "what is its weight"
  '(
   ((ONT::F ?!xx ONT::IN-RELATION :neutral1 ?!q-term :neutral ?!wh-term)
    ((? spec ONT::WH-TERM ONT::WH-TERM-SET) ?!wh-term ?any)
    (ONT::THE ?!q-TERM ONT::ABSTRACT-FUNCTION)
    -Q-FUNCTION-VALUE>
    (Q-FUNCTION-VALUE ?q-term))

   ))

;; Accept/REJECT RESPONSES

(mapcar #'(lambda (x) (add-im-rule x 'SA-rules))
	;; rules for accepting or rejecting proposals
	'(

	  #|
	  ((ONT::SPEECHACT ?!vv ONT::SA_RESPONSE :content ((? x ont::POS ont::UNSURE-POS) :content ?!cc))
	   -gen-proposal-rule1>
	   (ONT::ACCEPT :who *USER* :to *ME*))

	   ((ONT::SPEECHACT ?!vv ONT::SA_RESPONSE :content ((? x ont::NEG ont::UNSURE-NEG) :content ?!cc))
	    -gen-proposal-rule2>
	    (ONT::REJECT :who *USER* :to *ME*))
	  |#

	  ;;  yes, no, I don't think so
	  (;(ONT::SPEECHACT ?!vv ONT::SA_RESPONSE :content (?!x :content ?!cc))
	   (ONT::SPEECHACT ?!vv ONT::SA_RESPONSE :content ?!x)
	   -YNQ-response-rule1>
	   (ONT::ANSWER :who *USER* :to *ME* :what ?!x))

	  ;; I do/I will
	  ((ONT::SPEECHACT ?!vv ONT::SA_TELL :content ?!x)
	   ;(ONT::F ?!x ONT::ELLIPSIS :neutral ?!i :force (? f ONT::TRUE ONT::FUTURE))
	   (ONT::F ?!x ONT::ELLIPSIS :neutral ?!i :NEGATION -)
	   (ONT::PRO ?!i ONT::PERSON :proform w::I)
	   -I-do-response-rule>
	   ;(ONT::ANSWER :who *USER* :to *ME* :what ont::POS))
	   (ONT::ANSWER :who *USER* :to *ME* :what ?!x))

	  ;; I don't/I won't
	  ((ONT::SPEECHACT ?!vv ONT::SA_TELL :content ?!x)
	   ;(ONT::F ?!x ONT::ELLIPSIS :neutral ?!i :force (? f ONT::FALSE ONT::FUTURENOT))
	   (ONT::F ?!x ONT::ELLIPSIS :neutral ?!i :NEGATION +)
	   (ONT::PRO ?!i ONT::PERSON :proform w::I)
	   -I-dont-response-rule>
	   ;(ONT::ANSWER :who *USER* :to *ME* :what ont::NEG))
	   (ONT::ANSWER :who *USER* :to *ME* :what ?!x))

	  ;; I'm not sure
	  ((ONT::SPEECHACT ?!x ONT::SA_TELL :CONTENT ?!c)
	   (ONT::F ?!c (:* ONT::HAVE-PROPERTY W::BE) :PROPERTY ?!p  :force ONT::FALSE)
	   (ONT::PRO ?!i (:* ONT::PERSON W::I) :PROFORM w::I)
	   (ONT::F ?!p (:* ONT::CONFIDENCE-VAL W::SURE) :FIGURE ?!i)
	   -unsure->
	    (ONT::ANSWER :who *USER* :to *ME* :what ONT::UNSURE-NEG))

	  ;; I'm trying to
	  ((ONT::SPEECHACT ?!vv ONT::SA_TELL :content ?!x)
	   (ONT::F ?!x ONT::TRY :agent ?!i :force ONT::TRUE)
	   (ONT::PRO ?!i ONT::PERSON :proform w::I)
	   -am-trying>
	   (ONT::ANSWER :who *USER* :to *ME* :frequency ONT::SOMETIMES))

	  ((ONT::SPEECHACT ?!vv ONT::SA_CONFIRM)
	    ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	    -gen-proposal-rule3>
	    (ONT::ACCEPT :who *USER* :to *ME*
		   ;; :what ?PROP :CONTEXT ?context)
	    ))

	  ; ?c is optional, e.g., "not the cat"
	   ((ONT::SPEECHACT ?!vv ONT::SA_REJECT :CONTENT ?c) 
	    ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	    -gen-proposal-rule4>
	    (ONT::REJECT :who *USER* :to *ME* :what ?c)
	    )

	   ;; that's right/that could be right
	  ((ONT::SPEECHACT ?!a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :formal ?!dd :neutral ?!x :force (? force ONT::TRUE ONT::ALLOWED ONT::REQUIRED))
	   (ONT::PRO ?!x (:* ONT::REFERENTIAL-SEM W::THAT))
	   (ONT::F ?!dd (:* ONT::correctness-val (? x2 W::RIGHT)))
	   ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	   -confirm2>
	   (ONT::ACCEPT :who *USER* :to *ME* :what ?!x))

	  ;; that's not right
	  ((ONT::SPEECHACT ?!a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :FORMAL ?!dd :neutral ?!x :force (? force ONT::FALSE ONT::PROHIBITED))
	   (ONT::PRO ?!x (:* ONT::REFERENTIAL-SEM W::THAT))
	   (ONT::F ?!dd (:* ONT::correctness-val W::RIGHT))
	   ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	   -confirm2a>
	   (ONT::REJECT :who *USER* :to *ME* :what ?x))

	  ;; that's good/okay
	  ((ONT::SPEECHACT ?a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :FORMAL ?!dd :neutral ?!x :force (? force ONT::TRUE ONT::ALLOWED ONT::REQUIRED))
	   (ONT::PRO ?!x (:* ONT::REFERENTIAL-SEM W::THAT))
	   (ONT::F ?!dd (:* ONT::GOOD)) ;(? xx W::GOOD W::OKAY))) ; also fine/great/excellent
	   ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))   deleted for demo - readd
	   -confirm3>
	   (ONT::ACCEPT :who *USER* :to *ME* :what ?!x) )

	  ;;  OKAY, good
	  ((ONT::SPEECHACT ?!a ONT::SA_EVALUATE :CONTENT ?!vv)
	    (ONT::F ?!vv (:* ONT::GOOD)) ;(? xx W::GOOD W::OKAY))) ; also fine/great/excellent
	   -confirm-okay>
	   (ONT::ACCEPT :who *USER* :to *ME* :what ?!vv)
	   )

	  ;; that's not good/okay
	  ((ONT::SPEECHACT ?a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :FORMAL ?!dd  :NEUTRAL ?!x :force (? force ONT::FALSE ONT::PROHIBITED))
	   (ONT::PRO ?!x (:* ONT::REFERENTIAL-SEM W::THAT))
	   (ONT::F ?!dd (:* ONT::GOOD (? xx W::GOOD W::OKAY)))
	   ;;(CALL (ACTIVE-PRO
	   -confirm3a>
	   (ONT::REJECT :who *USER* :to *ME*  :what ?x))
	  
	  ;; that's bad
	  ((ONT::SPEECHACT ?a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :FORMAL ?!dd  :neutral ?!x :force (? force ONT::TRUE ONT::ALLOWED ONT::REQUIRED))
	   (ONT::PRO ?!x (:* ONT::REFERENTIAL-SEM W::THAT))
	   (ONT::F ?!dd (:* ONT::BAD W::BAD))
	   ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	   -confirm4>
	   (ONT::REJECT :who *USER* :to *ME*  :what ?x))

	  ;; that's not bad
	  ((ONT::SPEECHACT ?a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :FORMAL ?!dd  :neutral ?!x :force ONT::FALSE)
	   (ONT::PRO ?!x (:* ONT::REFERENTIAL-SEM W::THAT))
	   (ONT::F ?!dd (:* ONT::BAD W::BAD))
	   ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	   -confirm4a>
	   (ONT::ACCEPT :who *USER* :to *ME*  :what ?!x))

	  ;; that's wrong
	  ((ONT::SPEECHACT ?a ONT::SA_TELL :content ?!cc)
	   (ONT::F ?!cc ONT::HAVE-PROPERTY :FORMAL ?!dd  :neutral ?!x :force (? force ONT::TRUE ONT::ALLOWED ONT::REQUIRED))
	   (ONT::PRO ?!x ONT::REFERENTIAL-SEM)
	   (ONT::F ?!dd (:* ONT::correctness-val W::WRONG))
	   ;;(CALL (ACTIVE-PROPOSAL-ON-STACK ?prop ?context))
	   -confirm5>
	   (ONT::REJECT :who *USER* :to *ME* :what ?!x))

          ; cancel/scratch it/this/that/the building of the staircase
          ((ONT::SPEECHACT ?a ONT::SA_REQUEST :content ?!cc)
	   (ONT::F ?!cc (? t ONT::CANCEL) :AFFECTED ?f)
	   (?reln2 ?f ?t2)
	   ;(ONT::PRO ?f ONT::REFERENTIAL-SEM)
	   -cancel>
	   (ONT::CANCEL :who *USER* :to *ME* :what ?f))
	  
          ; forget it; forget about it
          ((ONT::SPEECHACT ?a ONT::SA_REQUEST :content ?!cc)
	   (ONT::F ?!cc (? t ONT::FORGET) :NEUTRAL ?n)
	   (?reln2 ?n ?t2)
	   ;(ONT::PRO ?n ONT::REFERENTIAL-SEM)
	   -forget>
	   (ONT::CANCEL :who *USER* :to *ME* :what ?n))

          ; never mind
          ((ONT::SPEECHACT ?!a ONT::SA_REJECT :content w::never-mind)
	   -cancel2> 1.0  ; higher priority
	   (ONT::CANCEL :who *USER* :to *ME*))
	  
	  
	  ))
