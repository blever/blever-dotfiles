#!/usr/bin/env bash
set -vx

function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    ln -shf ${source} ${target}
}

#
# Link other config files and build .bashrc file based based on specified "modules".
#
if [ "$1" = "vim" ]; then
    for i in _vim*
    do
       link_file $i
    done
else
    for i in _*
    do
        link_file $i
    done
fi


git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
git submodule foreach git submodule init
git submodule foreach git submodule update

# setup command-t
cd _vim/bundle/command-t
rake make


##!/bin/bash

#DOTFILES=$HOME/.dotfiles

# Install bash scripts
#ln -sf $DOTFILES/bash/bashrc         $HOME/.bashrc
#ln -sf $DOTFILES/bash/bash_profile   $HOME/.bash_profile

# Install vim scripts
#ln -sf  $DOTFILES/vim/vimrc          $HOME/.vimrc
#ln -sf  $DOTFILES/vim/gvimrc         $HOME/.gvimrc
#if [ `uname` == "Linux" ]; then
#    ln -sfn $DOTFILES/vim/vim        $HOME/.vim
#elif [ `uname` == "Darwin" ]; then
#    ln -sfh $DOTFILES/vim/vim        $HOME/.vim
#fi

# Install git scritps
#ln -sf $DOTFILES/git/gitconfig       $HOME/.gitconfig


# Install ec2 scripts
#ln -sf $DOTFILES/ec2/ec2rc           $HOME/.ec2rc

