function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('tpope/vim-sensible')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('preservim/nerdtree')
  call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
  call minpac#add('vim-syntastic/syntastic')
  call minpac#add('nvie/vim-flake8')
  call minpac#add('lifepillar/vim-solarized8')
  call minpac#add('tomasr/molokai')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('tyru/open-browser.vim')
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('tmhedberg/SimpylFold')
  call minpac#add('Konfekt/FastFold')
  call minpac#add('vim-scripts/indentpython.vim')
  call minpac#add('Valloric/YouCompleteMe', {'do': '!./install.py --all'})
  call minpac#add('fatih/vim-go')
  call minpac#add('preservim/tagbar')
endfunction

source $HOME/.vim/minpac.vim
source $HOME/.vim/site.vim
source $HOME/.vim/fzf.vim
source $HOME/.vim/fugitive.vim
source $HOME/.vim/nerdtree.vim
source $HOME/.vim/ale.vim

" gui_macvim seems to be set on Neovim/Mac
if has("gui_macvim")
  source $HOME/.vim/mac.vim
endif

