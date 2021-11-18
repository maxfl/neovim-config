return {
    'moll/vim-bbye',
    cmd='Bdelete',
    setup=function()
        local map = vim.api.nvim_set_keymap
        local noremap={noremap=true}
        map('n', 'ZQ', '<CMD>Bdelete<CR>', noremap)
        map('n', 'ZZ', '<CMD>write<CR><CMD>Bdelete<CR>', noremap)
        -- map('n', '<Leader>ZZ', 'ZZ', noremap)
        -- map('n', '<Leader>ZQ', 'ZQ', noremap)
    end
}
