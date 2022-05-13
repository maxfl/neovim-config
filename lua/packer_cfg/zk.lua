return {
    'mickael-menu/zk-nvim',
    requires = 'folke/which-key.nvim',
    setup = function()
        vim.env['ZK_NOTEBOOK_DIR'] = '/home/gonchar/zettels'
    end,
    config = function()
        require 'zk'.setup{
            picker = 'telescope'
        }

        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end

        whichkey.register({
            ['<leader>z'] = {
                name = '+zettelkasten',
                ['+'] = {'<CMD>ZkNew<CR>', 'new'},
                l = {'<CMD>ZkLinks<CR>', 'links'},
                n = {'<CMD>ZkNotes<CR>', 'notes'},
                t = {'<CMD>ZkTags<CR>',  'tags'},
            },
            ['<leader>]'] = {
                name = '+telescope',
                z = {'<CMD>ZkLinks<CR>', 'zettelkasten'},
            },
        }, {silent=true})
    end
}
