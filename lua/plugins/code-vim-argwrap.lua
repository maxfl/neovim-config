return {
	"foosoft/vim-argwrap",
	config = function()
		pcall(function()
			require("which-key").add({
				{ "<leader>,", "<CMD>ArgWrap<CR>", desc = "split/join arguments (argwrap)" },
			})
		end)
	end,
}
