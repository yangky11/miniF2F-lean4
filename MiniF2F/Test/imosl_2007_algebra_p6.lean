import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem imosl_2007_algebra_p6
  (a : ℕ → NNReal)
  (h₀ : ∑ x ∈ Finset.range 100, ((a (x + 1))^2) = 1) :
  ∑ x ∈ Finset.range 99, ((a (x + 1))^2 * a (x + 2)) + (a 100)^2 * a 1 < 12 / 25 := by sorry