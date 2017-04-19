#!/bin/bash

echo "Installing dotfiles"

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
# [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" submodule update --init

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/tmux/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/nvim" ~/.config/nvim
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc

## Package managers & packages

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ack
brew install elixir
brew install hub
brew install neovim
brew install nginx
brew install nvm
brew install php70
brew install python
brew install python3
brew install postgresql
brew install reattach-to-user-namespace
brew install ruby
brew install tmux
brew install tree
brew install yarn
brew install zsh
brew install zsh-completions

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

apps=(
google-chrome
slack
spotify
virtualbox
iterm2
postico
postman
docker
docker-toolbox
yed
caffeine
)

brew cask install "${apps[@]}"

Quick Look Plugins
# (https://github.com/sindresorhus/quick-look-plugins)

source osxdefaults.sh

pip install jedi
pip install ropevim
pip install awscli

# zsh setup
chsh -s /bin/zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "Done."
