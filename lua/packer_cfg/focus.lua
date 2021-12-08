return {
    'beauwilliams/focus.nvim',
    config=function()
        require 'focus'.setup{
            bufnew = true,
            cursorline = false,
            relativenumber = true,
            number = true,
            absolutenumber_unfocussed = true,
            -- excluded_buftypes = {'terminal'},
        }

        local map, silent=vim.api.nvim_set_keymap, {silent = true}
        map('n', '<M-h>', '<CMD>FocusSplitLeft<CR>', silent)
        map('n', '<M-j>', '<CMD>FocusSplitDown<CR>', silent)
        map('n', '<M-k>', '<CMD>FocusSplitUp<CR>', silent)
        map('n', '<M-l>', '<CMD>FocusSplitRight<CR>', silent)

        map('n', '<M-w>', '<CMD>close<CR>', silent)
        map('n', '<M-S-w>', '<CMD>Bdelete<CR>', silent)

        map('n', '<M-m>', '<CMD>FocusMaximise<CR>', silent)

        map('n', '<Leader>wt', '<CMD>FocusToggle<CR>', silent)
        map('n', '<Leader>w=', '<CMD>FocusEqualise<CR>', silent)
        map('n', '<Leader>wf', '<CMD>FocusMaximise<CR>', silent)
    end
}
