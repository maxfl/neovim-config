return {
    'vim-ctrlspace/vim-ctrlspace',
    setup=function()
        vim.o.hidden=true
        vim.g.CtrlSpaceSetDefaultMapping=true
        vim.g.CtrlSpaceUseTabline=true
        vim.g.CtrlSpaceDefaultMappingKey='<C-Space> '
        vim.g.CtrlSpaceProjectRootMarkers = { ".git", ".hg", ".svn", ".bzr", ".envrc", "_darcs", "CVS" }
    end,
    config=function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('n', '<M-u>',   '<CMD>CtrlSpaceGoUp<CR>', opts)
        map('n', '<M-S-u>', '<CMD>CtrlSpaceGoDown<CR>', opts)
    end
}
