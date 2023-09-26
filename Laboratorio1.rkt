#lang racket
#|1er laboratorio
TDAOption
Dominio: code (Int)  X message (String)  X ChatbotCodeLink (Int) X InitialFlowCodeLink (Int) X Keyword
Recorrido: Option
Nombre función: Option
|#

(define (option code message chatbotlink initialflowlink keyword)
     (list code message chatbotlink initialflowlink keyword))

(define op1 (option 1 "viajar" 2 4 '("viajar" "turistear" "conocer")))

(define op2 (option 2 "estudiar" 4 3 '("aprender" "perfeccionarme")))



  