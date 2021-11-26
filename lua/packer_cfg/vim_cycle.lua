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
            {'₉', '₈', '₇', '₆', '₅', '₄', '₃', '₂', '₁', '₀'},
            {'⁹', '⁸', '⁷', '⁶', '⁵', '⁴', '³', '²', '¹', '⁰'}
        }

        vim.fn['cycle#add_groups']{
            {'Sunday', 'Saturday', 'Friday', 'Thursday', 'Wednesday', 'Tuesday', 'Monday'},
            {'Sun', 'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon'},
            {'December', 'November', 'October', 'September', 'August', 'July', 'June', 'May', 'April', 'March', 'February', 'January'},
            {'Dec', 'Nov', 'Oct', 'Sep', 'Aug', 'Jul', 'Jun', 'May', 'Apr', 'Mar', 'Feb', 'Jan'},
            {'yellow', 'magenta', 'cyan', 'blue', 'green', 'red', 'grey', 'white', 'black'},
            {'nine', 'eight', 'seven', 'six', 'five', 'four', 'three', 'two', 'one', 'zero'},
        }

        vim.fn['cycle#add_groups']{
            {{'Воскресенье', 'Суббота', 'Пятница', 'Четверг', 'Среда', 'Вторник', 'Понедельник'}, 'match_case', 'hard_case'},
            {{'воскресенье', 'суббота', 'пятница', 'четверг', 'среда', 'вторник', 'понедельник'}, 'match_case', 'hard_case'}
        }

        vim.fn['cycle#add_groups']{
            {{ 'yes', 'no' },     'match_word', 1 },
            {{ 'true', 'false' }, 'match_word', 1 },
            {{ 'on', 'off' },     'match_word', 1 },
            {{ 'and', 'or' },     'match_word', 1 }
        }

        vim.fn['cycle#add_groups']{{{ '{:}', '(:)' }, 'sub_pairs'}}
        vim.fn['cycle#add_groups']{{{'“:”', '‘:’', '„:“', '‚:‘', '«:»'}, 'sub_pairs'}}

        local checkmarks = {{{'[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' }}}
        vim.g.cycle_default_groups_for_markdown = checkmarks
        vim.g.cycle_default_groups_for_python = checkmarks
        vim.g.cycle_default_groups_for_fish = checkmarks
        vim.g.cycle_default_groups_for_fish = checkmarks

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

        vim.g.cycle_default_groups_for_lua = {{{ '[[:]]', '[=[:]=]', '[==[:]==]', '[===[:]===]'}, 'sub_pairs'}}
    end
}
