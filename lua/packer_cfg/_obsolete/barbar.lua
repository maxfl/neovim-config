return {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    setup = function()
        vim.g.bufferline = {
            auto_hide = true
        }
    end
}
