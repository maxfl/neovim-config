function plugin_cfg#sandwich#post_source()
    let g:TexEnvironments = [
                \   'array', 'center', 'description', 'enumerate', 'eqnarray', 'equation',
                \   'equation*', 'figure', 'flushleft', 'flushright', 'itemize', 'list',
                \   'minipage', 'picture', 'quotation', 'quote', 'tabbing', 'table',
                \   'tabular', 'tabular*', 'thebibliography', 'theorem', 'titlepage',
                \   'verbatim', 'verse'
                \ ]

    function! TexEnvCompl(argread, cmdline, cursorpos) abort
        let n = strlen(a:argread)
        let list = copy(g:TexEnvironments)
        if n > 0
            let list = filter(list, 'v:val[: n-1] ==# a:argread')
        endif
        return list
    endfunction

    function! TexEnvInput(is_head) abort
        if a:is_head
            let b:TexEnvLast = input('Environment-name: ', '', 'customlist,TexEnvCompl')
            let command = printf('\begin{%s}', b:TexEnvLast)
        else
            let command = printf('\end{%s}', b:TexEnvLast)
        endif
        return command
    endfunction

    function! TexCmdInput(is_head) abort
        if a:is_head
            let l:TexCmdLast = input('Command: ', '')
            let command = printf('\%s{', l:TexCmdLast)
        else
            let command = '}'
        endif
        return command
    endfunction

    nmap s <Nop>
    xmap s <Nop>
    let g:sandwich#recipes = [
                \	{'buns': ["‘", "’"],                 'nesting': 1, 'input': [ "u'" ]  },
                \	{'buns': ['“', '”'],                 'nesting': 1, 'input': [ 'u"' ]  },
                \	{'buns': ['„', '“'],                 'nesting': 1, 'input': [ 'u,' ]  },
                \	{'buns': ['«', '»'],                 'nesting': 1, 'input': [ 'u<' ]  },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ["``", "``"],               'nesting': 0, 'input': [ "2`" ],  'filetype': ['rst'] },
                \   {'buns': ["'''", "'''"],             'nesting': 0, 'input': [ "3'" ],  'filetype': ['python'] },
                \   {'buns': ['"""', '"""'],             'nesting': 0, 'input': [ '3"' ],  'filetype': ['python', 'julia'] },
                \   {'buns': ['[(', ')]'],               'nesting': 1, 'input': [ '2[' ],  'filetype': ['python'] },
                \   {'buns': ['([', '])'],               'nesting': 1, 'input': [ '2(' ],  'filetype': ['python'] },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ["`", "'"],                 'nesting': 1, 'input': [ "l'", "l`" ], 'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ["``", "''"],               'nesting': 1, 'input': [ 'l"' ],       'filetype': ['tex', 'plaintex', 'rst'], },
                \	{'buns': ['"`', "\"'"],              'nesting': 1, 'input': [ 'L"' ],       'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': [",,", "``"],               'nesting': 1, 'input': [ 'l,' ],       'filetype': ['tex', 'plaintex', 'rst'], },
                \	{'buns': ['<<', '>>'],               'nesting': 1, 'input': [ 'l<' ],       'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\{', '\}'],               'nesting': 1, 'input': [ '\{' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\[', '\]'],               'nesting': 1, 'input': [ '\[' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\(', '\)'],               'nesting': 1, 'input': [ '\(' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ['\left(',           '\right)'],           'nesting': 1, 'input': [ 'm(' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '(,)' },
                \	{'buns': ['\left[',           '\right]'],           'nesting': 1, 'input': [ 'm[' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '[,]' },
                \	{'buns': ['\left|',           '\right|'],           'nesting': 1, 'input': [ 'm|' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\left\{',          '\right\}'],          'nesting': 1, 'input': [ 'm{' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\left\langle ',    '\right\rangle '],    'nesting': 1, 'input': [ 'm<' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\bigleft(',        '\bigright)'],        'nesting': 1, 'input': [ 'M(' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '(,)' },
                \	{'buns': ['\bigleft[',        '\bigright]'],        'nesting': 1, 'input': [ 'M[' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '[,]' },
                \	{'buns': ['\bigleft|',        '\bigright|'],        'nesting': 1, 'input': [ 'M|' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\bigleft\{',       '\bigright\}'],       'nesting': 1, 'input': [ 'M{' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\bigleft\langle ', '\bigright\rangle '], 'nesting': 1, 'input': [ 'M<' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \ ]
    "if exists( 'g:sandwich#default_recipes' )
    let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)+g:sandwich#recipes
    "else
        "let g:sandwich#recipes = []+g:sandwich#recipes
    "end

    let g:sandwich#recipes += [
                \   {
                \       'buns'    : ['‘\|“\|«', '’\|”\|»'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['U'],
                \   },
                \   {
                \       'buns'    : ['\begingroup', '\endgroup'],
                \       'nesting' : 1,
                \       'input': [ '\gr' ],
                \       'filetype': ['tex', 'plaintex'],
                \       'linewise': 1
                \   },
                \   {
                \       'buns'    : ['\toprule', '\bottomrule'],
                \       'nesting' : 1,
                \       'input': [ '\tr', '\br' ],
                \       'filetype': ['tex', 'plaintex'],
                \       'linewise': 1
                \   },
                \   {
                \       'buns'    : ['TexCmdInput(1)', 'TexCmdInput(0)'],
                \       'filetype': ['tex', 'plaintex', 'rst'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'expr'    : 1,
                \       'nesting' : 1,
                \       'input'   : ['c'],
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \   {
                \       'buns'    : ['TexEnvInput(1)', 'TexEnvInput(0)'],
                \       'filetype': ['tex', 'plaintex'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'expr'    : 1,
                \       'nesting' : 1,
                \       'linewise' : 1,
                \       'input'   : ['e'],
                \       'indentkeys-' : '{,},0{,0}',
                \       'autoindent' : 2
                \   },
                \   {
                \       'buns'    : ['\\\a\+\(\*\?\|<[^>]*>\){', '}'],
                \       'filetype': ['tex', 'plaintex', 'rst'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['c'],
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \   {
                \       'buns'    : ['\\begin{[^}]*}\(\[.*\]\)\?', '\\end{[^}]*}'],
                \       'filetype': ['tex', 'plaintex'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'linewise' : 1,
                \       'input'   : ['e'],
                \       'indentkeys-' : '{,},0{,0}',
                \       'autoindent' : 0
                \   },
                \   {
                \       'buns'    : ['\(\\left\((\|\[\||\|\\{\|\\langle\|\\lvert\)\|\\left\.\)', '\(\\right\()\|]\||\|\\}\|\\rangle\|\\rvert\)\|\\right\.\)'],
                \       'filetype': ['tex', 'plaintex', 'rst'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['ma'],
                \       'indentkeys-' : '{,},0{,0}',
                \       'autoindent' : 0
                \   },
                \ ]
    let g:sandwich#recipes += [
                \	{
                \       'buns': ['{ ', ' }'],
                \       'input' : ['}'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'skip_break': 1,
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \	{
                \       'buns': ['[ ', ' ]'],
                \       'input' : [']'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '[,]'
                \   },
                \	{
                \       'buns': ['( ', ' )'],
                \       'input' : [')'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '(,)'
                \   },
                \	{
                \       'buns': ['{\s*', '\s*}'],
                \       'input' : ['}'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'skip_break': 1,
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \	{
                \       'buns': ['\[\s*', '\s*\]'],
                \       'input' : [']'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '[,]'
                \   },
                \	{
                \       'buns': ['(\s*', '\s*)'],
                \       'input' : [')'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '(,)'
                \   },
                \ ]

    let g:sandwich#recipes += [
                \   {
                \       'buns'    : ['\(if\|function\|switch\|for\|while\)', 'end'],
                \       'filetype': ['fish'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['S'],
                \   },
                \   {
                \       'buns'    : ['^\s*\(if\|function\|switch\|for\|while\).*', '^\s*end\s*$'],
                \       'filetype': ['fish'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'linewise': 1,
                \       'input'   : ['s'],
                \   },
                \   {
                \       'buns'    : ['function', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['ff'],
                \   },
                \   {
                \       'buns'    : ['begin', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fb'],
                \   },
                \   {
                \       'buns'    : ['while', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fw'],
                \   },
                \   {
                \       'buns'    : ['for', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fc'],
                \   },
                \   {
                \       'buns'    : ['switch', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fs'],
                \   },
                \   {
                \       'buns'    : ['if', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fi'],
                \   },
                \ ]
endfunction

