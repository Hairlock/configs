syntax enable
filetype plugin indent on

set nocompatible
set path+=**

set wildmenu
set wildmode=longest,list,full
set wildignore+=*\\tmp*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set completeopt+=longest

set shell=bash
set encoding=utf8
set secure     " No arbitrary commands can run from foreign vimrcs
set cursorline " Highlight the current line
set autoread  " Autoreload from disk
set noswapfile
set updatecount=0 " Disable swap files
" set colorcolumn=80 "Ruler at 80 chars
set nofoldenable "Disable code folding
set clipboard+=unnamedplus " Use system clipboard for yanks
set textwidth=80 " Wrap text at 80 chars
set updatetime=100
set backupcopy=yes " For file watchers

set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround " Indent/Outdent to the nearest tabstop
set expandtab " Use spaces instead of tabs
set smarttab  " Use tabs at the start of a line, spaces elsewhere


set history=1000
set ruler
set showcmd
set number
set showmode
set smarttab
set smartindent
set ai
set si
set lbr
set autoindent
set expandtab
set tags=tags
set hidden
set ignorecase
set scrolloff=5

set smartcase
set incsearch
set nohlsearch

" Backspace behavior
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set mouse=a

" Ctrl+arrow to resize pane
nnoremap <c-up>    :resize +2<CR>
nnoremap <c-down>  :resize -2<CR>
nnoremap <c-left>  :vertical resize -2<CR>
nnoremap <c-right> :vertical resize +2<CR>

let mapleader = ','
let maplocalleader = ','
map <leader>w :w!<CR>
map <leader>s :source ~/.vimrc<CR>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
inoremap jk <Esc>

" Plain arrows move text around
nmap <up>    [e
nmap <down>  ]e
nmap <left>  <<
nmap <right> >>
vmap <up>    [egv
vmap <down>  ]egv
vmap <left>  <gv
vmap <right> >gv

" Load Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'


Plug 'NLKNguyen/papercolor-theme'

call plug#end()


" Fzf Config
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
nmap <c-p> :GitFiles<cr>
map ; :Files<cr>

" Ale Config
let g:ale_linters = {
\   'sh': ['shellcheck'],
\   'nix': ['nix'],
\   'make': ['checkmake'],
\   'haskell': ['hlint'],
\   'purescript': ['purescript-language-server'],
\   'elm': ['make'],
\}

let g:ale_linters_explicit = 1 " Only use specified linters

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" https://github.com/w0rp/ale/blob/master/autoload/ale/fix/registry.vim
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'elm': ['elm-format'],
\   'sh': ['shfmt'],
\   'dhall': ['DhallFormat'],
\   'haskell': ['stylish-haskell'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'json': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'less': ['prettier'],
\   'markdown': ['prettier'],
\   'yaml': ['prettier'],
\}
let g:ale_fix_on_save = 1

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_set_highlights = 0

" NerdTree Config
map  <c-n>     :NERDTreeToggle<cr>
nmap <leader>n :NERDTreeFind<cr>

let g:NERDTreeWinPos = 'left'
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 35
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['\.git$']
let g:NERDTreeRespectWildIgnore = 1


" Lightline Config
let g:lightline = {
\   'colorscheme': 'powerline',
\   'inactive': {
\       'left': [
\           [ 'absolutepath' ]
\       ]
\   },
\   'active': {
\       'left': [
\           [ 'mode', 'paste' ],
\           [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ]
\       ]
\   },
\   'component_function': {
\       'gitbranch': 'fugitive#head'
\   },
\   'separator': { 'left': '|', 'right': '|' },
\}


" PaperColor Config
let g:PaperColor_Theme_Options = {'theme': {'default.dark': { 'transparent_background': 1 } } }
colorscheme PaperColor
set background=dark
