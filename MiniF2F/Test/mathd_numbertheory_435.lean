import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem mathd_numbertheory_435
  (k : ℕ)
  (h₀ : 0 < k)
  (h₁ : ∀ n, Nat.gcd (6 * n + k) (6 * n + 3) = 1)
  (h₂ : ∀ n, Nat.gcd (6 * n + k) (6 * n + 2) = 1)
  (h₃ : ∀ n, Nat.gcd (6 * n + k) (6 * n + 1) = 1) :
  5 ≤ k := by sorry