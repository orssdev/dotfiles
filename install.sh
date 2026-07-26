#!/usr/bin/env bash
# Installs the CLI/GUI tools this dotfiles repo's configs assume are present.
# Homebrew-only: every package here lines up with what's already hardcoded
# throughout the configs (/opt/homebrew paths, tpm/antidote as brew formulae).
#
# Not included: nvim's own LSP servers, formatters, and treesitter parsers —
# those are managed by Mason/lazy.nvim on first launch, not by this script.
set -euo pipefail

FORMULAE=(
  stow
  neovim
  tmux
  starship
  eza
  git-delta
  lazygit
  fzf
  ripgrep
  fd
  fastfetch
  yazi
  btop
  antidote
  tpm
  nvm
  openjdk
)

CASKS=(
  hammerspoon
  vscodium
)

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it from https://brew.sh, then re-run this script." >&2
  exit 1
fi

echo "==> Updating Homebrew"
brew update

echo "==> Installing formulae: ${FORMULAE[*]}"
brew install "${FORMULAE[@]}"

echo "==> Installing casks: ${CASKS[*]}"
brew install --cask "${CASKS[@]}"

echo "==> Done. Run 'stow <package>' from this directory to symlink configs into place."
