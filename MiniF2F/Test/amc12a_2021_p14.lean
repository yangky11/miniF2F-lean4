import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2021_p14 :
  (∑ k ∈ (Finset.Icc 1 20), (Real.logb (5^k) (3^(k^2)))) * (∑ k ∈ (Finset.Icc 1 100), (Real.logb (9^k) (25^k))) = 21000 := by sorry