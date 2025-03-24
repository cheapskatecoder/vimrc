#!/bin/bash

# I like the fact that you opened the file to see what the fuck this script might do to your system.
# Good Job! Stay secure my guy.

# Ensure the .vim directory exists
mkdir -p ~/.vim/bundle

# Installing Vundle -- A vim package manager.
echo "Installing Vundle -- A vim package manager."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copying contents of my .vimrc to your .vimrc
echo "Copying .vimrc to your home directory."
cp ./.vimrc ~/.vimrc

# Downloading all the plugins to make your life easier
echo "Installing Vim plugins using Vundle."
vim +PluginInstall +qall

echo "Installation complete!"

