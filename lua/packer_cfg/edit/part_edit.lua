return {
    'niuiic/part-edit.nvim',
    requires = {
        'niuiic/niuiic-core.nvim',
        'folke/which-key.nvim'
    },
    config = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end
        whichkey.register({
            ['<leader>u'] = {
                name = '+utils',
                e = {':PartEdit<CR>', 'part edit'},
            },
        }, {mode='v'})
    end
}
