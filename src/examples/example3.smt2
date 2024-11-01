; Example 3 (Socrates)
; https://cvc5.github.io/tutorials/beginners/overview.html#example-3
(set-logic UF) ; the logic of uninterpreted functions, allowing quantifiers

(declare-sort S 0)

(declare-fun Human (S) Bool)
(declare-fun Mortal (S) Bool)

(declare-const Socrates S)

(assert (forall ((x S)) (=> (Human x) (Mortal x)))) ; ∀x∈Humans,x∈Mortals
(assert (Human Socrates)) ; Socrates∈Humans
(assert (not (Mortal Socrates))) ; Socrates∉Mortals (obviously false)

(check-sat)

