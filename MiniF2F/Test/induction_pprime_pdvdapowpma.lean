import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem induction_pprime_pdvdapowpma
  (p a : ℕ)
  (h₀ : 0 < a)
  (h₁ : Nat.Prime p) :
  p ∣ (a^p - a) := by sorry