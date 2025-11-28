return {
	"SmiteshP/nvim-navbuddy",
	dependencies = {
		"neovim/nvim-lspconfig",
		"SmiteshP/nvim-navic",
		"MunifTanjim/nui.nvim",
		-- "numToStr/Comment.nvim",        -- Optional
		"nvim-telescope/telescope.nvim", -- Optional
	},
	config = function()
		local navbuddy = require("nvim-navbuddy")

		navbuddy.setup({
			lsp = {
				auto_attach = true, -- If set to true, you don't need to manually use attach function
				preference = nil, -- list of lsp server names in order of preference
			},
		})

		pcall(function()
			require("which-key").add({
				{ "<leader>u", group = "utils" },
				{ "<leader>un", "<CMD>Navbuddy<CR>", desc = "navbuddy" },
			})
		end)
	end,
}
