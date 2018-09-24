# Oh My Zsh
export ZSH="/home/sahithyenk/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
