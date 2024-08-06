return {
	"neovim/nvim-lspconfig",
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
