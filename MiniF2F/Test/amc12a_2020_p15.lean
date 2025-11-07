import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2020_p15
  (a b : ℂ)
  (h₀ : a^3 - 8 = 0)
  (h₁ : b^3 - 8 * b^2 - 8 * b + 64 = 0) :
  ‖a - b‖ ≤ 2 * Real.sqrt 21 := by sorry