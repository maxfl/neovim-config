return {
    'nvim-telescope/telescope.nvim',
    requires={'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'},
    opt=true,
    cmd='Telescope',
    setup=function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('', '<C-p>', '<CMD>Telescope oldfiles<CR>', opts)
        map('', '<Leader>]o', '<CMD>Telescope oldfiles<CR>', opts)
        map('', '<Leader>]f', '<CMD>Telescope find_files<CR>', opts)
        map('', '<Leader>]k', '<CMD>Telescope keymaps<CR>', opts)
        map('', '<Leader>]c', '<CMD>Telescope commands<CR>', opts)
        map('', '<Leader>]b', '<CMD>Telescope buffers<CR>', opts)
    end
}
