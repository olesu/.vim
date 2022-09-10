setlocal shiftwidth=4
setlocal tabstop=4
let b:ale_fix_on_save = 0

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

nmap <F9> :<C-u>call <SID>build_go_files()<CR>
nmap <C-S-r> <Plug>(go-run)
nmap <C-S-t> <Plug>(go-test)

" spaces are allowed after tabs, but not in between
" this algorithm works well with programming styles that use tabs for
" indentation and spaces for alignment
let g:airline#extensions#whitespace#mixed_indent_algo = 2
