#!/bin/bash

# I like the fact that you opened the file to see what the fuck this script might do to your system. 
# Good Job! Stay secure my guy.

# installing vim.
echo "Installing Vundle -- A vim package manager."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# copying contents of my .vimrc to your .vimrc
echo .vimrc >> ~/.vimrc

# Downloading all the plugins to make your life easier
vim +PlugInstall +qall
