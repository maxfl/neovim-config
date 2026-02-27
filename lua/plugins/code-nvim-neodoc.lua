-- Plugin: SunnyTamang/neodoc.nvim
-- Installed via store.nvim

return {
	"sunnytamang/neodoc.nvim",
    ft = "python",
	keys = {
		{
			"<leader>ud",
            "<CMD>NeoDocGenerate<CR>",
			desc = "Generage docstring",
		},
	},
	config = function()
		require("neodoc").setup({

			docstring_style = "numpy",
			enable_keymaps = false, -- Disable all keymaps
		})
	end,
}

