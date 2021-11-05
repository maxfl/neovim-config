return {
    'nvim-telescope/telescope.nvim',
    requires='nvim-lua/plenary.nvim',
    opt=true,
    cmd='Telescope',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('', '<C-p>', '<CMD>Telescope oldfiles<CR>', {})
        map('', [[\|o]], '<CMD>Telescope oldfiles<CR>', {})
        map('', [[\|f]], '<CMD>Telescope find_files<CR>', {})
    end
}
