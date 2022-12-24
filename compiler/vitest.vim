let current_compiler = "vitest"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

"  FAIL  test/game/ball.test.ts > ball > keeps moving in the same direction if nothing is hit
"AssertionError: expected 20 to be 21 // Object.is equality
CompilerSet errorformat=%EAssertionError:\ %m,
      \%Z%.%#❯\ %f:%l:%c,
      \%C%.%#
CompilerSet makeprg=npm\ run\ test\ --\ --no-color\ run
