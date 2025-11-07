import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem amc12b_2002_p3 (S : Finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ n : ℕ, n ∈ S ↔ 0 < n ∧ Nat.Prime (n ^ 2 + 2 - 3 * n)) :
  S.card = 1 := by sorry