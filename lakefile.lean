import Lake
open Lake DSL

package «miniF2F-lean4» {
  moreLinkArgs := #["-L./lake-packages/LeanInfer/build/lib", "-lonnxruntime", "-lctranslate2"]
}


require mathlib from git "https://github.com/leanprover-community/mathlib4"
require LeanInfer from git "https://github.com/lean-dojo/LeanInfer" @ "improve-backend"
require Paperproof from git "https://github.com/Paper-Proof/paperproof.git"@"main"/"lean"

@[default_target]
lean_lib «MiniF2F» {
  -- add library configuration options here
}
