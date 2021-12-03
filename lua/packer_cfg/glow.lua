return {
    'ellisonleao/glow.nvim',
    ft='markdown',
    config=function()
        vim.g.glow_binary_path = vim.env.home..'/.local/bin/glow'
        vim.g.glow_border = 'rounded'
    end
}
