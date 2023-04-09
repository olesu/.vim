setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4
setlocal smartindent
setlocal cindent

command! RunTests :compiler vitest|Dispatch
