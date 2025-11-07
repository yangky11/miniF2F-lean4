import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12_2001_p21
  (a b c d : ℕ)
  (h₀ : a * b * c * d = Nat.factorial 8)
  (h₁ : a * b + a + b = 524)
  (h₂ : b * c + b + c = 146)
  (h₃ : c * d + c + d = 104) :
  ↑a - ↑d = (10 : ℤ) := by sorry