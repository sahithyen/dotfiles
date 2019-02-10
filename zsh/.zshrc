# Oh My Zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/bin"

# User configuration
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
