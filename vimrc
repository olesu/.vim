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
  call minpac#add('nvie/vim-flake8')
  call minpac#add('lifepillar/vim-solarized8')
  call minpac#add('folke/tokyonight.nvim')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('vim-scripts/indentpython.vim')
  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
  call minpac#add('github/copilot.vim')
endfunction

function! GetNodePath(dir=expand('~/.vim'), script='node_path.sh')
  return substitute(system(a:dir . '/' . a:script), '\n', '', 'g')
endfunction

let g:coc_node_path = GetNodePath()

source $HOME/.vim/minpac.vim
source $HOME/.vim/site.vim
source $HOME/.vim/coc.vim
source $HOME/.vim/fzf.vim
source $HOME/.vim/fugitive.vim
source $HOME/.vim/nerdtree.vim
" source $HOME/.vim/go.vim
source $HOME/.vim/scratch.vim
source $HOME/.vim/abbrevs.vim
if has("nvim")
  source $HOME/.vim/neo.vim
  source $HOME/.vim/provision_dev.vim
endif

" gui_macvim seems to be set on Neovim/Mac
if has("gui_macvim")
  source $HOME/.vim/mac.vim
endif

echo ">^.^<"
