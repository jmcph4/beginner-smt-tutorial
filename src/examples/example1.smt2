; Example 1
; https://cvc5.github.io/tutorials/beginners/overview.html#example-1
(set-logic QF_LIA)
(set-option :produce-models true) ; produce the set of values that satisfy

(declare-const a Int) ; Alice's age, a
(declare-const b Int) ; Bob's age, b

(assert (= (+ a 10) (* 2 b))) ; In 10 years Alice will be twice Bob's age
(assert (= (+ b 22) (* 2 a))) ; In 22 years, Bob will be twice Alice's age

(check-sat) ; is this satisfiable (within QF_LIA)?
(get-model) ; produce the set of values that satisfy

