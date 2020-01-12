function plugin_cfg#quickui#add()
    nmap <F9> :call quickui#menu#open()<CR>
    let g:quickui_border_style = 2
    let g:quickui_show_tip = 1
endfunction

function plugin_cfg#quickui#post_source()
    call quickui#menu#install('&Editing', [
                \   [ 'Toggle &autopairs	\(',    'call AutoPairsToggle()'],
                \   [ 'Toggle &table-mode	\tm',   'normal \tm'],
                \   [ '--', '--' ],
                \   [ '&Remove trailing whitespace	\rts', 'FixWhitespace'],
                \ ])

    call quickui#menu#install('&Search', [
                \   [ '&Far	:Far',    'call feedkeys(":Far ")'],
                \   [ '&Esearch	\ff', 'normal \ff'],
                \ ])

    call quickui#menu#install('&Highlight', [
                \   [ '&Indent lines',        'IndentLinesToggle',        'Toggle indent lines' ],
                \   [ 'Indent &guides',       'IndentGuidesToggle',       'Toggle indent guides' ],
                \   [ '--', '--' ],
                \   [ 'Rainbow &levels',      'RainbowLevelsToggle',      'Toggle rainbow levels' ],
                \   [ 'Rainbow &parentheses', 'RainbowParenthesesToggle', 'Toggle rainbow parentheses' ],
                \ ])

    call quickui#menu#install('&Windows', [
                \   [ '&Choosewin	\-', "call feedkeys('\\-')"],
                \   [ '&Winteract	\w', "call feedkeys('\\w')"],
                \ ])

    call quickui#menu#install('&Motions', [
                \   [ '&Easy motion	\m', 'call feedkeys("\\m")'],
                \   [ '--', '--' ],
                \   [ '&Indent next	\]', 'call feedkeys("\\]")'],
                \   [ 'I&ndent previous	\[', 'call feedkeys("\\m")'],
                \ ])

    call quickui#menu#install('&Completion', [
                \   [ '&Deoplete	<C-x><C-x>', 'call feedkeys("a\<C-x>\<C-x>")'],
                \   [ '&Unicode	<C-x><C-z>',     'call feedkeys("a\<C-x>\<C-u>")'],
                \   [ 'Diggraph	<C-x><C-G>',     'call feedkeys("a\<C-x>\<C-u>")'],
                \ ])

    call quickui#menu#install('&Tools', [
                \   [ '&Gundo	\wu', 'GundoToggle' ],
                \   [ '--', '--' ],
                \   [ 'PrettyPrint &1', 'call feedkeys(":PP ")' ],
                \   [ 'PrettyPrint &2', 'call feedkeys(":Pp ")' ],
                \ ])
endfunction
