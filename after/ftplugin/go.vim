setlocal tabstop=4
setlocal shiftwidth=4

let b:ale_fixers = ['gofmt', 'goimports', 'remove_trailing_lines', 'trim_whitespace']
let b:ale_fix_on_save = 1

" spaces are allowed after tabs, but not in between
" this algorithm works well with programming styles that use tabs for
" indentation and spaces for alignment
let g:airline#extensions#whitespace#mixed_indent_algo = 2

command! GoBuild :Dispatch go build ./...
command! GoTest :Dispatch go test ./...

nnoremap <buffer> <C-]> <Plug>(ale_go_to_definition)
nnoremap <buffer> <S-k> <Plug>(ale_hover)
nnoremap <buffer> <Leader>got :GoTest<cr>
nnoremap <buffer> <Leader>gob :GoBuild<cr>

iabbrev <buffer> fmain func main() {}<left>
iabbrev <buffer> test func TestName(t *testing.T) {}<left>

augroup gocmds
  au!
  au BufWritePost *.go GoTest
augroup END
