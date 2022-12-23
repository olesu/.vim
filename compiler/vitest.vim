" Vim compiler file
" Compiler:	Vitest
" Maintainer:	Ole Kristian Sunde <ole.sunde@gmail.com>
" Last Change:	2022 Dec 23

if exists("current_compiler")
  finish
endif
let current_compiler = "vitest"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

" CompilerSet makeprg=npx\ --no-install\ jest\ --no-colors

CompilerSet makeprg=npm\ run\ test\ --\ --no-color\ run
CompilerSet errorformat=
      \%EAssertionError:\ %m,
      \%Z\ ❯\ %f:%l:%c,
      \%-G

let &cpo = s:cpo_save
unlet s:cpo_save
