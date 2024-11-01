; Example 2
; https://cvc5.github.io/tutorials/beginners/overview.html#example-2
(set-logic QF_BV) ; Logic of bit vectors (i.e., machine integers)

(declare-const x (_ BitVec 32)) ; x :: u32
(declare-const y (_ BitVec 32)) ; y :: u32
(declare-const z (_ BitVec 32)) ; z :: u32

(assert (= x (bvmul z (_ bv2 32)))) ; x = 2z
(assert (= (bvmul x y) (_ bv1 32))) ; xy = 1

(check-sat)

