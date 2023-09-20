return {
    't9md/vim-choosewin',
    dependencies = "folke/which-key.nvim",
    config = function()
        vim.g.choosewin_overlay_enable=true
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>-', '<Plug>(choosewin)', {})
        map('n', '<leader>wc', '<Plug>(choosewin)', {})

        local wk = require("which-key")
        if not wk then
            return
        end

        wk.register({
            ['<leader>'] = {
                ['-'] = 'choosewin',
                w = {
                    c = 'choosewin',
                },
            },
        })
    end
}
