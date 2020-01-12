function plugin_cfg#switch#add()
    let g:switch_mapping='-'
    let g:switch_reverse_mapping='+'
    let g:switch_find_smallest_match=0
    let g:switch_custom_definitions = [
                \  [ '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉' ],
                \  [ '⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹' ],
                \  [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' ],
                \  [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
                \  [ 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье' ],
                \  [ 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота', 'воскресенье' ],
                \  [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' ],
                \  [ 'january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december' ],
                \  [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
                \  [ 'jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec' ],
                \  [ 'black', 'white', 'grey', 'red', 'green', 'blue', 'cyan', 'magenta', 'yellow' ],
                \  [ 'TODO', 'DONE', 'XXX', 'FIXME' ],
                \  [ 'TRUE', 'FALSE' ],
                \  { '\C\<yes\>': 'no', '\C\<no\>':  'yes',  }, { '\C\<Yes\>': 'No', '\C\<No\>':  'Yes',  }, { '\C\<YES\>': 'NO', '\C\<NO\>':  'YES',  },
                \  { '\C\<on\>': 'off', '\C\<off\>':  'on',  }, { '\C\<On\>': 'Off', '\C\<Off\>':  'On',  }, { '\C\<ON\>': 'OFF', '\C\<OFF\>':  'ON',  },
                \  { '\C\<AND\>': 'OR', '\C\<OR\>':  'AND',  }, { '\C\<and\>': 'or', '\C\<or\>':  'and',  },
                \  [ '[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' ],
                \ ]
endfunction

function plugin_cfg#switch#post_source()
    autocmd FileType gitrebase let b:switch_custom_definitions = [
                \   [ 'pick', 'reword', 'edit', 'squash', 'fixup', 'exec' ]
                \ ]
    autocmd FileType tex,plaintex let b:switch_custom_definitions = [
                \   [ '\tiny', '\scriptsize', '\footnotesize', '\small', '\normalsize', '\large', '\Large', '\LARGE', '\huge', '\Huge' ],
                \   [ '\displaystyle', '\scriptstyle', '\scriptscriptstyle', '\textstyle' ],
                \   [ '\part', '\chapter', '\section', '\subsection', '\subsubsection', '\paragraph', '\subparagraph' ],
                \   [ 'part:', 'chap:', 'sec:', 'subsec:', 'subsubsec:' ],
                \   [ 'article', 'report', 'book', 'letter', 'slides' ],
                \   [ 'a4paper', 'a5paper', 'b5paper', 'executivepaper', 'legalpaper', 'letterpaper', 'beamer', 'subfiles', 'standalone' ],
                \   [ 'onecolumn', 'twocolumn' ],
                \   [ 'oneside', 'twoside' ],
                \   [ 'draft', 'final' ],
                \   [ 'AnnArbor', 'Antibes', 'Bergen', 'Berkeley',
                \     'Berlin', 'Boadilla', 'CambridgeUS', 'Copenhagen', 'Darmstadt',
                \     'Dresden', 'Frankfurt', 'Goettingen', 'Hannover', 'Ilmenau',
                \     'JuanLesPins', 'Luebeck', 'Madrid', 'Malmoe', 'Marburg',
                \     'Montpellier', 'PaloAlto', 'Pittsburgh', 'Rochester', 'Singapore',
                \     'Szeged', 'Warsaw' ]
                \ ]
endfunction
