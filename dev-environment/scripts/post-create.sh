#!/bin/bash
set -e

# Copy dotfiles
cp .devcontainer/dotfiles/.zshrc ~
cp .devcontainer/dotfiles/.p10k.zsh ~
cp .devcontainer/dotfiles/.profile ~
cp .devcontainer/dotfiles/.zprofile ~

echo "✓ Post-create setup complete!"
