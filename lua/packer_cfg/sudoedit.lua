return {
    'chrisbra/SudoEdit.vim',
    cmd = {'SudoRead', 'SudoWrite'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader><Leader><F2>', '<CMD>SudoWrite<CR>', {noremap=true})
    end
}
