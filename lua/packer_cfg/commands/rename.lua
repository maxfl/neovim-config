return {
    'vim-scripts/Rename',
    -- requires = 'folke/which-key.nvim',
    config = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>:R', [[':Rename '.expand("%")]], {expr=true})
    end
}
