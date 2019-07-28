set nocompatible

syntax enable
filetype plugin on

" File Finder
set path+=**

" shows a menu when using tab completion
set wildmenu

set mouse-=a
set nu

" Keep 100 items in the history.
set history=1000       

" show the cursor position
set ruler

" show incomplete commands.
set showcmd

" set offset for top of screen with z[Enter]
set scrolloff=5

"set hlsearch
set incsearch
set ignorecase
set smartcase
set hidden
"set backup
"set bex=

" break of word
set lbr

" use indentation of current line
set ai

" smart auto indent"
set si

color default
" map <F2> iJohn Smith<CR>123 Main Street<CR>Anytown, NY<CR><ESC>
" map <F3> i<ul><CR><Space><Space><li></li><CR><Esc>0i</ul><Esc>kcit
" map <F4> <Esc>o<li></li><Esc>cit

let mapleader = '\'
map <leader>w :w!<CR>
map <leader>s :source ~/.vimrc<CR>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
inoremap jk <Esc>
