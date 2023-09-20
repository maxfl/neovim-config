return {
    't9md/vim-choosewin',
    dependencies = "folke/which-key.nvim",
    config = function()
        vim.g.choosewin_overlay_enable=true

        pcall(function()
            require("which-key").register({
                ['<leader>'] = {
                    ['-'] = {'<Plug>(choosewin)', 'choosewin'},
                    wc = {'<Plug>(choosewin)', 'choosewin'},
                },
            })
        end
        )
    end
}
