import Lake
open Lake DSL

package «miniF2F-lean4» {
  -- add package configuration options here
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4"

@[default_target]
lean_lib «MiniF2F» {
  -- add library configuration options here
}
