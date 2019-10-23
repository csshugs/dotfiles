# -----
# Setup
# -----

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme.
ZSH_THEME="simple"

# Plugins.
plugins=(z sublime osx brew chucknorris sudo)



# ------------------
# User configuration
# ------------------

# PATH.
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Source.
source $ZSH/oh-my-zsh.sh

# Aliases.
alias l="ls -lhFG"
alias g="git status"
alias sag="say -v Anna"

# Add zsh iTerm2 integration.
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="~/.pyenv/bin:$PATH"

# Add FuzzyFinder integration.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



# ----------------------------------------------------------
# Change npm packages folder for globally installed packages
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
# ----------------------------------------------------------

NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
