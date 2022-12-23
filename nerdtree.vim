nnoremap <Leader>e :NERDTreeMirror<CR>:NERDTreeToggle<CR>

augroup _nerdtree
  autocmd!
  " If another buffer tries to replace NERDTree, put it in the other window,
  " and bring back NERDTree
  au BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') < 1 |
        \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
augroup END
