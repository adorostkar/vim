" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/bundle')
" Initialize plugin system
Plug 'ciaranm/securemodelines'
Plug 'dhruvasagar/vim-table-mode' " Table creation plugin
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox' " Color scheme for c++
Plug 'nelstrom/vim-visual-star-search'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'octol/vim-cpp-enhanced-highlight' " Color scheme for c++
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'sk1418/QFGrep'
Plug 'skywind3000/asyncrun.vim'
Plug 'tomtom/tcomment_vim' " C++ and other language comments
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch' " Make
Plug 'tpope/vim-fugitive' " Git plugin
Plug 'tpope/vim-surround' " Surround plugin
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/a.vim'
" Initialize plugin system
call plug#end()

"********************************
"****    S T A R T I F Y     ****
"********************************
let g:startify_bookmarks = [ {'b': '~/.bashrc.user'}, {'v': '~/.vim/vimrc'}, {'t': '~/.tmux.conf'} ]

let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]
"
"********************************
"** C + +   H I G H L I G H T  **
"********************************
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

"**************************************
"******   C O L O R  T H E M E   ******
"**************************************
syntax on
" colorscheme gruvbox
colorscheme PaperColor
set background=light

"********************************
"****          A C K         ****
"********************************
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif
if executable('rg')
	let g:ackprg = 'rg --vimgrep --no-heading'
endif
