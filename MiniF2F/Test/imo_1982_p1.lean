import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem imo_1982_p1
  (f : ℕ → ℕ)
  (h₀ : ∀ m n, (0 < m ∧ 0 < n) → f (m + n) - f m - f n = (0 : ℤ) ∨ f (m + n) - f m - f n = (1 : ℤ))
  (h₁ : f 2 = 0)
  (h₂ : 0 < f 3)
  (h₃ : f 9999 = 3333) :
  f 1982 = 660 := by sorry