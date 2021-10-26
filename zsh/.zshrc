# vi mode
bindkey 'jk' vi-cmd-mode
bindkey -v

zle-line-init() {
  zle -K vicmd
}

zle -N zle-line-init

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# npm
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin:$HOME/.cargo/bin:$HOME/.local/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# costum scripts
export PATH="$HOME/bin:$PATH"

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# nvim
export EDITOR='nvim'
alias e='nvim'
alias ef='nvim `fzf`'
alias ee='sudo -E nvim'
alias eef='sudo -E nvim `fzf`'

alias es='. /opt/fslc-x11-eaton/3.0/environment-setup-cortexa7t2hf-neon-fslc-linux-gnueabi'

# tmux
alias tn='tmux new -s'
alias ta='tmux attach -t'
alias tl='tmux ls'

# fzf
export FZF_DEFAULT_COMMAND='ag -l --nocolor --hidden --ignore ".git/**" -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
