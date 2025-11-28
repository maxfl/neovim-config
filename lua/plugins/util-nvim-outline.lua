return {
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({})

		pcall(function()
			require("which-key").add({
				{
					"<leader>u",
					group = "utils",
				},
				{
					"<leader>uo",
					"<CMD>Outline<CR>",
					desc = "outline",
				},
			})
		end)
	end,
}
