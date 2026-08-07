# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal macOS dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/). There is no application code, build step, or test suite — every top-level directory is a stow package of config files that gets symlinked into `$HOME`.

## Commands

- `./install.sh` — installs the Homebrew formulae/casks the configs assume are present. Does not stow anything. Deliberately excludes nvim's LSP servers/formatters/treesitter parsers, which Mason/lazy.nvim manage on first launch.
- `stow <package>` — symlink one package into `$HOME` (e.g. `stow nvim`). `stow */` stows everything.
- `stow -D <package>` — unstow (remove symlinks). Needed when switching the two mutually-exclusive `starship` variants (see below).

## Architecture

- **Stow layout**: each package's files are laid out relative to `$HOME` (e.g. `nvim/.config/nvim/...` → `~/.config/nvim/...`), so `stow <package>` symlinks correctly with no extra flags. New files must follow this mirrored path convention to stow correctly.
- **Package READMEs**: any package with non-trivial config (currently `nvim`, `zsh`, `skhd`, `starship`) has its own `README.md` documenting layout/keymaps in detail. The root `README.md` has a summary table linking to each — keep both in sync when changing a package's structure or keybindings.
- **starship has two mutually exclusive variants** (`starship/git`, `starship/no-git`) sharing the same target paths — stowing both at once conflicts. `git/` is the full-featured everyday prompt; `no-git/` disables git status segments for slow/networked filesystems.
- **zsh load order**: `.zprofile` sets up Homebrew shellenv (login shell); `.zshrc` sources every file in `~/.zsh/*.zsh`, which includes both this package's own files (`exports.zsh`, `plugins.zsh`, `aliases.zsh`) and snippets shipped by other stowed packages (starship, eza, fzf, yazi) into the same `~/.zsh/` directory. Plugins are managed via antidote (`.zsh_plugins.txt`).
- **Machine-specific/secret config** goes in `zsh/.zsh/local.zsh`, which is gitignored and not created by default — never commit machine-specific exports elsewhere.
- **`claude/` package** installs the global `~/.claude/CLAUDE.md` and slash commands (`/commit`, `/commit-attributed`, `/sr`, `/sr-attributed`, `/auto`). That global CLAUDE.md is the source of truth for how to commit and open PRs/MRs generally (in this repo and any other on the machine); don't duplicate those rules here. Branching and PR titles are overridden below for this repo specifically.

## Branch workflow (overrides global convention for this repo)

Global CLAUDE.md's per-task branch-and-PR flow assumes a reviewed, multi-contributor repo. This one doesn't need that overhead:

- All work commits directly to a single long-lived `develop` branch — never create per-task feature branches.
- Before starting new work: confirm you're on `develop` (`git branch --show-current`) and run `git pull` to stay current with the remote.
- Never commit or push directly to `main`.
- `/sr` pushes `develop` and opens (or updates) one PR/MR into `main` — no new branch needed, and don't create one.

## PR/MR titles (overrides global convention for this repo)

Since every SR here bundles whatever's accumulated on `develop` rather than one coherent change, always use the date-plus-packages format, regardless of whether the commits share a type/scope:

`YYYY-MM-DD: pkg1, pkg2, pkg3`

e.g. `2026-08-01: nvim, zsh, starship`
