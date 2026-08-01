# dotfiles

Personal macOS dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that mirrors `$HOME`.

## Install

```sh
git clone <this-repo> ~/dotfiles
cd ~/dotfiles
./install.sh          # installs the Homebrew formulae/casks these configs assume
stow <package>         # symlink one package into $HOME, e.g. `stow nvim`
```

`install.sh` only installs tools; it does not stow anything. Stow each package you want individually, or `stow */` for all of them.

## Packages

| Package | What it configures | Notes |
|---|---|---|
| [nvim](nvim/README.md) | Neovim, via lazy.nvim | see package README for keymaps and plugin list |
| [zsh](zsh/README.md) | Shell, prompt hook, plugins, aliases | see package README for plugin manager and local overrides |
| [skhd](skhd/README.md) | Global hotkeys | see package README for hotkey table |
| [starship](starship/README.md) | Prompt | two mutually exclusive variants — see package README |
| claude | Global `CLAUDE.md`, `/commit`, `/commit-attributed`, `/sr`, `/sr-attributed`, `/auto` slash commands, and `settings.json` | commit and PR/MR style rules, plus permission (allow/ask/deny) rules, live here; secrets go in gitignored `settings.local.json` |
| tmux | `tmux.conf` — mouse support, vi-style pane nav, gruvbox theme | plugins managed via tpm |
| git | `.gitconfig` — delta as pager/diff tool (gruvbox-dark theme) | |
| lazygit | `config.yml` | |
| bat, eza, fzf, yazi | CLI tool configs + zsh integration snippets | each ships a `.zsh/*.zsh` sourced by `zsh/.zshrc` |
| btop | `btop.conf` | |
| herdr | `config.toml` | terminal multiplexer/agent manager config; logs, sockets, and session state are gitignored |
| vim | `.vimrc` fallback for plain Vim | |
| code | VS Code / VSCodium `settings.json` | two variants, one per app |

## Conventions

- Every package's files are laid out relative to `$HOME` (e.g. `nvim/.config/nvim/...` → `~/.config/nvim/...`), so `stow <package>` symlinks correctly with no extra flags.
- Machine-specific or secret exports go in `zsh/.zsh/local.zsh`, which is gitignored — see [zsh/README.md](zsh/README.md).
