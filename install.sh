#!/bin/bash

# Define paths
DOTFILES_DIR="$HOME/dotfiles"
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

echo "🚀 Setting up your dotfiles..."

# --- ZSH ---

# Link the Zsh Theme
mkdir -p "$ZSH_CUSTOM/themes"
ln -sf "$DOTFILES_DIR/zsh/themes/honukaizsh.zsh-theme" "$ZSH_CUSTOM/themes/honukaizsh.zsh-theme"
# Link the .zshrc
ln -sf "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

# --- VIM ---
ln -sf "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"

# --- TMUX ---
ln -sf "$DOTFILES_DIR/tmux/.tmux.conf.local" "$HOME/.tmux.conf.local"
ln -sf "$DOTFILES_DIR/tmux/.tmuxgo.sh" "$HOME/.tmuxgo.sh"
chmod +x "$DOTFILES_DIR/tmux/.tmuxgo.sh"

echo "✅ Done! Please restart terminal or run: source ~/.zshrc"
