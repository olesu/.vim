let current_compiler = "vitest"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=%EAssertionError:\ %m,
      \%Z%.%#❯\ %f:%l:%c,
      \%C%.%#
CompilerSet makeprg=npm\ run\ test\ --\ --no-color\ run
