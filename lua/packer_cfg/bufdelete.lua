return {
    'famiu/bufdelete.nvim',
    cmd={'Bdelete', 'Bwipeout'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        local noremap={noremap=true}
        map('n', 'ZQ', '<CMD>Bdelete<CR>', noremap)
        map('n', 'ZZ', '<CMD>write<CR><CMD>Bdelete<CR>', noremap)
    end
}
