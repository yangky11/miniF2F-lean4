import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12b_2020_p6
  (n : ℕ)
  (h₀ : 9 ≤ n) :
  ∃ (x : ℕ), (x : ℝ)^2 = (Nat.factorial (n + 2) - Nat.factorial (n + 1)) / n ! := by sorry