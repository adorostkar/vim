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
noremap <Left> :Bu<CR>
noremap <Right> :FZF -i<CR>
