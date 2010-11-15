#------------------------------------------------------------------------------
# .bashrc - main entry point.
#------------------------------------------------------------------------------
DOTFILES=$HOME/local/dotfiles

# Haskell
export PATH=$HOME/.cabal/bin:$PATH

# CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH

# Editor
export EDITOR=/usr/bin/vim

# Aliases
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -alG'

# Prompt
. $DOTFILES/bash/prompt

# Laptop specifics
if [ `uname` == "Darwin" ]; then
    . $DOTFILES/bash/laptop
fi
