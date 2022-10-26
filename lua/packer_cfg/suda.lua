return {
    'lambdalisue/suda.vim',
    cmd = {'SudaRead', 'SudaWrite'},
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader><Leader><F2>', '<CMD>SudoWrite<CR>', {noremap=true})

        -- if vim.fn.executable 'doas' == 1 then
        --     vim.g.sudoAuth='doas'
        -- end
    end
}

