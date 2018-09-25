# Oh My Zsh
export ZSH="~/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
