return {
	"f-person/git-blame.nvim",
	config = function()
        require("gitblame").setup({
            enabled = false
        })
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
