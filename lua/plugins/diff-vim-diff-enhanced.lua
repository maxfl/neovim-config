return {
    'chrisbra/vim-diff-enhanced',
    config = function()
        local map = vim.keymap.set
        map('n', '<leader>dP', '<CMD>PatienceDiff<CR>', {silent=true})
    end
}
