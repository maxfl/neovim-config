return {
	"f-person/git-blame.nvim",
    dependencies = "folke/which-key.nvim",
	config = function()
		require("gitblame").setup({
			enabled = false,
		})

		local wk = require("which-key")
		if not wk then
			return
		end

		wk.register({
			["<leader>"] = {
				["="] = {
					name = "+git/conflicts",
					b = {"<CMD>GitBlameToggle<CR>", "blame"},
				},
			},
		})
	end,
}
