return {
	"john-nanney/pushd.vim",
	cmd = { "Pushd", "Popd", "Dirs" },
	init = function()
		pcall(function()
			require("which-key").add({
				{
					"<leader>G",
					group = "goto",
				},
				{ "<Leader>G<BS>", "<CMD>Popd<CR>", desc = "back" },
				{ "<Leader>GB", "<CMD>Popd<CR>", desc = "back" },
				{ "<Leader>Gb", "<CMD>Pushd %:h<CR>", desc = "current buffer" },
				{ "<Leader>Gd", "<CMD>Dirs<CR>", desc = "list dirs" },
			})
		end)
	end,
}
