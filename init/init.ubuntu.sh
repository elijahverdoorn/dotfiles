# Various utilities
apt install git
apt install vim
apt install sl
apt install tree

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

