return {
    'tpope/vim-fugitive',
    requires = 'folke/which-key.nvim',
    cmd = 'Git',
    setup = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end

        whichkey.register({
            ['<leader>g'] = {
                name = '+git',
                C = {'<CMD>Git commit -a<CR>', 'commit all'},
                a = {'<CMD>!git add %<CR>',    'add'},
                c = {'<CMD>Git commit<CR>',    'commit'},
                t = {'<CMD>Git push<CR>',      'push'},
                h = {'<CMD>Git pull<CR>',      'pull'},
                s = {'<CMD>Git status<CR>',    'status'},
            },
        }, {silent=true})
    end
}
