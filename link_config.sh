#!/bin/bash

# Get list of directories inside ~/.dotfiles/config
config_dirs=("$HOME/.dotfiles/config/"*)

# Loop through each directory and create symlinks in ~/.config
for dir in "${config_dirs[@]}"; do
  base_dir=$(basename "$dir")
  target="$HOME/.config/$base_dir"

  # Remove existing config if it exists
  [ -e "$target" ] && rm -rf "$target"

  # Create symlink
  ln -s "$dir" "$target"
done

# Link .zshrc
[ -e "$HOME/.zshrc" ] && rm "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"

[ -e "$HOME/.tmux.conf" ] && rm "$HOME/.tmux.conf"
ln -s "$HOME/.dotfiles/.tmux.conf" "$HOME/.tmux.conf"

[ -e "$HOME/.tmuxifier" ] && rm -r "$HOME/.tmuxifier"
ln -s "$HOME/.dotfiles/.tmuxifier" "$HOME/.tmuxifier"

[ -e "$HOME/DockerHub" ] && rm -r "$HOME/DockerHub"
ln -s "$HOME/.dotfiles/DockerHub" "$HOME/DockerHub"
