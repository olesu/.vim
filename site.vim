filetype plugin indent on
syntax on

" true color support
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:solarized_termtrans = "1"
colorscheme solarized8

set number
set relativenumber
set autowrite
set noerrorbells
set visualbell t_vb=

let mapleader = ","

inoremap jk <ESC>
tnoremap jk <C-w>N
tnoremap <S-SPACE> <SPACE>

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>
