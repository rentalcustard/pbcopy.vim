" File: pbcopy.vim
" Author: Tom Stuart
" Version: 1.0
" Last modified: February 7, 2011

function! s:pbcopy()
  call system("ssh localhost pbcopy", getreg(""))
endfunction

command! -nargs=0 -bar PBCopy call s:pbcopy()

function! s:pbpaste()
  call setreg("", system("ssh localhost pbpaste"))
endfunction

command! -nargs=0 -bar PBPaste call s:pbpaste()
