#!/bin/sh

# Allowing for script to be executed from anywhere.
dotfiles_dir=$(dirname $0)

# Creating symlinks to the dotfiles.
ln -fs $dotfiles_dir/p10k.zsh ~/.p10k.zsh
ln -fs $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -fs $dotfiles_dir/vimrc ~/.vimrc

