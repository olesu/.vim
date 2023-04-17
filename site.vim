let python_highlight_all=1
let g:python3_host_prog = '/usr/local/bin/python3'

filetype plugin indent on
syntax on

" true color support
if has("termguicolors")
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
  let g:solarized_termtrans = "1"
  colorscheme solarized8
endif

set number
set relativenumber
set autowrite
set noerrorbells
set visualbell t_vb=

set nobackup
set nowritebackup
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
set undofile

set updatetime=300
set signcolumn=yes

let mapleader = ","

inoremap jk <ESC>
tnoremap jk <C-w>N
tnoremap <S-SPACE> <SPACE>

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>

au BufNewFile,BufRead .envrc setlocal filetype=sh

" enable folding
set foldmethod=syntax
set foldcolumn=4

" enable folding with the spacebar
nnoremap <space> za

augroup vimrcSite
au!
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js,*.ts,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Error /\s\+$/
augroup END
