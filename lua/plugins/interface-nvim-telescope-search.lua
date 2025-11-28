return {
	"FabianWirth/search.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("search").setup({
			append_tabs = {
				-- 4
				{
					name = "Buffers",
					tele_func = require("telescope.builtin").buffers,
				},
				-- 5
				{
					name = "Smart",
					tele_func = require("telescope").extensions.smart_open.smart_open,
				},
				-- 6
				{
					name = "Old files",
					tele_func = function()
						require("telescope.builtin").oldfiles({
							only_cwd = true,
						})
					end,
				},
				-- 7
				{
					name = "Old files (all)",
					tele_func = require("telescope.builtin").oldfiles,
				},
				-- 8
				{
					name = "Find all files",
					tele_func = function()
						require("telescope.builtin").find_files({
							no_ignore = true,
							no_ignore_parent = true,
						})
					end,
				},
			},
		})

		pcall(function()
			require("which-key").add({
				{
					"<C-p>",
					function()
						require("search").open({ tab_id = 5 })
					end,
					desc = "old files",
				},
				{
					"<C-Space>",
					function()
						require("search").open({ tab_id = 4 })
					end,
					desc = "buffers",
				},
				{ "<Leader>", group = "telescope" },
				{
					"<Leader>]f",
					function()
						require("search").open()
					end,
					desc = "files (search)",
				},
			})
		end)
	end,
}
