return {
	"f-person/git-blame.nvim",
    dependencies = "folke/which-key.nvim",
    init = function()
        vim.g.gitblame_enabled = 0
    end,
	config = function()
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
