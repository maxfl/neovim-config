return {
    't9md/vim-choosewin',
    dependencies = "folke/which-key.nvim",
    config = function()
        vim.g.choosewin_overlay_enable=true

        local wk = require("which-key")
        if not wk then
            return
        end

        wk.register({
            ['<leader>'] = {
                ['-'] = {'<Plug>(choosewin)', 'choosewin'},
                wc = {'<Plug>(choosewin)', 'choosewin'},
            },
        })
    end
}
