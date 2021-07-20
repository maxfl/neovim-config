function plugin_cfg#quickui#add()
    map <F9> :call quickui#menu#open()<CR>
    let g:quickui_border_style = 2
    let g:quickui_show_tip = 1
endfunction

function plugin_cfg#quickui#post_source()
    call quickui#menu#install('&Editing', [
                \   [ 'Toggle &autopairs',    'call AutoPairsToggle()'],
                \   [ 'Toggle &table-mode	\tm',   'normal \tm'],
                \   [ '--', '--' ],
                \   [ 'Subscript mode (&_)	\is',   'IsotopeToggle SUBSCRIPT'],
                \   [ 'Superscript mode (&^)	\iS',   'IsotopeToggle SUPERSCRIPT'],
                \   [ 'Small&caps mode	\ic',   'IsotopeToggle SMALL_CAPS'],
                \   [ '&Fraktur mode	\if',   'IsotopeToggle FRAKTUR'],
                \   [ '&Disable Isotope	\id',   'IsotopeToggle'],
                \   [ '--', '--' ],
                \   [ '&Remove trailing whitespace	\rts', 'FixWhitespace'],
                \ ])

    call quickui#menu#install('&Search', [
                \   [ '&Far	:Far…',    'call feedkeys(":Far ")'],
                \   [ '&Esearch	\ff…', 'normal \ff'],
                \   [ '--', '--' ],
                \   [ '&AnyJump	\j', 'normal \j'],
                \   [ 'AnyJump&Back	\ab', 'normal \ab'],
                \   [ 'AnyJump&LastResults	\al', 'normal \al'],
                \ ])

    call quickui#menu#install('&Highlight', [
                \   [ '&Indent lines',        'IndentLinesToggle',        'Toggle indent lines' ],
                \   [ 'Indent &guides',       'IndentGuidesToggle',       'Toggle indent guides' ],
                \   [ '--', '--' ],
                \   [ 'Rainbow &levels',      'RainbowLevelsToggle',      'Toggle rainbow levels' ],
                \   [ 'Rainbow &parentheses', 'RainbowParenthesesToggle', 'Toggle rainbow parentheses' ],
                \ ])

    call quickui#menu#install('&Windows', [
                \   [ '&Choosewin	\-…', "call feedkeys('\\-')"],
                \   [ '&Winteract	\w…', "call feedkeys('\\w')"],
                \ ])

    call quickui#menu#install('&Motions', [
                \   [ 'Next vertical block	]w', 'normal ]w'],
                \   [ 'Previous vertical block	[w', 'normal [w'],
                \   [ 'Next vertical occurance	]v', 'normal ]v'],
                \   [ 'Previous vertical occurance	[v', 'normal [v'],
                \   [ 'Next vertical occurance	]V{char}', 'call feedkeys("]V")'],
                \   [ 'Previous vertical occurance	[V{char}', 'call feedkeys("[V")'],
                \   [ '--', '--' ],
                \   [ '&Easy motion	\m{char}', 'call feedkeys("\\m")'],
                \   [ '--', '--' ],
                \   [ '&Indent next	\]', 'call feedkeys("\\]")'],
                \   [ 'I&ndent previous	\[', 'call feedkeys("\\m")'],
                \ ])

    call quickui#menu#install('&Completion', [
                \   [ '&Thesaurus	<C-x><C-u>', 'call feedkeys("a\<C-x>\<C-u>")'],
                \   [ '&Deoplete	<C-x><C-x>', 'call feedkeys("a\<C-x>\<C-x>")'],
                \   [ '&Unicode	<C-x><C-z>', 'call feedkeys("a\<C-x>\<C-z>")'],
                \   [ 'Di&graph	<C-x><C-g>', 'call feedkeys("a\<C-x>\<C-g>")'],
                \ ])

    call quickui#menu#install('&Tools', [
                \   [ 'External &browser	\ob', 'normal \ob' ],
                \   [ 'External e&xplorer	\oo', 'normal \oo' ],
                \   [ 'External &editor	\oe', 'normal \oe' ],
                \   [ '--', '--' ],
                \   [ '&RangeMacro	\@{register}{motion}', 'call feedkeys("gv:RangeMacro ")' ],
                \   [ '&PrettyPrint1', 'call feedkeys(":PP ")' ],
                \   [ '--', '--' ],
                \   [ '&Gundo	\wu', 'GundoToggle' ],
                \   [ '&Tagbar	\wt', 'TagbarToggle' ],
                \   [ '&OpenInScim	\sc', 'OpenInScim' ],
                \ ])
endfunction

" vim: tabstop=12 sts=12
