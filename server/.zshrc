# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    alias pacman='pacman --color=auto'

    # Take advantage of $LS_COLORS for completion as well
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
fi

#alias ls="ls --color=auto"
alias ll='ls -l'
alias la='ls -la'

bindkey "^[f" forward-word             # Move forward one word (ALT + F)
bindkey "^[b" backward-word            # Move backward one word (ALT + B)
bindkey "^[[1;5D" backward-word        # Move backward one word (Ctrl + Left Arrow)
bindkey "^[[1;5C" forward-word         # Move forward one word (Ctrl + Right Arrow)
bindkey "^[[H" beginning-of-line       # Move to the beginning of the line (Home key)
bindkey "^[[F" end-of-line             # Move to the end of the line (End key)
bindkey "^[[3~" delete-char            # Delete character under the cursor (Delete key)
bindkey "^[[A" history-search-backward # Search through history backward based on input (Up Arrow)
bindkey "^[[B" history-search-forward  # Search through history forward based on input (Down Arrow)

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory

autoload -U compinit
compinit

ZSH_AUTOSUGGEST_STRATEGY=(history)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=vim
export GOPATH=$HOME/.go

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
