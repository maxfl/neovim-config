return {
    'rhysd/clever-f.vim',
    config=function()
        local map = vim.api.nvim_set_keymap
        local noremap={noremap=true}
        map('n', '<Leader>fr', '<Plug>(clever-f-reset)', noremap)
        map('n', ';', '<Plug>(clever-f-repeat-forward)', noremap)
        -- nnoremap , <Plug>(clever-f-repeat-back)\n
    end
}
