local map = vim.api.nvim_set_keymap
local mcfg={unique=true}

return function()
    map('', '<Leader>Dg', '<Plug>DirDiffGet', mcfg)
    map('', '<Leader>Dp', '<Plug>DirDiffPut', mcfg)
    map('', '<Leader>Dj', '<Plug>DirDiffNext', mcfg)
    map('', '<Leader>Dk', '<Plug>DirDiffPrev', mcfg)
end
