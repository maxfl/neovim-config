return {
    'tjdevries/nlua.nvim',
    ft='lua',
    config=function()
        require('nlua.lsp.nvim').setup(require('lspconfig'), {
            -- on_attach = custom_nvim_lspconfig_attach,

            -- Include globals you want to tell the LSP are real :)
            globals = {
                -- Colorbuddy
                "Color", "c", "Group", "g", "s",
            }
        })
        vim.cmd[[
            au BufEnter,BufRead *.lua set path^=~/.config/nvim/lua
        ]]
    end
}
