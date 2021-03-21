filetype plugin indent on
syntax on
colorscheme solarized8

set number
set relativenumber

let mapleader = ","

inoremap jk <ESC>

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>

nnoremap ∆ <C-w><C-j>
nnoremap ˚ <C-w><C-k>
nnoremap ¬ <C-w><C-l>
nnoremap ˙ <C-w><C-h>

if has("gui_macvim")
  set background=dark
  set guifont=JetBrainsMono-Regular:h14
endif

if &rtp =~ 'ale'
  set omnifunc=ale#completion#Omnifunc
  let g:ale_fix_on_save = 1
  let g:ale_completion_enabled = 1
  let g:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
endif

