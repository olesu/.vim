function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('tpope/vim-sensible')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
  call minpac#add('dense-analysis/ale')
  call minpac#add('lifepillar/vim-solarized8')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('tyru/open-browser.vim')
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')
endfunction

source $HOME/.vim/minpac.vim
source $HOME/.vim/site.vim
source $HOME/.vim/ale.vim
source $HOME/.vim/fzf.vim

if has("gui_macvim")
  source $HOME/.vim/mac.vim
endif
