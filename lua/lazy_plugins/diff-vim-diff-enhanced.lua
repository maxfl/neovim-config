return {
    'chrisbra/vim-diff-enhanced',
    config = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<leader>gP', '<CMD>PatienceDiff<CR>', {silent=true})
    end
}
