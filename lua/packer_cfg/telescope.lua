return {
    'nvim-telescope/telescope.nvim',
    requires={'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'},
    opt=true,
    cmd='Telescope',
    setup=function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('', '<C-p>', '<CMD>Telescope oldfiles<CR>', opts)
        map('', '|o', '<CMD>Telescope oldfiles<CR>', opts)
        map('', '|f', '<CMD>Telescope find_files<CR>', opts)
        map('', '|k', '<CMD>Telescope keymaps<CR>', opts)
        map('', '|c', '<CMD>Telescope commands<CR>', opts)
        map('', '|b', '<CMD>Telescope buffers<CR>', opts)
    end
}
