import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_343 :
  (∏ k ∈ Finset.range 6, (2 * k + 1)) % 10 = 5 := by sorry