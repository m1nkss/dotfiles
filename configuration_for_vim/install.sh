#!/bin/bash

set -e  # Exit on error

echo "🔧 Installing Vim configuration..."

# Copy vimrc
echo "📄 Copying vimrc to ~/.vimrc"
cp vimrc "$HOME/.vimrc"

# Install vim-plug
echo "⬇️ Installing vim-plug..."
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Ensure ~/.vim exists
mkdir -p "$HOME/.vim"

# Copy contents of custom vim folder
echo "📁 Copying contents of 'vim/' to ~/.vim"
cp -R vim/* "$HOME/.vim"

echo "✅ Done! Launch Vim and run :PlugInstall to install the plugins."

