return {
    'chrisbra/SudoEdit.vim',
    cmd = {'SudoRead', 'SudoWrite'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('i', '<S-F2>', '<CMD>SudoWrite<CR>', {noremap=true})
    end
}
