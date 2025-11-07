import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2003_p23
  (S : Finset ℕ)
  (h₀ : ∀ (k : ℕ), k ∈ S ↔ 0 < k ∧ ((k * k) : ℕ) ∣ (∏ i ∈ (Finset.Icc 1 9), i !)) :
  S.card = 672 := by sorry