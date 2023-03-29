function! s:NewScratch()
  exe 'new' . '__scratch__'
endfunction

function! s:ConfigureScratch()
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction

autocmd BufNewFile __scratch__ call s:ConfigureScratch()
command! NewScratch call s:NewScratch()
