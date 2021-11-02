return {
    'zenbro/mirror.vim',
    config=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>rc', ':MirrorPush<CR>', {})
        map('n', '<Leader>rp', ':MirrorPull<CR>', {})
    end,
    opt=true,
    cmd={'MirrorConfig', 'MirrorPush', 'MirrorPull'}
}
