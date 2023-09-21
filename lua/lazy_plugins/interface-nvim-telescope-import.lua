return {
	"piersolenski/telescope-import.nvim",
	dependencies = "nvim-telescope/telescope.nvim",
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("import")
		telescope.setup({
			extensions = {
				import = {
					insert_at_top = false,
				},
			},
		})
	end,
}
