export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lyp1noff"

# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=vim
