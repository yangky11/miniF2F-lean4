import Lake
open Lake DSL

package «miniF2F-lean4» {
  moreLinkArgs := #["-L./lake-packages/LeanInfer/build/lib", "-L/usr/local/lib", "-lonnxruntime", "-lctranslate2", "-lstdc++"]
}


require aesop from git "https://github.com/JLimperg/aesop" @ "master"
require LeanInfer from git "https://github.com/lean-dojo/LeanInfer" @ "improve-backend"
require mathlib from git "https://github.com/leanprover-community/mathlib4"

@[default_target]
lean_lib «MiniF2F» {
  -- add library configuration options here
}
