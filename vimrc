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

" fix some annoying things with capital letters for :w and :q
:command WQ wq
:command Wq wq
:command Q q
:command W w

" more sensible keybindings for splits
nnoremap <C-J> <C-W><C-J> " move btween splits with just Ctrl-HJKL
nnoremap <C-K> <C-W><C-K> " move btween splits with just Ctrl-HJKL
nnoremap <C-H> <C-W><C-H> " move btween splits with just Ctrl-HJKL
nnoremap <C-L> <C-W><C-L> " move btween splits with just Ctrl-HJKL

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

