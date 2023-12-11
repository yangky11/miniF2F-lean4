import Lake
open Lake DSL

package «miniF2F-lean4» {
  moreLinkArgs := #[
    "-L./.lake/packages/LeanCopilot/.lake/build/lib",
    "-lctranslate2"
  ]
}

@[default_target]
lean_lib «MiniF2F» {
  -- add library configuration options here
}

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "master"
require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot" @ "v1.0.0"
