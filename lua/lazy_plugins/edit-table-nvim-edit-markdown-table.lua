return {
	"kiran94/edit-markdown-table.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
    enabled = false,
	config = function()
		require("edit-markdown-table").setup()

		pcall(function()
			require("which-key").register({
				["<leader>"] = {
					["t"] = {
						name = "+table",
						e = { function() require('edit-markdown-table').edit_cell() end, "edit cell" },
					},
				},
			})
		end)
	end,
}
