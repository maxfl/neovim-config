return {
    'zenbro/mirror.vim',
    dependencies = 'folke/which-key.nvim',
    -- cmd = {'MirrorPush', 'MirrorPull', 'MirrorConfig', 'MirrorConfigReload', 'MirrorSSH', 'MirrorEdit', 'Mirror*'},
    init = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end
        whichkey.register{
            ['<leader>r'] = {
                name = '+mirror',
                t = {'<CMD>MirrorPush<CR>', 'push (there)'},
                c = {'<CMD>MirrorPush<CR>', 'push'},
                p = {'<CMD>MirrorPull<CR>', 'pull'},
                h = {'<CMD>MirrorPull<CR>', 'pull (here)'},
                s = {'<CMD>MirrorSSH<CR>', 'ssh'},
                C = {'<CMD>MirrorConfig<CR>', 'config'},
                r = {'<CMD>MirrorConfigReload<CR>', 'reload config'},
            },
        }
    end
}