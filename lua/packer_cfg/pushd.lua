return {
    'john-nanney/pushd.vim',
    requires = 'folke/which-key.nvim',
    cmd = {'Pushd', 'Popd', 'Dirs'},
    setup = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end

        whichkey.register{
            ['<leader>g'] = {
                name = '+goto',
                ['<BS>'] = {'<CMD>Popd<CR>', 'back'},
                c        = {'<CMD>Pushd<CR>', 'current file'},
                d        = {'<CMD>Dirs<CR>', 'list dirs'},
            },
        }
    end
}
