return {
    "FabianWirth/search.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
        require("search").setup({
            append_tabs = {
                {
                    name = "Buffers",
                    tele_func = require("telescope.builtin").buffers
                },
                {
                    name = "Old files",
                    tele_func = require("telescope.builtin").oldfiles
                }
            }
        })

		pcall(function()
			require("which-key").register({
				["<Leader>]"] = {
					name = "+telescope",
					["f"] = { function() require("search").open() end, "files (search)" },
                }
			})
		end)
    end
}
