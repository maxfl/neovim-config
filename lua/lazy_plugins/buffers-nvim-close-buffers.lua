return {
    'kazhala/close-buffers.nvim',
    dependencies = 'folke/which-key.nvim',
    -- cmd = {'BDelete', 'BWipeout'},
    -- module = 'close_buffers',
    init = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end
        whichkey.register{
            ['<leader>C'] = {
                name = '+close buffer',
                h = {
                    '<CMD>lua require "close_buffers".delete{type="hidden", force=true}<CR>',
                    'hidden'
                },
                n = {
                    '<CMD>lua require "close_buffers".delete{type="nameless"}<CR>',
                    'nameless'
                },
            },
        }
    end,
    config = function()
        require 'close_buffers'.setup{}
    end
}
