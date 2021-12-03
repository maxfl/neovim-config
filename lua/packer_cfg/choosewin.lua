return {
    't9md/vim-choosewin',
    keys={ {'n', '<Plug>(choosewin)'} },
    setup=function()
        vim.g.choosewin_overlay_enable=true
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>-', '<Plug>(choosewin)', {})
        map('n', '<leader>wc', '<Plug>(choosewin)', {})
    end
}
