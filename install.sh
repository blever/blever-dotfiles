#!/bin/sh

DOTFILES=$HOME/local/dotfiles

# Install bash scripts
ln -sf $DOTFILES/bash/.bashrc        $HOME/.bashrc
ln -sf $DOTFILES/bash/.bash_profile  $HOME/.bash_profile

# Install vim scripts
ln -sf $DOTFILES/vim/.vimrc          $HOME/.vimrc
ln -sf $DOTFILES/vim/.vim            $HOME/.vim

# Install git scritps
ln -sf $DOTFILES/git/.gitconfig      $HOME/.gitconfig
