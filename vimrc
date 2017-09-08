set nocompatible
filetype off

" vim should always use bash
set shell=/bin/bash

" init vundle and run it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all the plugins here
Plugin 'VundleVim/Vundle.vim' " Vundle manages vundle
Plugin 'scrooloose/nerdtree' " Tree view of file tree
Plugin 'altercation/vim-colors-solarized' " Solarized colorscheme
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy File finder
Plugin 'vim-airline/vim-airline' " status bar for the bottom of vim
Plugin 'vim-airline/vim-airline-themes' " themes for status bar
Plugin 'ntpeters/vim-better-whitespace' " Highlight trailing whitespace
Plugin 'vim-syntastic/syntastic' " Syntax checker for Vim
Plugin 'tpope/vim-fugitive' " git wrapper for vim

" end the plugins
call vundle#end()
filetype plugin indent on

" Set NerdTree hotkey
map <C-n> :NERDTreeToggle<CR>

" Settings for CTRL-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git'

" Setup Syntastic for C++
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Set Syntastic defaults per recommendations in their README
set statusline+=%#warningmsg#
set statusline+={SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Set the line numbers
set relativenumber
set number

" Set the colorscheme
syntax enable
set background=dark
colorscheme solarized

" configure airline
let g:airline_theme='solarized'
set laststatus=2 " make airline show up right away
let g:airline#extensions#tabline#enabled = 1

" fix some annoying things with capital letters for :w and :q
:command WQ wq
:command Wq wq
:command Q q
:command W w

" more sensible keybindings for splits
" move between splits with just <ctrl>-hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" open splits to the right of and below the current file, which feels better
" than the alternative
set splitbelow
set splitright

" set filetypes properly
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Spellcheck
" set spelllang=en_us
set complete+=kspell " when spellchecking is on, completion should be too
autocmd FileType markdown setlocal spell " markdown files
autocmd FileType gitcommit setlocal spell " git commit messages

" Filetype preferences
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

