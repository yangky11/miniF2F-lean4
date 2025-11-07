import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_algebra_346
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x - 3)
  (h₁ : ∀ x, g x = x + 1) :
  g (f 5 - 1) = 7 := by sorry