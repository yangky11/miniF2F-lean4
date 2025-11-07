import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_127 :
  (∑ k ∈ (Finset.range 101), 2^k) % 7 = 3 := by sorry