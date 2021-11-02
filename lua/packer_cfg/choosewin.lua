return {
    't9md/vim-choosewin',
    config=function()
        vim.g.choosewin_overlay_enable=true
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>-', '<Plug>(choosewin)', {})
    end,
    opt=true,
    keys={'n', '<leader>-'}
}