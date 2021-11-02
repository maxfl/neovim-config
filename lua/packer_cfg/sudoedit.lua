return {
    'chrisbra/SudoEdit.vim',
    opt=true,
    cmd={'SureRead', 'SudoWrite'},
    config=function()
        local map = vim.api.nvim_set_keymap
        map('i', '<S-F2>', ':SudoWrite<CR>', {noremap=true})
    end
}