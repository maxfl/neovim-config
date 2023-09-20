return {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
    init = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>ua', '<CMD>CodeActionMenu<CR>', {})
    end
}
