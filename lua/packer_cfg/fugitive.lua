return {
    'tpope/vim-fugitive',
    cmd = 'Git',
    setup = function()
        local map = vim.api.nvim_set_keymap
        local silent={silent=true}
        map('n', '<Leader>ga', '<CMD>!git add %<CR>', silent)
        map('n', '<Leader>gc', '<CMD>Git commit<CR>', silent)
        map('n', '<Leader>gC', '<CMD>Git commit -a<CR>', silent)
        map('n', '<Leader>gt', '<CMD>Git push<CR>', silent)
        map('n', '<Leader>gs', '<CMD>Git status<CR>', silent)
        map('n', '<Leader>gh', '<CMD>Git pull<CR>', silent)
    end
}
