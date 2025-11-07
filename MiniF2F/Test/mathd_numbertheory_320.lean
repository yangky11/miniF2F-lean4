import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_320
  (n : ℕ)
  (h₀ : n < 101)
  (h₁ : 101 ∣ (123456 - n)) :
  n = 34 := by sorry