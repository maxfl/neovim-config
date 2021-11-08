return {
    'chrisbra/SudoEdit.vim',
    opt=true,
    cmd='Sudo*',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('i', '<S-F2>', '<CMD>SudoWrite<CR>', {noremap=true})
    end
}
