# miniF2F-lean4

⚠️ This repo is NOT maintained regularly. Use your own discretion.


## Building

```bash
git clone https://github.com/yangky11/miniF2F-lean4
cd miniF2F-lean4
lake exe cache get
lake build
```

You can rebuild the `minif2f_lean4.jsonl` file from lean files using the `rebuild_jsonl.py` script to update the formal statements and proofs. (It will not change the `id`, `split`, `header` and informal fields, though.)

> `id` is not the real name of the theorem. Please use `name`.

## Related Links

* [MiniF2F: a cross-system benchmark for formal Olympiad-level mathematics](https://arxiv.org/abs/2109.00110)
* [openai/miniF2F](https://github.com/openai/miniF2F)
* [facebookresearch/miniF2F](https://github.com/facebookresearch/miniF2F)

