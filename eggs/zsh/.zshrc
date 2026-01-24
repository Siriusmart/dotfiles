alias neofetch=fastfetch
alias ls="ls --color"

# History
PATH=$PATH:~/.cargo/bin
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt prompt_subst

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# install addons
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light siriusmart/fzf-tab

# Auto suggestions
zinit light zsh-users/zsh-autosuggestions
bindkey '^a' autosuggest-accept
bindkey '^[^i' history-search-backward
bindkey '^[^e' history-search-forward
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # colored suggestions
zstyle ':completion:*' menu no # disable default completion menu
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # cd preview
zstyle ':fzf-tab:complete:ls:*' fzf-preview 'ls --color $realpath' # cd preview
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Load completions
autoload -U compinit && compinit
zinit cdreplay -q

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
bindkey '^o' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word
bindkey '^n' backward-word
bindkey "^H" backward-delete-word

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/yolk/eggs/zsh/.p10k.zsh.
[[ ! -f ~/.config/yolk/eggs/zsh/.p10k.zsh ]] || source ~/.config/yolk/eggs/zsh/.p10k.zsh

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/siriusmart/.opam/opam-init/init.zsh' ]] || source '/home/siriusmart/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# yay -C
function yay() {
    if [[ $1 == "-C" ]]; then
        command yay -R $(command yay -Qdtq)
    else
        command yay "$@"
    fi
}
