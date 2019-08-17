# General
export EDITOR='nvim'
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

source $ZSH/oh-my-zsh.sh

# fzf
export FZF_DEFAULT_COMMAND='ag -l --nocolor --hidden --ignore ".git/**" -g ""'

alias tn='tmux new -s'
alias ta='tmux attach -t'
alias e='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
