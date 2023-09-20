return {
    'romgrk/winteract.vim',
    cmd = 'InteractiveWindow',
    init = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>wi', '<CMD>InteractiveWindow<CR>', {})
    end
}
