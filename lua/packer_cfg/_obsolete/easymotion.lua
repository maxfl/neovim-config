return {
    'Lokaltog/vim-easymotion',
    keys={{'n', '<Leader>m'}},
    config=function()
        local map=vim.api.nvim_set_keymap
        local noremap={noremap=true}
        map('', '<Leader>m', '<Plug>(easymotion-prefix)', noremap)
        map('n', '<Leader>m.', '<Plug>(easymotion-repeat)', noremap)
    end
}

