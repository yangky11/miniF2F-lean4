import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem algebra_ineq_nto1onlt2m1on
  (n : ℕ) :
  (n : ℝ) ^ (1 / n : ℝ) < 2 - 1 / n := by sorry