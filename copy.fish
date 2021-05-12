#!/usr/bin/env fish

set --local config ~/.config/fish/
rm -rf ~/.config/fish/functions/
mkdir ~/.config/fish/functions/
cp -v ./fish-functions/* ~/.config/fish/functions/

cp config.fish ~/.config/fish/config.fish

exec fish
