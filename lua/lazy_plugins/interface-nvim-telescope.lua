return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons" },
	priority = 60,
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				layout_strategy = "vertical",
				mappings = {
					n = {
						["d"] = actions.delete_buffer,
						["<c-d>"] = actions.delete_buffer,
					},
					i = {
						["<c-d>"] = actions.delete_buffer,
					},
				},
			},
			pickers = {
				find_files = {
					follow = true,
					-- no_ignore = true,
					-- no_ignore_parent = true,
				},
			},
		})

		pcall(function()
			require("which-key").add({
				{ "<C-p>", "<CMD>Telescope oldfiles<CR>", desc = "old files" },
				{ "<C-Space>", "<CMD>Telescope buffers<CR>", desc = "buffers" },
				{ "<Leader>", group = "telescope" },
				{ "<Leader>/", "<CMD>Telescope current_buffer_fuzzy_find<CR>", desc = "fuzzy find (buffer)" },
				{ "<Leader>b", "<CMD>Telescope buffers<CR>", desc = "buffers" },
				{ "<Leader>c", "<CMD>Telescope commands<CR>", desc = "commands" },
				{
					"<Leader>f",
					function()
						require("telescope.builtin").find_files()
					end,
					desc = "find files",
				},
				{ "<Leader>g", "<CMD>Telescope live_grep<CR>", desc = "live_grep" },
				{ "<Leader>h", "<CMD>Telescope heading<CR>", desc = "heading" },
				{ "<Leader>i", "<CMD>Telescope import<CR>", desc = "import" }, -- extension
				{ "<Leader>k", "<CMD>Telescope keymaps<CR>", desc = "keymaps" },
				{ "<Leader>o", "<CMD>Telescope oldfiles<CR>", desc = "old files" },
				{ "<Leader>p", "<CMD>Telescope projects<CR>", desc = "projects" },
				{ "<Leader>s", "<CMD>Telescope smart_open<CR>", desc = "smart_open" },
				{ "<Leader>t", "<CMD>Telescope<CR>", desc = "telescope" },
				{ "<Leader>]", "<CMD>Telescope<CR>", desc = "telescope" },
				-- 'nvim-telescope/telescope-symbols.nvim'
				{
					"<Leader>S",
					function()
						require("telescope.builtin").symbols({ sources = { "math", "latex" } })
					end,
					desc = "symbols",
				},
				{ "z", group = "spell/fold" },
				{ "z=", "<CMD>Telescope spell_suggest<CR>", desc = "Spelling suggestions" },
			})
		end)
	end,
}
