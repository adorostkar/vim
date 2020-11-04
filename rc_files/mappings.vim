"********************************
"*** K E Y   M A P P I N G S ****
"********************************
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" Switch search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Disable arrow key for learning purposes
noremap <Up> <Nop>
noremap <Down> <Nop>


" If git repo the search for tags and .vimrc
" Git specific configuration
let git_path = system("git rev-parse --show-toplevel 2>/dev/null")
let git_vimrc = substitute(git_path, '\n', '', '') . "/.git/.vimrc"
let git_tags = substitute(git_path, '\n', '', '') . "/.git/tags"
if !empty(git_path) && !empty(glob(git_vimrc))
    exec ":source " . git_vimrc
endif

if !empty(git_path) && !empty(glob(git_tags))
    exec "set tags^=" . git_tags
endif
