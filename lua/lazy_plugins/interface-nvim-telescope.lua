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
			require("which-key").register({
                ["<C-p>"]     = { "<CMD>Telescope oldfiles<CR>", "old files" },
                ["<C-Space>"] = { "<CMD>Telescope buffers<CR>", "buffers" },
				["<Leader>]"] = {
					name = "+telescope",
					["/"] = { "<CMD>Telescope current_buffer_fuzzy_find<CR>", "fuzzy find (buffer)" },
					b = { "<CMD>Telescope buffers<CR>", "buffers" },
					c = { "<CMD>Telescope commands<CR>", "commands" },
					f = {
						function()
							require("telescope.builtin").find_files()
						end,
						"find files",
					},
					g = { "<CMD>Telescope live_grep<CR>", "live_grep" },
					h = { "<CMD>Telescope heading<CR>", "heading" },
					i = { "<CMD>Telescope import<CR>", "import" }, -- extension
					k = { "<CMD>Telescope keymaps<CR>", "keymaps" },
					o = { "<CMD>Telescope oldfiles<CR>", "old files" },
					p = { "<CMD>Telescope projects<CR>", "projects" },
					s = { "<CMD>Telescope smart_open<CR>", "smart_open" },
					t = { "<CMD>Telescope<CR>", "telescope" },
					["]"] = { "<CMD>Telescope<CR>", "telescope" },
					-- 'nvim-telescope/telescope-symbols.nvim'
					S = {
						function()
							require("telescope.builtin").symbols({ sources = { "math", "latex" } })
						end,
						"symbols",
					},
				},
				z = {
					name = "+spell/fold",
					["="] = { "<CMD>Telescope spell_suggest<CR>", "Spelling suggestions" },
				},
			})
		end)
	end,
}
