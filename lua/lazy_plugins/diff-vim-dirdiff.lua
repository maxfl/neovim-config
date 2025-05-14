return {
    'will133/vim-dirdiff',
    config=function()
        local map = vim.api.nvim_set_keymap
        local unique={unique=true}

        map('n', '<Leader>Dg', '<Plug>DirDiffGet', unique)
        map('n', '<Leader>Dp', '<Plug>DirDiffPut', unique)
        map('n', '<Leader>Dj', '<Plug>DirDiffNext', unique)
        map('n', '<Leader>Dk', '<Plug>DirDiffPrev', unique)
    end
}
