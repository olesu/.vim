filetype plugin indent on
syntax on

" true color support
set background=light
if has("termguicolors")
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
  " let g:solarized_termtrans = "1"
  colorscheme solarized8
endif

set number
set relativenumber
set autowrite
set noerrorbells
set visualbell t_vb=

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

let mapleader = ","

inoremap jk <ESC>
tnoremap jk <C-w>N
tnoremap <S-SPACE> <SPACE>

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>

au BufNewFile,BufRead .envrc setlocal filetype=sh
" split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
