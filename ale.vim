set omnifunc=ale#completion#Omnifunc
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']

nmap <silent> <Leader><f2> <Plug>(ale_previous_wrap)
nmap <silent> <f2> <Plug>(ale_next_wrap)

augroup aleconfig
  autocmd!
  au BufEnter *.ts nnoremap <silent> <buffer> <C-]> <Plug>(ale_go_to_definition)
augroup END
