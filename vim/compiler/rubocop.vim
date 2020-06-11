" Vim Rubocop Compiler
" Compiler:	rubocop
" Maintainer:	Dylan Pinn <me@dylanpinn.com>

if exists("current_compiler")
    finish
endif
let current_compiler = "rubocop"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=rubocop\ -f\ emacs

" filename:252:3: Error message goes here
CompilerSet errorformat=%f:%l:%c:\ %#%m

let &cpo = s:cpo_save
unlet s:cpo_save