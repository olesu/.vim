setlocal tabstop=4
setlocal shiftwidth=4

" spaces are allowed after tabs, but not in between
" this algorithm works well with programming styles that use tabs for
" indentation and spaces for alignment
let g:airline#extensions#whitespace#mixed_indent_algo = 2

command! GoBuild :Dispatch go build ./...
command! GoTest :Dispatch go test ./...

nnoremap <buffer> <Leader>got :GoTest<cr>
nnoremap <buffer> <Leader>gob :GoBuild<cr>

iabbrev <buffer> fmain func main() {}<left>
iabbrev <buffer> test func TestName(t *testing.T) {}<left>

augroup gocmds
  au!
  au BufWritePost *.go GoTest
augroup END
