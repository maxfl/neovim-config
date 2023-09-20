return {
	"inkarkat/vim-ConflictMotions",
	dependencies = {
		{
			"inkarkat/vim-CountJump",
			dependencies = "inkarkat/vim-ingo-library",
		},
		"tpope/vim-repeat",
		"inkarkat/vim-visualrepeat",
		"folke/which-key.nvim",
	},
	init = function()
		vim.g.ConflictMotions_TakeMappingPrefix = "<Leader>="

		pcall(function()
			require("which-key").register({
				["<leader>"] = {
					["="] = {
						name = "+git/conflicts",
						["."] = "take this",
						[">"] = "take theirs",
						["|"] = "take base",
						["<"] = "take ours",
						d = "take none",
					},
				},
			})
		end)
	end,
}
