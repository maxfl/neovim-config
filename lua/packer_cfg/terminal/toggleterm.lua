return {
    'akinsho/nvim-toggleterm.lua',
    tag = 'v1.*',
    config = function()
        require "toggleterm".setup{
            shade_terminals = false,
            start_in_insert = false
        }

        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map('n', '<F12>', '<CMD>ToggleTerm direction=float<CR>', opts)
        map('t', '<F12>', '<C-\\><C-n><CMD>ToggleTerm direction=float<CR>', opts)
    end
}
