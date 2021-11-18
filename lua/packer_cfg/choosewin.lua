return {
    't9md/vim-choosewin',
    keys={{'n', '<leader>-'}},
    config=function()
        vim.g.choosewin_overlay_enable=true
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>-', '<Plug>(choosewin)', {})
    end
}
