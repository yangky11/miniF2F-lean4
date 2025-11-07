import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_150
  (n : ℕ)
  (h₀ : ¬ Nat.Prime (7 + 30 * n)) :
  6 ≤ n := by sorry