filetype plugin indent on
syntax on
colorscheme solarized8

set number
set relativenumber

let mapleader = ","

inoremap jk <ESC>
tnoremap jk <C-w>N

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>