return {
	"kiran94/edit-markdown-table.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("edit-markdown-table").setup()

		pcall(function()
			require("which-key").register({
				["<leader>"] = {
					["t"] = {
						name = "+table",
						M = { "<CMD>EditMarkdownTable<CR>", "edit" },
					},
				},
			})
		end)
	end,
}
