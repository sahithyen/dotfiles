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

# tmux
alias tn='tmux new -s'
alias ta='tmux attach -t'

# fzf
export FZF_DEFAULT_COMMAND='ag -l --nocolor --hidden --ignore ".git/**" -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
