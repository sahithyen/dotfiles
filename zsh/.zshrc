# General
export EDITOR='nvim'
export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# fzf
export FZF_DEFAULT_COMMAND='ag -l --nocolor --hidden -g ""'

alias tn='tmux new -s'
alias ta='tmux attach -t'
alias e='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
