import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2009_p7
  (x : ℝ)
  (n : ℕ)
  (a : ℕ → ℝ)
  (h₁ : ∀ m, a (m + 1) - a m = a (m + 2) - a (m + 1))
  (h₂ : a 1 = 2 * x - 3)
  (h₃ : a 2 = 5 * x - 11)
  (h₄ : a 3 = 3 * x + 1)
  (h₅ : a n = 2009) :
  n = 502 := by sorry