return {
    -- 'simrat39/symbols-outline.nvim',
    'eyalz800/symbols-outline.nvim',
    init = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>uo', '<CMD>SymbolsOutline<CR>', {})
    end
}
