return {
    'anott03/nvim-lspinstall',
    dependencies = 'neovim/nvim-lspconfig',
    config=function()
        local nvim_lsp = require('lspconfig')
        local servers = {
            'clangd',
            'cmake',
            'pyright',
            'texlab',
            'lua_ls'
        }
        for _, lsp in ipairs(servers) do
            nvim_lsp[lsp].setup {
                on_attach = on_attach,
                flags = {
                    debounce_text_changes = 150,
                }
            }
        end
    end
}
