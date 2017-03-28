set nocompatible
filetype off

" init vundle and run it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all the plugins here
Plugin 'VundleVim/Vundle.vim' " Vundle manages vundle
Plugin 'scrooloose/nerdtree' " Tree view of file tree
Plugin 'altercation/vim-colors-solarized' " Solarized colorscheme
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy File finder
Plugin 'vim-airline/vim-airline' " status bar for the bottom of vim
Plugin 'ntpeters/vim-better-whitespace' " Highlight trailing whitespace
Plugin 'vim-syntastic/syntastic' " Syntax checker for Vim

" end the plugins
call vundle#end()
filetype plugin indent on

" Set NerdTree hotkey
map <C-n> :NERDTreeToggle<CR>

" Set CTRL-p hotkey
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set the line numbers
set relativenumber
set number

" Set the colorscheme
syntax enable
set background=dark
colorscheme solarized

" fix some annoying things with capital letters for :w and :q
:command WQ wq
:command Wq wq
:command Q q
:command W w
