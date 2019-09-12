" Vim indent file
" Language:         Shell Script
" Maintainer:       Nikolai Weibull <now@bitwi.se>
" Latest Revision:  2010-01-06

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetFishIndent()
setlocal indentkeys+=0=else,0=end,)
setlocal indentkeys-=:,0#
setlocal nosmartindent

if exists("*GetFishIndent")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

function s:buffer_shiftwidth()
  return &shiftwidth
endfunction

let s:sh_indent_defaults = {
      \ 'default': function('s:buffer_shiftwidth'),
      \ 'continuation-line': function('s:buffer_shiftwidth'),
      \ 'case-labels': function('s:buffer_shiftwidth'),
      \ 'case-statements': function('s:buffer_shiftwidth'),
      \ 'case-breaks': 0 }

function! s:indent_value(option)
  let Value = exists('b:fish_indent_options')
            \ && has_key(b:sh_indent_options, a:option) ?
            \ b:sh_indent_options[a:option] :
            \ s:sh_indent_defaults[a:option]
  if type(Value) == type(function('type'))
    return Value()
  endif
  return Value
endfunction

function! GetFishIndent()
  let lnum = prevnonblank(v:lnum - 1)
  if lnum == 0
    return 0
  endif

  let pnum = prevnonblank(lnum - 1)

  let ind = indent(lnum)
  let line = getline(lnum)
  if line =~ '^\s*\%(if\|function\|else\|switch\|while\|for\|\)\>'
      if line !~ '\<\%(end\)\>\s*\%(#.*\)\=$'
      let ind += s:indent_value('default')
    endif
  elseif s:is_continuation_line(line)
    if pnum == 0 || !s:is_continuation_line(getline(pnum))
      let ind += s:indent_value('continuation-line')
    endif
  elseif pnum != 0 && s:is_continuation_line(getline(pnum))
    let ind = indent(s:find_continued_lnum(pnum))
  endif

  let pine = line
  let line = getline(v:lnum)
  if line =~ '^\s*\%(else\|end\)\>' || line =~ '^\s*}'
    let ind -= s:indent_value('default')
  endif

  return ind
endfunction

function! s:is_continuation_line(line)
    return a:line =~ '\%(\%(^\|[^\\]\)\\\|;\s*and\|;\s*or\)$'
endfunction

function! s:find_continued_lnum(lnum)
  let i = a:lnum
  while i > 1 && s:is_continuation_line(getline(i - 1))
    let i -= 1
  endwhile
  return i
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save
