# 🖊edita.vim

![Version 0.0](https://img.shields.io/badge/version-0.0-yellow.svg)
![Support Vim 8.1 or above](https://img.shields.io/badge/support-Vim%208.1%20or%20above-yellowgreen.svg)
![Support Neovim 0.4 or above](https://img.shields.io/badge/support-Neovim%200.4%20or%20above-yellowgreen.svg)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

An pseudo `EDITOR` to open a file in a working Vim/Neovim instead of a new one.
It has no external dependencies.

**This is in alpha stabe. Anything will be drastically changed without announcement.**

## Usage

Open `:terminal` and execute applications which use `$EDITOR` internally.
For example, `git commit` uses `$EDITOR` in default.

Note that `$EDITOR` includes arguments so you need to use `eval` to execute it directly like:

```
$ eval $EDITOR {filename}
```

# Similar projects

- [mhinz/neovim-remote](https://github.com/mhinz/neovim-remote)
- [kyoh86/vim-editerm](https://github.com/kyoh86/vim-editerm)
- https://qiita.com/tennashi/items/a1a7a08ceb69d2768158

# License

The code in edita.vim follows MIT license texted in [LICENSE](./LICENSE).
Contributors need to agree that any modifications sent in this repository follow the license.
