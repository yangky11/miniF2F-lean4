import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem algebra_sum1onsqrt2to1onsqrt10000lt198 :
  ∑ k ∈ (Finset.Icc (2 : ℕ) 10000), (1 / Real.sqrt k) < 198 := by sorry