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
                },
                {
                    name = "Find all files",
                    tele_func = function() require("telescope.builtin").find_files({no_ignore=true, no_ignore_parent=true}) end
                }
            }
        })

		pcall(function()
			require("which-key").register({
                ["<C-p>"]     = { function() require("search").open({ tab_id = 5}) end, "old files" },
                ["<C-Space>"] = { function() require("search").open({ tab_id = 4}) end, "buffers" },
				["<Leader>]"] = {
					name = "+telescope",
					f = { function() require("search").open() end, "files (search)" },
                }
			})
		end)
    end
}
