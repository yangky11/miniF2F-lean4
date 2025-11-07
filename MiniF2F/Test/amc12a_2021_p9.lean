import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12a_2021_p9 :
  ∏ k ∈ Finset.range 7, (2^(2^k) + 3^(2^k)) = 3^128 - 2^128 := by sorry