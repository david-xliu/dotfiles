# Path to your oh-my-zsh installation.
export ZSH=/Users/xianglin.liu/.oh-my-zsh

# Set theme
ZSH_THEME="custom"

# Laod plugins and oh-my-zsh
plugins=(
  git
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Some nvm config stuff 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # Loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
