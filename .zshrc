# -----
# Setup
# -----

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme.
ZSH_THEME="simple"

# Plugins.
plugins=(z sublime osx brew chucknorris sudo npm zsh-syntax-highlighting)



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

# Calling nvm use automatically in a directory with a .nvmrc file
# https://github.com/nvm-sh/nvm/blob/edacf8275e3bef4a80971625ed89df13a9af427c/README.md#zsh
# Place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

export PATH="/usr/local/opt/mysql-client/bin:$PATH"
