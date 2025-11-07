import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2009_p6
  (m n p q : ℝ)
  (h₀ : p = 2 ^ m)
  (h₁ : q = 3 ^ n) :
  p^(2 * n) * (q^m) = 12^(m * n) := by sorry