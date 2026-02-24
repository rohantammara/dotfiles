#!/bin/bash

# Define paths
DOTFILES_DIR="$HOME/dotfiles"
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

echo "🚀 Setting up your dotfiles..."

# 1. Link the Zsh Theme
mkdir -p "$ZSH_CUSTOM/themes"
ln -sf "$DOTFILES_DIR/zsh/themes/honukaizsh.zsh-theme" "$ZSH_CUSTOM/themes/honukaizsh.zsh-theme"

# 2. Link the .zshrc
ln -sf "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

echo "✅ Done! Please run: source ~/.zshrc"
