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

function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('tyru/open-browser.vim')
endfunction

function! PackList(...)
  call PackInit()
  return join(sort(keys(minpac#getpluglist())), "\n")
endfunction

command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()
command! -nargs=1 -complete=custom,PackList
      \ PackOpenDir call PackInit() | call term_start(&shell,
      \ 	{'cwd': minpac#getpluginfo(<q-args>).dir,
      \		'term_finish': 'close'})
command! -nargs=1 -complete=custom,PackList
      \ PackOpenUrl call PackInit() | call openbrowser#open(
      \		minpac#getpluginfo(<q-args>).url)
