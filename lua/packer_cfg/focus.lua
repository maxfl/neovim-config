return {
    'beauwilliams/focus.nvim',
    config=function()
        require("focus").setup()

        local map, silent=vim.api.nvim_set_keymap, {silent = true}
        map('n', '<M-h>', '<CMD>FocusSplitLeft<CR>', silent)
        map('n', '<M-j>', '<CMD>FocusSplitDown<CR>', silent)
        map('n', '<M-k>', '<CMD>FocusSplitUp<CR>', silent)
        map('n', '<M-l>', '<CMD>FocusSplitRight<CR>', silent)

        map('n', '<M-w>', '<CMD>close<CR>', silent)
    end
}
