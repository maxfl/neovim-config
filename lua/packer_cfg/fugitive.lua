return function()
    local map = vim.api.nvim_set_keymap
    local silent={silent=true}
    map('n', '<Leader>ga', ':!git add %<CR>', silent)
    map('n', '<Leader>gc', ':Gcommit -a<CR>', silent)
    map('n', '<Leader>gp', ':Gpush<CR>', silent)
    map('n', '<Leader>gs', ':Gstatus<CR>', silent)
    map('n', '<Leader>gP', ':Gpull<CR>', silent)
end
