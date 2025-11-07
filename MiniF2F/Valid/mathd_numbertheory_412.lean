import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_412 (x y : ℤ) (h₀ : x % 19 = 4) (h₁ : y % 19 = 7) :
  (x + 1) ^ 2 * (y + 5) ^ 3 % 19 = 13 := by sorry