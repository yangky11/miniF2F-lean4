import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_algebra_139
  (s : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ y, x≠0 -> y≠0 -> s x y = (1/y - 1/x) / (x-y)) :
  s 3 11 = 1/33 := by sorry