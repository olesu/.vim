function! PackList(...)
  call PackInit()
  return join(sort(keys(minpac#getpluglist())), "\n")
endfunction

command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()
command! -nargs=1 -complete=custom,PackList
      \ PackOpenDir call PackInit() | call term_start(&shell,
      \ 	{'cwd': minpac#getpluginfo(<q-args>).dir,
      \		'term_finish': 'close'})
command! -nargs=1 -complete=custom,PackList
      \ PackOpenUrl call PackInit() | call openbrowser#open(
      \		minpac#getpluginfo(<q-args>).url)
