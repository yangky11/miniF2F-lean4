import Mathlib

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

theorem aime_1994_p3
  (f : ℤ → ℤ)
  (h0 : f x + f (x-1) = x^2)
  (h1 : f 19 = 94):
  f (94) % 1000 = 561 := by sorry