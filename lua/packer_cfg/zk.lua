return {
    'mickael-menu/zk-nvim',
    setup = function()
        vim.env['ZK_NOTEBOOK_DIR'] = '/home/gonchar/zettels'
    end,
    config = function()
        require 'zk'.setup{
            picker = 'telescope'
        }
    end
}
