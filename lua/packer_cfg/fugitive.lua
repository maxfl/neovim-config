return {
    'tpope/vim-fugitive',
    opt=true,
    cmd='Git',
    setup = function()
        local map = vim.api.nvim_set_keymap
        local silent={silent=true}
        map('n', '<Leader>ga', ':!git add %<CR>', silent)
        map('n', '<Leader>gc', ':Git commit -a<CR>', silent)
        map('n', '<Leader>gp', ':Git push<CR>', silent)
        map('n', '<Leader>gs', ':Git status<CR>', silent)
        map('n', '<Leader>gP', ':Git pull<CR>', silent)
    end
}
