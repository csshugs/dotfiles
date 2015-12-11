# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme.
ZSH_THEME="simple"

# Plugins.
plugins=(z sublime)



# User configuration

# PATH.
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Source.
source $ZSH/oh-my-zsh.sh

# Aliases.
alias l="ls -la"
alias g="git status"
alias ga="git add --all"
