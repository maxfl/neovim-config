return {
    'beauwilliams/focus.nvim',
    config=function()
        require 'focus'.setup{
            bufnew = true,
            cursorline = false,
            relativenumber = false,
            number = false,
            absolutenumber_unfocussed = true,
            autoresize = false,
        }

        local map, silent=vim.api.nvim_set_keymap, {silent = true}
        map('n', '<M-h>', '<CMD>FocusSplitLeft<CR>', silent)
        map('n', '<M-j>', '<CMD>FocusSplitDown<CR>', silent)
        map('n', '<M-k>', '<CMD>FocusSplitUp<CR>', silent)
        map('n', '<M-l>', '<CMD>FocusSplitRight<CR>', silent)

        map('n', '<M-w>', '<CMD>close<CR>', silent)
        -- map('n', '<M-w><M-w>', '<CMD>close<CR>', silent)
        map('n', '<M-S-w>', '<CMD>Bdelete<CR>', silent)

        map('n', '<M-m>', '<CMD>FocusMaximise<CR>', silent)
        map('n', '<M-=>', '<CMD>FocusEqualise<CR>', silent)

        -- map('n', '<Leader>ww', '<CMD>FocusDisableWindow<CR>', silent)
        -- map('n', '<Leader>wW', '<CMD>FocusEnableWindow<CR>', silent)
        map('n', '<Leader>wT', '<CMD>FocusToggle<CR>', silent)
        map('n', '<Leader>w=', '<CMD>FocusEqualise<CR>', silent)
        map('n', '<Leader>wf', '<CMD>FocusMaximise<CR>', silent)

        local opts={}
        map('n', '<M-->', '<CMD>tabprev<CR>', opts)
        map('n', '<M-=>', '<CMD>tabnext<CR>', opts)
        map('n', '<M-+>', '<CMD>tabnew<CR>', opts)
    end
}
