return {
	"inkarkat/vim-ConflictMotions",
	dependencies = {
		{
			"inkarkat/vim-CountJump",
			dependencies = "inkarkat/vim-ingo-library",
		},
		"tpope/vim-repeat",
		"inkarkat/vim-visualrepeat",
	},
	init = function()
		vim.g.ConflictMotions_TakeMappingPrefix = "<Leader>="

		pcall(function()
			require("which-key").add({
				{ "<leader>=", group = "git/conflicts" },
				{ "<leader>=.", desc = "take this" },
				{ "<leader>=>", desc = "take theirs" },
				{ "<leader>=|", desc = "take base" },
				{ "<leader>=<", desc = "take ours" },
				{ "<leader>=d", desc = "take none" },
			})
		end)
	end,
}
