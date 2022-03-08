let python_highlight_all=1

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

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Error /\s\+$/

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
