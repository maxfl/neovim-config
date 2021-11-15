return {
    'foosoft/vim-argwrap',
    opt=true,
    cmd='ArgWrap',
    setup=function()
        local map=vim.api.nvim_set_keymap
        map('n', '<Leader>,', '<CMD>ArgWrap<CR>', {noremap=true})
    end
}
