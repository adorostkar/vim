"********************************
"****        T E X T         ****
"********************************

" set the text width
setlocal tw=80
" set a color at the end of the width
set colorcolumn=95
highlight ColorColumn ctermbg=darkgray

" enable line numbers / relevant line number
set nu
" set nu relativenumber

" set filetype, plugin and indent check on
filetype plugin indent on

" set search highlighting
set hlsearch
set incsearch

" Show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"********************************
"****       U N D O S        ****
"********************************

" Persistent undo
if !isdirectory($HOME . "/.vim")
    call mkdir($HOME . "/.vim", "", 0770)
endif
if !isdirectory($HOME . "/.vim/undos")
    call mkdir($HOME . "/.vim/undos", "", 0700)
endif
set undofile
set undodir=$HOME/.vim/undos

set undolevels=1000 " This is the default value
set undoreload=10000 " This is the default value
set history=5000 " Set number of command history to keep

"********************************
"****       O T H E R        ****
"********************************
set encoding=utf-8

set nrformats= " Treat all numbers as decimal

" Force Vim to source .vimrc file if it present in working directory,
set exrc
set secure

" Set number of colors for vim
set t_Co=256

" Change mapleader to <space> instead of \
let mapleader=" "


"********************************
"****    G I T   V I M R C   ****
"********************************
let git_path = system("git rev-parse --show-toplevel 2>/dev/null")
let git_vimrc = substitute(git_path, '\n', '', '') . "/.git/.vimrc"
if !empty(glob(git_vimrc))
    exec ":source " . git_vimrc
endif
