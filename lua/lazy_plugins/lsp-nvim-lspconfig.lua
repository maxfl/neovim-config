return {
	"neovim/nvim-lspconfig",
    dependencies = "williamboman/mason-lspconfig.nvim",
	config = function()
		pcall(function()
			require("which-key").add({
				{
					"<leader>u",
					group = "utils",
				},
				{
					"<leader>uL",
					"<CMD>LspRestart<CR>",
					desc = "LspRestart",
				},
			})
		end)
	end,
}
