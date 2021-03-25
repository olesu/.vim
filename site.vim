filetype plugin indent on
syntax on
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
