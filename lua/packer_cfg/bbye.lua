return {
    'moll/vim-bbye',
    opt=true,
    cmd='Bdelete',
    setup=function()
        local map = vim.api.nvim_set_keymap
        local noremap={noremap=true}
        map('n', 'ZQ', ':Bdelete<CR>', noremap)
        map('n', 'ZZ', ':write<CR>:Bdelete<CR>', noremap)
        map('n', '<Leader>ZZ', 'ZZ', noremap)
        map('n', '<Leader>ZQ', 'ZQ', noremap)
    end
}
