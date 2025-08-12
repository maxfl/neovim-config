return {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()

		pcall(function()
			require("which-key").add({
				{ "<Leader>]m", "<CMD>Mason<CR>", desc = "mason: LSP/Linter/Formatter" },
			})
		end)
    end
}
-- 'clangd',
-- 'cmake',
-- 'pyright',
-- 'fish_lsp',
-- 'texlab',
-- 'lua_ls'

