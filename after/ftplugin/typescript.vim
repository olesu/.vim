setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4
setlocal smartindent
setlocal cindent
let b:ale_fix_on_save = 1
let b:ale_fixers = ['eslint']

nnoremap <buffer> <Leader>rt :Dispatch npm run test run %:r:t<cr>
nnoremap <buffer> <aeader>ra :Dispatch npm run test run<cr>
