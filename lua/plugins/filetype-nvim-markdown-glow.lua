return {
	"ellisonleao/glow.nvim",
	init = function()
		vim.cmd([[
            augroup UserMarkdown
                au!
                au BufEnter,BufNew *.md nmap <buffer> <Leader>og <CMD>Glow<CR>
                au BufEnter,BufNew *.md nmap <buffer> <Leader>ov <CMD>!okular %&<CR>
            augroup END
        ]])
	end,
	opts = {
		-- glow_path = vim.env.HOME .. "/.local/bin/",
		border = "rounded",
	},
}
