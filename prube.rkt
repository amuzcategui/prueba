#lang racket
;#tipos de datos
#|Para hacer comentarios más largos|#
#|
La programación funcional define lo que son las cosas y deja que el ordenador haga el resto

Booleanos
#t;true
#f;false
exactos:
;enteros(1,2,3,-4,2/5;3i)
inexactos:
;5.5,inf
pregunta?
\e(caracteres)
cadenas de caracteres
display para imprimir
\n salto de linea o newline
para imprimir comillas \"dhifu\"
par:estructura que tiene elementos 1 y 2
Se relaciona con listas enlazadas
(cons 1 2)
'(1.2)
(car heh) para obtener el primer elemento del par
(cdr heh) para obtener el segundo elemento
tambien podemos usar list(1 2 3 4)
para preguntar si es par
(pair?'(1.2))
(list?'(1 2))
Para acceder a listas:
con car o cdr
first lista
rest lista
second, third, fourth... hasta tenth
last
cadr lista segundo elemento
caddr tercer element
     la d representa el n. de elemento
     hasta el 4(intenta hacer la funcion la el 5to elemento)
cdddr obtiene la lista a partir de la cuarta posicion
list-ref n (acceder a cualquier elemento) hasta el 10
lenght lista
append para unir dos listas 
*member n lista (para saber si está en la lista)
(not(lsjbdk?(jsdjch)))para preguntar lo contrario
funcion map:
(map func lista)aplica func a cada elemento de la lista
las listas deben tener la misma longitud
(andmap funcBOOL lista )devuelve t o f dependiendo de si las llamadas a la funcion son ver. o fal.
(ormap funcionBOOL lista) si alguno es t, devuelve t
(filter funcBOOL lista): devuelve elementos que cumplan una condicional
condicionales:
(if condicional verd falsa)
Se puede usar and, or, not
nand(not and)
nor (not or)
xor
*cond (se expresa como vectores[] para no poner tantas condicionales)
(apply func lista) aplica una funcion a la lista
*. : se utiliza para que una función acepte parámetros múltiples
*lambda:
funciones anónimas, (lambda parámetros cuerpo) , cuando las necesitas para
una cosa súper específica y no lo vas a usar más
let:
(let [(id expresion)(id expresion)]
     (cuerpo))
define pero solo dentro de la expresion
no existe afuera de la funcion
let* crea las asignaciones tan pronto como estén definidas
|#
 ; ejemplo par:
(define lista(cons 1
                  (cons 2
                        (cons 3
                              (cons 4 null)))))
;ejemplo recursion:
(define (sumarlista lista)
  (if (empty? lista) 0
      (+(first lista)(sumarlista(rest lista)))))

;ejemplo cond:

(define (quesoy x)
  (cond
  [(string? x) "string"]
  [(number? x) "número"]
  [(boolean? x) "booleano"]
  [(char? x) "carácter"]
  [else "no sé"]))


;ejemplo lambda

(define (construir-saludo saludo)
  (lambda(nom)
    (string-append saludo "," nom)))

;ejemplo let

(let [(x 4)(y 5)]
  (+ x y))

(define (caddddr lista)
  (cadr(cdddr lista)))


  