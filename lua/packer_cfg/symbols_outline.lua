return {
    'simrat39/symbols-outline.nvim',
    cmd = {'SymbolsOutline', 'SymbolsOutline*'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>ws', '<CMD>SymbolsOutline<CR>', {})
    end
}