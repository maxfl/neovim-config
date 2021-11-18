return {
    'romgrk/winteract.vim',
    cmd='InteractiveWindow',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>w', '<CMD>InteractiveWindow<CR>', {})
    end
}
