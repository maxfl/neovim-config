return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	keys = {
		-- 👇 in this section, choose your own keymappings!
		{
			"<F11>",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			-- Open in the current working directory
			"<S-F11>",
			"<cmd>Yazi cwd<cr>",
			desc = "Open the file manager in nvim's working directory",
		},
		-- {
		--   "<c-up>",
		--   "<cmd>Yazi toggle<cr>",
		--   desc = "Resume the last yazi session",
		-- },
	},
	---@type YaziConfig
	opts = {
		-- if you want to open yazi instead of netrw, see below for more info
		open_for_directories = false,
		keymaps = {
			show_help = "<leader><f1>",
			-- show_help = "<f1>",
			open_file_in_vertical_split = "<leader><c-v>",
			open_file_in_horizontal_split = "<leader><c-x>",
			open_file_in_tab = "<leader><c-t>",
			grep_in_directory = "<leader><c-s>",
			replace_in_directory = "<leader><c-g>",
			-- cycle_open_buffers = "<tab>",
			-- copy_relative_path_to_selected_files = "<c-y>",
			send_to_quickfix_list = "<leader><c-q>",
			-- change_working_directory = "<c-\\>",
			-- open_and_pick_window = "<leader><c-o>",
		},
	},
}
