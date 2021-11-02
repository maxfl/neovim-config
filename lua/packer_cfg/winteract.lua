return {
    'romgrk/winteract.vim',
    config=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>w', ':InteractiveWindow<CR>', {})
    end,
    --opt=false,
    --cmd='InteractiveWindow'
}
