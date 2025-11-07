import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_algebra_196
  (S : Finset ℝ)
  (h₀ : ∀ (x : ℝ), x ∈ S ↔ abs (2 - x) = 3) :
  ∑ k ∈ S, k = 4 := by sorry