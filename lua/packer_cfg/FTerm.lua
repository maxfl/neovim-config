return {
    'numtostr/FTerm.nvim',
    keys={
        {'n', '<F12>'},
        {'t', '<F12>'}
    },
    config=function()
        require'FTerm'.setup{
            border = 'double',
            dimensions  = {
                height = 0.6,
                width = 0.8,
            },
        }

        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        map('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
        map('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
    end
}
