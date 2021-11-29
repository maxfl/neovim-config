return {
    't9md/vim-choosewin',
    keys={
        {'n', '<leader>-'},
        {'n', '<leader>wc'},
    },
    config=function()
        vim.g.choosewin_overlay_enable=true
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>-', '<Plug>(choosewin)', {})
        map('n', '<leader>wc', '<Plug>(choosewin)', {})
    end
}
