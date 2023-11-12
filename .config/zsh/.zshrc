SAVEHIST=1000
HISTFILE=~/.local/share/zsh/.zsh_history

# yay -C
function yay() {
    if [[ $1 == "-C" ]]; then
        command yay -R $(command yay -Qdtq)
    else
        command yay "$@"
    fi
}

function df() {
    if [[ $1 == "-A" ]]; then
        command duf
    else
        command duf --hide special "$@"
    fi
}

# Alias
alias canto=canto-curses
alias dispatch="hyprctl dispatch exec"
alias ssh="export TERM=linux && ssh"
alias ls="eza --icons=auto"
alias l="ls -l"
alias tree="ls --tree"
alias find="fd"
alias mann=tldr
alias du="du -d 1 -h | sort -h"
alias dut="ncdu --color dark"

# Setopts
setopt autocd
unsetopt beep

# Ignore case completion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-       z}' 'r:|[._-]=* r:|=* l:|=*'

# Set prompt theme
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'

# Autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
