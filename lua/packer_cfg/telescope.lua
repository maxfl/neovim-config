return {
    'nvim-telescope/telescope.nvim',
    requires='nvim-lua/plenary.nvim',
    config=function()
        local map = vim.api.nvim_set_keymap
        map('', '<C-p>', ':Telescope oldfiles<CR>', {})
    end
}
