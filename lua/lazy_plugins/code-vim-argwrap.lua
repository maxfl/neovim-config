return {
	"foosoft/vim-argwrap",
	config = function()
		pcall(function()
			require("which-key").register({
				["<leader>,"] = {
					"<CMD>ArgWrap<CR>",
					"split/join arguments (argwrap)",
				},
			})
		end)
	end,
}
