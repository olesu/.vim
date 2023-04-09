setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab
setlocal softtabstop=2
setlocal smartindent
setlocal cindent

command! RunTests :compiler vitest|Dispatch
