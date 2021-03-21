# Vim Configuration

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
