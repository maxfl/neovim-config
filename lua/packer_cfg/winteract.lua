return {
    'romgrk/winteract.vim',
    cmd = 'InteractiveWindow',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>wi', '<CMD>InteractiveWindow<CR>', {})
    end
}
