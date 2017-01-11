set nocompatible
filetype off

" init vundle and run it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Add all the plugins here
Plugin 'VundleVim/Vundle.vim' " Vundle manages vundle
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'


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
