return {
	"t9md/vim-choosewin",
	config = function()
		vim.g.choosewin_overlay_enable = true

		pcall(function()
			require("which-key").add({
				{ "<Leader>-", "<Plug>(choosewin)", desc = "choosewin" },
				{ "<Leader>wc", "<Plug>(choosewin)", desc = "choosewin" },
			})
		end)
	end,
}
