import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem numbertheory_aoddbdiv4asqpbsqmod8eq1
  (a : ℤ)
  (b : ℤ)
  (h₀ : Odd a)
  (h₁ : 4 ∣ b)
  (h₂ : b >= 0) :
  (a^2 + b^2) % 8 = 1 := by sorry