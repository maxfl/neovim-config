return {
    'zenbro/mirror.vim',
    cmd={'MirrorPush', 'MirrorPull', 'Mirror*'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>rc', '<CMD>MirrorPush<CR>', {})
        map('n', '<Leader>rp', '<CMD>MirrorPull<CR>', {})
    end
}
