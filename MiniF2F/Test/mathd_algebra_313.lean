import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_algebra_313
  (v i z : ℂ)
  (h₀ : v = i * z)
  (h₁ : v = 1 + Complex.I)
  (h₂ : z = 2 - Complex.I) :
  i = 1/5 + 3/5 * Complex.I := by sorry