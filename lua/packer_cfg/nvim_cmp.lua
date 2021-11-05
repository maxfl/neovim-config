return {
    'hrsh7th/nvim-cmp',
    disable=false,
    requires={
        'hrsh7th/cmp-nvim-lsp',                                   -- [✔]
        'hrsh7th/cmp-buffer',                                     -- [ ]
        'hrsh7th/cmp-path',                                       -- [✔]
        'hrsh7th/cmp-cmdline',                                    -- [✔]
        'quangnguyen30192/cmp-nvim-ultisnips',                    -- [✔]
        --{'petertriho/cmp-git', requires='nvim-lua/plenary.nvim'}, -- [ ]
        'hrsh7th/cmp-nvim-lua',                                   -- [✔]
        -- 'f3fora/cmp-spell',                                       -- [✔]
        'kdheepak/cmp-latex-symbols',                             -- [✔]
        --'hrsh7th/cmp-omni'                                        -- [ ]
    },
    config=function()
        local cmp = require'cmp'

        cmp.setup({
            snippet = {
                expand = function(args)
                    --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                    vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                end,
            },
            --mapping = {
                --['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                --['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                --['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                --['<C-y>'] = cmp.config.disable, -- If you want to remove the default `<C-y>` mapping, You can specify `cmp.config.disable` value.
                --['<C-e>'] = cmp.mapping({
                    --i = cmp.mapping.abort(),
                    --c = cmp.mapping.close(),
                --}),
                --['<CR>'] = cmp.mapping.confirm({ select = true }),
            --},
            sources = cmp.config.sources({
                    -- { name = 'spell' },
                    { name = 'nvim_lsp' },
                    { name = 'ultisnips' },
                    { name = 'nvim_lua' },
                    --{ name = 'latex_symbols' },
                }, {
                    { name = 'buffer' },
            }),
            completion = {
                keyword_length=4
            }
        })

        -- Use buffer source for `/`.
        cmp.setup.cmdline('/', {
            sources = {
                { name = 'buffer' }
            }
        })

        -- Use cmdline & path source for ':'.
        cmp.setup.cmdline(':', {
            sources = cmp.config.sources({
                { name = 'path' }
            }, {
                    { name = 'cmdline' }
                })
        })

        --vim.cmd[[
            --autocmd FileType lua lua sources=require'cmp'.setup.buffer.sources
            --\ sources[#sources+1] = {name='nvim_lua'}
        --]]

        ---- Setup lspconfig.
        --local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
        --require('lspconfig')[%YOUR_LSP_SERVER%].setup {
        --capabilities = capabilities
        --}
    end
}
