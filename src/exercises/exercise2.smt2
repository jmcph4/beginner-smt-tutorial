; Exercise 2
; https://cvc5.github.io/tutorials/beginners/overview.html#exercise-2
(set-logic QF_BV)
(set-option :produce-models true)

(declare-const x (_ BitVec 8)) ; x :: u8

(assert (= (bvmul x (_ bv5 8)) (_ bv1 8))) ; 5x = 1

(check-sat)
(get-model)

