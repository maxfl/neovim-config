return {
    'will133/vim-dirdiff',
    config=function()
        local map = vim.api.nvim_set_keymap
        local unique={unique=true}

        map('', '<Leader>Dg', '<Plug>DirDiffGet', unique)
        map('', '<Leader>Dp', '<Plug>DirDiffPut', unique)
        map('', '<Leader>Dj', '<Plug>DirDiffNext', unique)
        map('', '<Leader>Dk', '<Plug>DirDiffPrev', unique)
    end
}
