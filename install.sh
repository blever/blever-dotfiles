#!/bin/bash

DOTFILES=$HOME/local/dotfiles

# Install bash scripts
ln -sf $DOTFILES/bash/bashrc         $HOME/.bashrc
ln -sf $DOTFILES/bash/bash_profile   $HOME/.bash_profile

# Install vim scripts
ln -sf  $DOTFILES/vim/vimrc          $HOME/.vimrc
if [ `uname` == "Linux" ]; then
    ln -sfn $DOTFILES/vim/vim        $HOME/.vim
elif [ `uname` == "Darwin" ]; then
    ln -sfh $DOTFILES/vim/vim        $HOME/.vim
fi

# Install git scritps
ln -sf $DOTFILES/git/gitconfig       $HOME/.gitconfig
