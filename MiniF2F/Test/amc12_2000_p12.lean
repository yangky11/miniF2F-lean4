import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12_2000_p12
  (a m c : ℕ)
  (h₀ : a + m + c = 12) :
  a*m*c + a*m + m*c + a*c ≤ 112 := by sorry