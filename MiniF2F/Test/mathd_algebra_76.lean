import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_algebra_76
  (f : ℤ → ℤ)
  (h₀ : ∀n, Odd n → f n = n^2)
  (h₁ : ∀ n, Even n → f n = n^2 - 4*n -1) :
  f 4 = -1 := by sorry