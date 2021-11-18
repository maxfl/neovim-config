return {
    'weilbith/nvim-code-action-menu',
    cmd='CodeActionMenu',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>wa', '<CMD>CodeActionMenu<CR>', {})
    end
}
