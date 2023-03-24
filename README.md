# Vim Configuration

## Dependencies

- bat (`brew install bat`), syntax highlight in fzf preview windows
- fzf (`brew install fzf`), instead of `fzf#install` hook
- ripgrep (used by fzf.vim)
- minpac
- cmake (for ycm)

## Tips

Redirect ex command output into a register

https://vim.fandom.com/wiki/Capture_ex_command_output

```vim
:redir @a " redirect into register 'a'
:set guifont?
" now the output from 'set guifont?' is available in register 'a'
```

Inspect the runtime path

```vim
echo join(split(&runtimepath, ','), "\n")
```
