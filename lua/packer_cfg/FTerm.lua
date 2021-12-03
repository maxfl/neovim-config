return {
    'numtostr/FTerm.nvim',
    module='FTerm',
    setup=function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
        map('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
    end,
    config=function()
        require'FTerm'.setup{
            border = 'double',
            dimensions  = {
                height = 0.6,
                width = 0.8,
            },
        }
    end
}
