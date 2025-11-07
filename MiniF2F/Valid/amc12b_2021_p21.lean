import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12b_2021_p21 (S : Finset ℝ)
  (h₀ : ∀ x : ℝ, x ∈ S ↔ 0 < x ∧ x ^ (2 : ℝ) ^ Real.sqrt 2 = Real.sqrt 2 ^ (2 : ℝ) ^ x) :
  (↑2 ≤ ∑ k ∈ S, k) ∧ (∑ k ∈ S, k) < 6 := by sorry