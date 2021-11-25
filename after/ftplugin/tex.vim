if isdirectory(expand('~/texmf/tex/latex'))
    setl path+=~/texmf/tex/latex/*/
endif
setl suffixesadd=.tex,.sty,.cls

compiler tex
"let efm_back = &efm
set efm<
setlocal makeprg=latexmk\ -pdf\ %
setlocal spell
setlocal shiftwidth=2
"setlocal textwidth=100
setlocal matchpairs+=$:$
setlocal wrap
cnoremap <buffer> <C-Space> \_s\+

if exists("loaded_matchit")
    if has('b:match_words')
        let b:match_words.=',\\begin\s*\({\a\+\*\=}\):\\end\s*\1'
    else
        let b:match_words='\\begin\s*\({\a\+\*\=}\):\\end\s*\1'
    endif
    let b:match_words.="\\begingroup:\\endgroup,\\if\\\?[@a-zA-Z]*:\\fi"
    let b:match_words.=",``:'',\"`:\"',`:',<<:>>"
    let b:match_words.="“:”,‘:’,«:»,„:“"
endif

"call TexBindings()
