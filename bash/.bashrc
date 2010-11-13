# Bash Completion
. /opt/local/etc/bash_completion

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH

# Haskell
export PATH=$HOME/.cabal/bin:$PATH

# CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH

# Git
export EDITOR=/usr/bin/vim

# Local binaries
export PATH=$HOME/Documents/bin:$PATH
export PATH=$HOME/Documents/bin/darcs-to-git:$PATH
export PATH=$HOME/Documents/bin/decuda:$PATH

# Aliases
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -alG'


# Directory aliases
alias cd-a='cd ~/Documents/code/accelerate'
alias cd-s='cd ~/Documents/code/svm'

# Prompt
source $HOME/local/dotfiles/bash/prompt

