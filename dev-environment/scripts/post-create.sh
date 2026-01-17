#!/bin/bash
set -e

# Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Install volta
curl https://get.volta.sh | bash

# Install pyenv
curl https://pyenv.run | bash

# Copy dotfiles
cp .devcontainer/dotfiles/.zshrc ~

echo "✓ Post-create setup complete!"
