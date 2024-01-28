;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: 500 million rays
;;;
;;; Description:
;;;   (length (filter (lambda (word) (= word "egg")) text))
;;;

(define code '((begin
  define rand seed modulo * 20200000 sin seed 1

  define c1r v car cdr v
  define c2r v c1r cdr v

  define vec-op op com a b apply com map lambda x op x a x b list car c1r c2r

  define vec-add a b vec-op + list a b
  define vec-sub a b vec-op - list a b
  define vec-scale v s vec-op * list v list s s s
  define dot a b vec-op * + a b

  define normalize v vec-scale v / 1 sqrt dot v v

  define scene-spheres quote ; radius position color diffusion
    0.20 5.6 0.200 0.70 0.89803921569 0.79215686275 0.31372549020 1
    0.25 5.0 0.250 1.75 0.27450980392 0.13333333333 0.96862745098 1
    1.00 4.0 1.000 0.00 0.70000000000 0.60000000000 0.50000000000 0
    0.40 2.0 0.400 1.20 0.98823529412 0.24313725490 0.14509803922 1
    1000 0.0 -1000 0.00 0.03137254902 0.41960784314 0.22352941176 1

  define random-in-sphere seed
    define rand2 - * rand seed 2 1
    define attempt list rand2 rand2 rand2
    if < dot attempt attempt 1 attempt random-in-sphere + seed 1

  define shoot ray-origin ray-direction spheres
    if null? spheres list 0.6 0.8 1
    begin
      define continue shoot ray-origin ray-direction cdr spheres
      define sphere car spheres
      define oc vec-sub ray-origin c1r sphere
      define a dot ray-direction ray-direction
      define b dot oc ray-direction
      define discriminant - * b b * a - dot oc oc expt car sphere 2
      if < discriminant 0 continue begin
        define intersection vec-sub ray-origin vec-scale ray-direction / + b sqrt discriminant a
        if > b 0 continue
          vec-op * list ; vec-mult
            c2r sphere ; sphere color
            shoot
              intersection
              normalize vec-add
                normalize vec-sub intersection c1r sphere ; normal vector
                vec-scale
                  random-in-sphere a ; lambertian distribution
                  c2r cdr sphere ; diffusion coefficient
              scene-spheres

  define range i func if = i 1000 nil cons func i range + i 1 func
  define scale-fuzz x i lst vec-scale lst / + x rand + x i 1000

  ; 1000x1000 pixels, 500 samples each = 500 million rays
  define draw
    hideturtle
    range 0 lambda x
      range 0 lambda y
        pixel - x 500 - y 500
          vec-op expt rgb begin
            define avg-color i
              if = i 500 list 0 0 0
                  vec-add vec-scale
                    shoot
                      list 10.000779324512152 1.849236092387962 2.3492535729369166
                      vec-add
                        list -6.327322917072476 -2.9012209427854874 0.624675566534159
                        vec-add scale-fuzz x i list 0.651355583806451 0 -3.428187283191847
                                scale-fuzz y i list -0.5969662538704064 3.436204086861822 -0.11342358823537718
                      scene-spheres
                    0.002
                  avg-color + i 1
            avg-color 1
           list 0.5 0.5 0.5
  nil
)))

; Base-3 encoding of parenthesis location. 0 = continue ; 1 = open parens ; 2 = close parens
(define parens (list (reduce (lambda (a b) (+ (* 10 10000000000000000000000000000000000000000000000000 a) b)) (list
  8182808248959333554425100397344406064028654794
  08103101937185704613076324770780717341818301075820
  28953843842537947901064336653881161795773637504908
  22508173205022375372249999779194779251943710643280
  56121699942223886270753887166309333863353552631347
  77083074988940985150727866508169213897725830086375
  54757207760308289306925730404963798347181150282040
))))

(define (process)
  (define op (modulo (car parens) 3))
  (set-car! parens (quotient (car parens) 3))
  (cond
    ((= op 0)
      (define c (car code))
      (set-car! code (cdr c))
      (cons (car c) (process))
    )
    ((= op 1)
      (cons (process) (process))
    )
    (else nil)))

(eval (process))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)

