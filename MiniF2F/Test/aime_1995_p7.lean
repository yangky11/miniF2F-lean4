import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem aime_1995_p7
  (k m n : ℕ)
  (t : ℝ)
  (h₀ : 0 < k ∧ 0 < m ∧ 0 < n)
  (h₁ : Nat.gcd m n = 1)
  (h₂ : (1 + Real.sin t) * (1 + Real.cos t) = 5/4)
  (h₃ : (1 - Real.sin t) * (1- Real.cos t) = m/n - Real.sqrt k):
  k + m + n = 27 := by sorry