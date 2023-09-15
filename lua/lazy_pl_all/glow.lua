return {
    'ellisonleao/glow.nvim',
    ft = 'markdown',
    cmd = 'Glow',
    init = function()
        vim.cmd[[
            augroup UserMarkdown
                au!
                au BufEnter,BufNew *.md nmap <buffer> <Leader>og <CMD>Glow<CR>
                au BufEnter,BufNew *.md nmap <buffer> <Leader>ov <CMD>!okular %&<CR>
            augroup END
        ]]
    end,
    config = function()
        vim.g.glow_binary_path = vim.env.HOME..'/.local/bin/'
        vim.g.glow_border = 'rounded'
    end
}
