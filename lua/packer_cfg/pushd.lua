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
                B        = {'<CMD>Popd<CR>', 'back'},
                b        = {'<CMD>Pushd %:h<CR>', 'current buffer'},
                d        = {'<CMD>Dirs<CR>', 'list dirs'},
            },
        }
    end
}