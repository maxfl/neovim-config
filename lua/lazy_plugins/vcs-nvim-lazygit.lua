return {
	"kdheepak/lazygit.nvim",
	config = function()
		pcall(function()
			require("which-key").add({
				{ "<leader>g", group = "git" },
				{ "<leader>gg", "<CMD>LazyGit<CR>", desc = "lazygit" },
			}, {
				silent = true,
			})
		end)
	end,
}
