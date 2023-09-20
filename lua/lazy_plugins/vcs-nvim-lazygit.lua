return {
	"kdheepak/lazygit.nvim",
	dependencies = "folke/which-key.nvim",
	config = function()
		pcall(function()
			require("which-key").register({
				["<leader>g"] = {
					name = "+git",
					g = { "<CMD>LazyGit<CR>", "lazygit" },
				},
			}, {
				silent = true,
			})
		end)
	end,
}
