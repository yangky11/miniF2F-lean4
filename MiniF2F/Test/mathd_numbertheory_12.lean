import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_12 :
  Finset.card (Finset.filter (λ x => 20∣x) (Finset.Icc 15 85)) = 4 := by sorry