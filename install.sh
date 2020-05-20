#!/bin/bash

# install depency software
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#install fasd
brew install fasd
#install autojump
brew install autojump
# install tmux
brew install tmux
brew install reattach-to-user-namespace
#install node and nvm
brew install node
brew install nvm
nvm install 10.16
#install percol
brew install python
pip install percol

echo "Install vim configurations..."

echo "cd to .vim directory"
cd ~/.vim


echo "create .vimrc"
rm ~/.vimrc
rm ~/.gvimrc
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/vimrc ~/.gvimrc

#echo "update submodules"
git submodule init
git submodule update


# install tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
