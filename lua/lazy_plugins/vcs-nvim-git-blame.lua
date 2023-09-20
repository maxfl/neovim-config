return {
	"f-person/git-blame.nvim",
	init = function()
		vim.g.gitblame_enabled = 0
	end,
	config = function()
		pcall(function()
			require("which-key").register({
				["<leader>"] = {
					["="] = {
						name = "+git/conflicts",
						b = { "<CMD>GitBlameToggle<CR>", "blame" },
					},
				},
			})
		end)
	end,
}
