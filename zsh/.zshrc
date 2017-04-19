# Path to your oh-my-zsh installation.
export ZSH=/Users/brandon.richards/.oh-my-zsh
source $HOME/.tokens.zsh

# Set name of the theme to load.
ZSH_THEME="avit"

plugins=( coffee git git-flow osx brew ruby python node npm vagrant )
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Elixer source
export PATH="$PATH:/path/to/elixir/bin"

# NVM
# export NVM_DIR="$HOME/.nvm"
#   . "$(brew --prefix nvm)/nvm.sh"

#################################
# ALIAS
#################################
source $HOME/.dotfiles/zsh/aliases.zsh

export PATH="/usr/local/sbin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

#YARN (js)
export PATH="$PATH:`yarn global bin`"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#algs4 //princeton algorithem class
export CLASSPATH=$CLASSPATH:/Users/brandonrichards/algs4/stdlib.jar:/Users/brandonrichards/algs4/algs4.jar

#################################
# ALIAS
#################################
source $HOME/.dotfiles/zsh/aliases.zsh

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#################################
# AUTO COMPLETE
#################################
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
  . $LUNCHY_DIR/lunchy-completion.zsh
fi
