#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

files=(
  .zshrc
  .zprofile
  .zsh_plugins.txt
)

for file in "${files[@]}"; do
  ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
  echo "Linked $file"
done
