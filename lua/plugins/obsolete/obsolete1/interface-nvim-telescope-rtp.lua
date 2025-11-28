return {
    'jeetsukumaran/telescope-rtp',
    dependencies = 'nvim-telescope/telescope.nvim',
    config=function()
        local ts=require('telescope')
        ts.load_extension('vim_rtp')
        ts.load_extension('vim_docs')

        local map, opts = vim.api.nvim_set_keymap, {}
        map('n', '<Leader>]r', '<CMD>Telescope vim_rtp<CR>', opts)
        map('n', '<Leader>]d', '<CMD>Telescope vim_docs<CR>', opts)
    end
}
