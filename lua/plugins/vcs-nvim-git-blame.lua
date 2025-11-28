return {
	"f-person/git-blame.nvim",
	config = function()
		require("gitblame").setup({
			enabled = false,
		})
		pcall(function()
			require("which-key").add({
				{ "<leader>g", group = "git" },
				{ "<leader>gb", "<CMD>GitBlameToggle<CR>", desc = "git blame" },
			})
		end)
	end,
}
