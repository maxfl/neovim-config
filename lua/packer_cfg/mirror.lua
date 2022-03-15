return {
    'zenbro/mirror.vim',
    requires = 'folke/which-key.nvim',
    cmd = {'MirrorPush', 'MirrorPull', 'MirrorConfig', 'Mirror*'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>rc', '<CMD>MirrorPush<CR>', {})
        map('n', '<Leader>rp', '<CMD>MirrorPull<CR>', {})

        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end
        whichkey.register{
            ['<leader>r'] = {
                name = '+mirror',
                t = {'<CMD>MirrorPush<CR>', 'push (there)'},
                c = {'<CMD>MirrorPush<CR>', 'push'},
                p = {'<CMD>MirrorPull<CR>', 'pull'},
                h = {'<CMD>MirrorPull<CR>', 'pull (here)'},
                C = {'<CMD>MirrorConfig<CR>', 'config'},
            },
        }
    end
}
