return {
	"crispgm/telescope-heading.nvim",
	dependencies = "nvim-telescope/telescope.nvim",
	config = function()
		require("telescope").load_extension("heading")
	end,
}
