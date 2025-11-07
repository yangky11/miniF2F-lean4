import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem imo_1974_p3
  (n : ℕ) :
  ¬ 5∣∑ k ∈ Finset.range (n + 1), (Nat.choose (2 * n + 1) (2 * k + 1)) * (2^(3 * k)) := by sorry