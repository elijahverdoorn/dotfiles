# Various utilities
sudo apt install git
sudo apt install vim
sudo apt install sl
sudo apt install tree
sudo apt install curl

# Git configurations
git config --global user.name "Elijah Verdoorn"
git config --global user.email "elijah@elijahverdoorn.com"
git config --global core.editor $(which vim)

# Colors
git clone git@github.com:altercation/solarized.git ~/solarized

# Vim configurations
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ~/dotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall

# Fish shell
apt install fish
fish copy.fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

# LaTex
apt-get install pandoc
apt-get install texlive

# NPM
apt-get install npm

# Android Studio libraries
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

# Java
apt install openjdk-8-jdk

# Kotlin CLI compiler
# See https://kotlinlang.org/docs/tutorials/command-line.html
snap install kotlin --classic

# Android Studio
snap install android-studio --classic

# Slack
snap install slack --classic

# Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd

