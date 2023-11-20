return {
	"f-person/git-blame.nvim",
	config = function()
        require("gitblame").setup({
            enabled = false
        })
		pcall(function()
			require("which-key").register({
				["<leader>"] = {
					["g"] = {
						name = "+git",
						b = { "<CMD>GitBlameToggle<CR>", "git blame" },
					},
				},
			})
		end)
	end,
}
