function plugin_cfg#cycle#add()
    nmap <silent> - <Plug>CycleNext
    vmap <silent> - <Plug>CycleNext
    nmap <silent> + <Plug>CyclePrev
    vmap <silent> + <Plug>CyclePrev
    let g:cycle_no_mappings = 1
    let g:cycle_default_groups=[]
endfunction

function plugin_cfg#cycle#post_source()
    call cycle#add_groups([
        \  [ '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉' ],
        \  [ '⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹' ],
        \  [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' ],
        \  [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
        \  [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' ],
        \  [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
        \  [ 'black', 'white', 'grey', 'red', 'green', 'blue', 'cyan', 'magenta', 'yellow' ],
        \ ])
    call cycle#add_groups([
        \  [[ 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье' ], 'match_case', 'hard_case'],
        \  [[ 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота', 'воскресенье' ], 'match_case', 'hard_case']
        \ ])
    call cycle#add_groups([
        \  [[ 'yes', 'no' ],     'match_word', 1 ],
        \  [[ 'true', 'false' ], 'match_word', 1 ],
        \  [[ 'on', 'off' ],     'match_word', 1 ],
        \  [[ 'and', 'or' ],     'match_word', 1 ]
        \ ])
    call cycle#add_groups([
        \  [ '[  ]', '[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' ],
        \ ])
    call cycle#add_group(
          \   [ '{:}', '(:)' ], 'sub_pairs'
          \ )

    let g:cycle_default_groups_for_gitrebase = [
                \ [ 'pick', 'reword', 'edit', 'squash', 'fixup', 'exec' ]
                \ ]
    let g:cycle_default_groups_for_tex = [
            \   [['tiny', 'scriptsize', 'footnotesize', 'small', 'normalsize', 'large', 'Large', 'LARGE', 'huge', 'Huge'], 'hard_case', 'match_case'],
            \   [['displaystyle', 'scriptstyle', 'scriptscriptstyle', 'textstyle']],
            \   [['part', 'chapter', 'section', 'subsection', 'subsubsection', 'paragraph', 'subparagraph']],
            \   [['article', 'report', 'book', 'letter', 'slides']],
            \   [['a4paper', 'a5paper', 'b5paper', 'executivepaper', 'legalpaper', 'letterpaper']],
            \   [['scrbook', 'scrreprt', 'scrartcl', 'scrlttr2']],
            \   [['oneside', 'twoside']],
            \   [['onecolumn', 'twocolumn']],
            \   [['draft', 'final']],
            \   [['(:)', '[:]', '\{:\}', '\lvert :\rvert', '\lVert :\rVert', '\lfloor :\rfloor', '\lceil :\rceil', '\langle :\rangle'], 'sub_pairs', 'hard_case', 'match_case'],
            \   [['\big(:\big)', '\Big(:\Big)', '\bigg(:\bigg)', '\Bigg(:\Bigg)'], 'sub_pairs', 'hard_case', 'match_case'],
            \   [['\big[:\big]', '\Big[:\Big]', '\bigg[:\bigg]', '\Bigg[:\Bigg]'], 'sub_pairs', 'hard_case', 'match_case'],
            \   [['\big\{:\big\}', '\Big\{:\Big\}', '\bigg\{:\bigg\}', '\Bigg\{:\Bigg\}'], 'sub_pairs', 'hard_case', 'match_case'],
            \   [['\big\l:\big\r', '\Big\l:\Big\r', '\bigg\l:\bigg\r', '\Bigg\l:\Bigg\r'], 'sub_pairs', 'hard_case', 'match_case'],
            \   [['\big', '\Big', '\bigg', '\Bigg'], 'hard_case', 'match_case'],
            \   [['\begin{enumerate}:\end{enumerate}', '\begin{itemize}:\end{itemize}'], 'sub_pairs', 'hard_case', 'match_case'],
            \ ]
endfunction
