return {
    'vim-ctrlspace/vim-ctrlspace',
    init = function()
        vim.g.CtrlSpaceSetDefaultMapping=true
        vim.g.CtrlSpaceUseTabline=true
        vim.g.CtrlSpaceDefaultMappingKey='<M-Space> '
        vim.g.CtrlSpaceProjectRootMarkers = {".git", ".hg", ".svn", ".bzr", ".envrc", "_darcs", "CVS"}
    end,
    config = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<M-u>',   '<CMD>CtrlSpaceGoUp<CR>', {})
        map('n', '<M-S-u>', '<CMD>CtrlSpaceGoDown<CR>', {})
    end
}
