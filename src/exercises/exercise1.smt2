; Exercise 1
; https://cvc5.github.io/tutorials/beginners/overview.html#exercise-1
(set-logic QF_LIA)

(declare-const a Int) ; Alice's age, b
(declare-const b Int) ; Bob's age, a

(assert (= (+ a 10) (* 2 b))) ; In 10 years Alice will be twice Bob's age
(assert (= (+ b 20) (* 2 a))) ; In 20 years, Bob will be twice Alice's age

(check-sat)
