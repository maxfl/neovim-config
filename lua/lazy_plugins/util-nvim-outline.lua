return {
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({})

		pcall(function()
			require("which-key").register({
				["<leader>u"] = {
					name = "+utils",
					o = { "<CMD>Outline<CR>", "outline" },
				},
			})
		end)
	end,
}
