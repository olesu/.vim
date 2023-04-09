setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab
setlocal softtabstop=2
setlocal smartindent
setlocal cindent

let b:ale_fixers = ['prettier']
let b:ale_fix_on_save = 1
nnoremap <buffer> <C-]> <Plug>(ale_go_to_definition)
nnoremap <buffer> <S-k> <Plug>(ale_hover)

command! RunTests :compiler vitest|Dispatch
