" Vim syntax file
" Language: abcout (ABCO-1 implementation)
" Maintainer: sporeball
" Latest Revision: 19 July 2021

if exists("b:current_syntax")
  finish
endif

syntax case match

syn keyword abcoutAbcout abcout
syn keyword abcoutFrom from

syn match abcoutComment /;.*$/
syn match abcoutNumber /\d\+/
syn match abcoutHex /\$[0-9A-Fa-f]\+/

syn match abcoutLabel /.\+:$/
syn match abcoutScopedLabel /#[^ ,]\+/

syn match abcoutMacroStart /%macro/
syn match abcoutMacroEnd /%endmacro/

syn match abcoutImport /@import/
syn match abcoutAsterisk /\*/

let b:current_syntax = "abcout"

hi def link abcoutAbcout Identifier
hi def link abcoutFrom Keyword

hi def link abcoutLabel Label
hi def link abcoutScopedLabel Type

hi def link abcoutComment Comment
hi def link abcoutNumber Number
hi def link abcoutHex Number

hi def link abcoutMacroStart Macro
hi def link abcoutMacroEnd Macro

hi def link abcoutImport Include
hi def link abcoutAsterisk Special
