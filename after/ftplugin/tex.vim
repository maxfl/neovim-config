if isdirectory(expand('~/texmf/tex/latex'))
    setl path+=~/texmf/tex/latex/*/
endif
setl suffixesadd=.tex,.sty,.cls

compiler tex
"let efm_back = &efm
set efm<
"let &efm = &efm.','.efm_back
setlocal makeprg=latexmk\ -pdf\ %
setlocal spell
setlocal shiftwidth=2
"setlocal textwidth=100
setlocal matchpairs+=$:$
"setlocal wrap
cnoremap <buffer> <C-Space> \_s\+

let b:endwise_words = '\\begin{\zs[a-zA-Z0-9*]*\ze}' " ignored
let b:endwise_pattern = '\\begin{\zs[a-zA-Z0-9*]*\ze}'
let b:endwise_addition = '\\end{&}'
let b:endwise_syngroups = 'XXXX'

if exists('g:AutoPairs')
    let b:AutoPairs=copy(g:AutoPairs)
    call extend( b:AutoPairs, { "`" : "'", '$' : '$' } )
endif

if exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns.tex =
          \ '\v\\\a*(ref|cite)\a*([^]]*\])?\{(|[^}]*,)'
endif

"if neobundle#is_installed( 'LaTeX-Box' )
    "if !exists('g:LatexBox_open_pats_updated')
        "let g:LatexBox_open_pats +=[ '\\begingroup', '\\if\\\?[@a-zA-Z]*']
        "let g:LatexBox_close_pats+=[ '\\endgroup',   '\\fi'  ]
        "let g:LatexBox_open_pats +=[ '``', ',,', '"`',  '`', '<<', '“', '„', '‘', '«' ]
        "let g:LatexBox_close_pats+=[ "''", '``', "\"'", "'", ">>", '”', '“', '’', '»' ]
        "let g:LatexBox_open_pats_updated=1
    "endif

    "imap <buffer> [[     \begin{
    "imap <buffer> ]]     <Plug>LatexCloseCurEnv
    "nmap <buffer> <F5>   <Plug>LatexChangeEnv
    "nmap <buffer> <S-F5> <Plug>LatexToggleStarEnv
    "vmap <buffer> <F7>   <Plug>LatexWrapSelection
    "vmap <buffer> <S-F7> <Plug>LatexEnvWrapSelection
    "imap <buffer> ((     \eqref{
    "" map  <silent> <buffer> ¶ :call LatexBox_JumpToNextBraces(0)<CR>
    "" map  <silent> <buffer> § :call LatexBox_JumpToNextBraces(1)<CR>
    "imap <silent> <buffer> <A-j> <C-R>=LatexBox_JumpToNextBraces(0)<CR>
    "imap <silent> <buffer> <A-k> <C-R>=LatexBox_JumpToNextBraces(1)<CR>
"endif

"" r - latex double russian quotes
"let b:surround_99 = "\"`\r\"'"
"" e - latex double english quotes
"let b:surround_101 = "``\r''"
"" E - latex single english quotes
"let b:surround_69 = "`\r'"
"" L - latex scalable brackets
"let b:surround_76 = "\\left\1left: \1 \r \\right\2right: \2"
" C - latex command
"let b:surround_67 = "\\\1command: \1{\r}"

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
