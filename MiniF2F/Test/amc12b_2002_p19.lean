import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12b_2002_p19
  (a b c: ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
  (h₁ : a * (b + c) = 152)
  (h₂ : b * (c + a) = 162)
  (h₃ : c * (a + b) = 170) :
  a * b * c = 720 := by sorry