return {
    'nvim-telescope/telescope.nvim',
    requires='nvim-lua/plenary.nvim',
    opt=true,
    cmd='Telescope',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('', '<C-p>', ':Telescope oldfiles<CR>', {})
    end
}
