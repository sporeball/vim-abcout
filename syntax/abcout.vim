" Vim syntax file
" Language: abcout (ABCO-1 implementation)
" Maintainer: sporeball
" Latest Revision: 19 July 2021

if exists("b:current_syntax")
  finish
endif

syntax case match

syn match abcoutAbcout /abcout/
syn match abcoutComment /;.*$/
syn match abcoutNumber /\d\+/
syn match abcoutHex /\$[0-9A-Fa-f]\+/

let b:current_syntax = "abcout"

hi def link abcoutAbcout Identifier
hi def link abcoutComment Comment
hi def link abcoutNumber Number
hi def link abcoutHex Number
