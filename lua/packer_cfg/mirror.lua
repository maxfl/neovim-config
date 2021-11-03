return {
    'zenbro/mirror.vim',
    opt=true,
    cmd={'MirrorConfig', 'MirrorPush', 'MirrorPull'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>rc', ':MirrorPush<CR>', {})
        map('n', '<Leader>rp', ':MirrorPull<CR>', {})
    end
}
