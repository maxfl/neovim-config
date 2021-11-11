return {
    'bootleq/vim-cycle',
    setup=function()
        vim.g.cycle_no_mappings=true
        vim.g.cycle_default_groups={}
    end,
    config=function()
        local map, silent=vim.api.nvim_set_keymap, {silent=true}
        map('n', '-', '<Plug>CycleNext', silent)
        map('v', '-', '<Plug>CycleNext', silent)
        map('n', '+', '<Plug>CyclePrev', silent)
        map('v', '+', '<Plug>CyclePrev', silent)

        vim.fn['cycle#add_groups']{
            { '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉' },
            { '⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹' }
        }

        vim.fn['cycle#add_groups']{
            { 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' },
            { 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' },
            { 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' },
            { 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' },
            { 'black', 'white', 'grey', 'red', 'green', 'blue', 'cyan', 'magenta', 'yellow' },
            { 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' },
        }

        vim.fn['cycle#add_groups']{
            {{ 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье' }, 'match_case', 'hard_case'},
            {{ 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота', 'воскресенье' }, 'match_case', 'hard_case'}
        }

        vim.fn['cycle#add_groups']{
            {{ 'yes', 'no' },     'match_word', 1 },
            {{ 'true', 'false' }, 'match_word', 1 },
            {{ 'on', 'off' },     'match_word', 1 },
            {{ 'and', 'or' },     'match_word', 1 }
        }

        vim.fn['cycle#add_groups']{{{ '[  ]', '[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' }}}
        vim.fn['cycle#add_groups']{{{ '{:}', '(:)' }, 'sub_pairs'}}
        vim.fn['cycle#add_groups']{{{'“:”', '‘:’', '„:“', '‚:‘', '«:»'}, 'sub_pairs'}}

        vim.g.cycle_default_groups_for_gitrebase = {{{'pick', 'reword', 'edit', 'squash', 'fixup', 'exec'}}}

        vim.g.cycle_default_groups_for_tex = {
            {{'Huge' , 'huge' , 'LARGE' , 'Large' , 'large' , 'normalsize' , 'small' , 'scriptsize' , 'tiny' , 'footnotesize' }, 'hard_case', 'match_case'},
            {{'displaystyle', 'scriptstyle', 'scriptscriptstyle', 'textstyle'}},
            --
            {{'part', 'chapter', 'section', 'subsection', 'subsubsection', 'paragraph', 'subparagraph'}},
            {{'article', 'report', 'book', 'letter', 'slides'}},
            {{'a4paper', 'a5paper', 'b5paper', 'executivepaper', 'legalpaper', 'letterpaper'}},
            {{'scrbook', 'scrreprt', 'scrartcl', 'scrlttr2'}},
            {{'oneside', 'twoside'}},
            {{'onecolumn', 'twocolumn'}},
            {{'draft', 'final'}},
            --
            {{'(:)', '[:]', [[\{:\}]], [[\lvert :\rvert]], [[\lVert :\rVert]], [[\lfloor :\rfloor]], [[\lceil :\rceil]], [[\langle :\rangle]]}, 'sub_pairs', 'hard_case', 'match_case'},
            {{"``:''", ',,:``', "`:'", "<<:>>"}, 'sub_pairs'},
            --
            {{[[\left(:\right)]],   [[\big(:\big)]],   [[\Big(:\Big)]],   [[\bigg(:\bigg)]],   [[\Bigg(:\Bigg)]]},   'sub_pairs', 'hard_case',   'match_case'},
            {{[=[\left[:\right]]=], [=[\big[:\big]]=], [=[\Big[:\Big]]=], [=[\bigg[:\bigg]]=], [=[\Bigg[:\Bigg]]=]}, 'sub_pairs', 'hard_case',   'match_case'},
            {{[[\left\{:\right\}]], [[\big\{:\big\}]], [[\Big\{:\Big\}]], [[\bigg\{:\bigg\}]], [[\Bigg\{:\Bigg\}]]}, 'sub_pairs', 'hard_case',   'match_case'},
            {{[[\left\l:\right\r]], [[\big\l:\big\r]], [[\Big\l:\Big\r]], [[\bigg\l:\bigg\r]], [[\Bigg\l:\Bigg\r]]}, 'sub_pairs', 'hard_case',   'match_case'},
            {{[[\left]],            [[\big]],          [[\Big]],          [[\bigg]],           [[\Bigg]]},           'hard_case', 'match_case'},
            --
            {{[[\begin{enumerate}:\end{enumerate}]], [[\begin{itemize}:\end{itemize}]]}, 'sub_pairs', 'hard_case', 'match_case'},
            {{[[\begin{align}:\end{align}]], [[\begin{multline}:\end{multline}]]}, 'sub_pairs', 'hard_case', 'match_case'},
        }
    end
}
