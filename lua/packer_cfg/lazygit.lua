return {
    'kdheepak/lazygit.nvim',
    requires = 'folke/which-key.nvim',
    config = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end
        whichkey.register({
            ['<leader>g'] = {
                name = '+git',
                g = {'<CMD>LazyGit<CR>', 'lazygit'},
            },
        }, {silent=true})
    end
}
