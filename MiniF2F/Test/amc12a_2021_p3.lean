import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2021_p3
  (x y : ℕ)
  (h₀ : x + y = 17402)
  (h₁ : 10∣x)
  (h₂ : x / 10 = y) :
  ↑x - ↑y = (14238:ℤ) := by sorry