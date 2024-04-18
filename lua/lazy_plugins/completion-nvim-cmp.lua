return {
	"hrsh7th/nvim-cmp",
	enable = true,
	priority = 60,
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"quangnguyen30191/cmp-nvim-ultisnips",
		--{'petertriho/cmp-git', dependencies = 'nvim-lua/plenary.nvim'},
		"hrsh7th/cmp-nvim-lua",
		"dmitmel/cmp-digraphs",
		"micangl/cmp-vimtex",
		-- 'f3fora/cmp-spell',
		-- "kdheepak/cmp-latex-symbols",
		--'hrsh7th/cmp-omni'
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					--vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
					vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = "vimtex" },
				{ name = "ultisnips" },
				{ name = "nvim_lsp" },
				-- { name = 'nvim_lua' },
				--{ name = 'latex_symbols' },
			}, {
				{ name = "path" },
				{ name = "buffer" },
				{ name = "digraphs" },
			}),
			completion = {
				keyword_length = 4,
			},
		})

		-- Use buffer source for `/`.
		cmp.setup.cmdline("/", {
			sources = {
				{ name = "buffer" },
			},
		})

		-- -- Use cmdline & path source for ':'.
		-- cmp.setup.cmdline(":", {
		-- 	sources = cmp.config.sources({
		-- 		{ name = "path" },
		-- 	}, {
		-- 		{ name = "cmdline" },
		-- 	}),
		-- })

		--vim.cmd[[
		--autocmd FileType lua lua sources=require'cmp'.setup.buffer.sources
		--\ sources[#sources+1] = {name='nvim_lua'}
		--]]

		---- Setup lspconfig.
		--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
		--require('lspconfig')[%YOUR_LSP_SERVER%].setup {
		--capabilities = capabilities
		--}
		vim.keymap.set("i", "<C-X><C-U>", "<Cmd>lua require('cmp').complete()<CR>")
	end,
}
