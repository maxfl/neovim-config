
return {
	"SirVer/ultisnips",
	dependencies = "honza/vim-snippets",
	cond = function()
		return vim.fn.has("python3")
	end,
	init = function()
		-- vim.g.UltiSnipsExpandTrigger='<Tab>'
		vim.g.UltiSnipsExpandTrigger = "<M-j>"
		-- vim.g.UltiSnipsJumpForwardTrigger='<Tab>'
		-- vim.g.UltiSnipsJumpBackwardTrigger='<S-Tab>'

	end,
}
