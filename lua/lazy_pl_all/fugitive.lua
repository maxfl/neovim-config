return {
    'tpope/vim-fugitive',
    dependencies = 'folke/which-key.nvim',
    -- cmd = 'Git',
    init = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end

        whichkey.register({
            ['<leader>g'] = {
                name = '+git',
                C = {'<CMD>Git commit -a<CR>', 'commit all'},
                a = {'<CMD>!git add %<CR>',    'add'},
                b = {'<CMD>git blame<CR>',     'blame'},
                c = {'<CMD>Git commit<CR>',    'commit'},
                t = {'<CMD>Git push<CR>',      'push'},
                h = {'<CMD>Git pull<CR>',      'pull'},
                s = {'<CMD>Git status<CR>',    'status'},
            },
        }, {silent=true})
    end
}
