import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_353
  (s : ℕ)
  (h₀ : s = ∑ k ∈ Finset.Icc 2010 4018, k) :
  s % 2009 = 0 := by sorry