# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme.
ZSH_THEME="simple"

# Plugins.
plugins=(z sublime osx brew chucknorris sudo)



# User configuration

# PATH.
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Source.
source $ZSH/oh-my-zsh.sh

# Aliases.
alias l="ls -lhFG"
alias g="git status"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
