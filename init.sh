#!/usr/bin/env/bash

# OSX setup script for development

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install iterm2
brew cask install iterm2

# install fish
brew install fish

# install sl
brew install sl

# clone solarized
git clone git@github.com:altercation/solarized.git ~/solarized

# install android studio
brew cask install android-studio

# install chrome
brew cask install google-chrome

# install tree
brew install tree

# install python
brew install python

# install java
brew cask install java

# install ktlint
brew install ktlint

# install imagemagick
brew install imagemagick

# install pandoc
brew install pandoc
brew cask install basictex

# set git name
git config --global user.name "Elijah Verdoorn"

# set git editor to vim
git config --global core.editor $(which vim)

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# symlink .vimrc
ln -sf ~/dotfiles/vimrc ~/.vimrc

# symlink .vimrc
ln -sf ~/dotfiles/ideavimrc ~/.ideavimrc

# install vim plugins
vim +PluginInstall +qall

# copy fish functions
fish copy.fish

# set shell to fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

