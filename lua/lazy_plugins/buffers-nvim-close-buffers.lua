return {
	"kazhala/close-buffers.nvim",
	-- cmd = {'BDelete', 'BWipeout'},
	-- module = 'close_buffers',
	init = function()
		pcall(function()
			require("which-key").register({
				["<leader>C"] = {
					name = "+close buffer",
					h = {
						'<CMD>lua require "close_buffers".delete{type="hidden", force=true}<CR>',
						"hidden",
					},
					n = {
						'<CMD>lua require "close_buffers".delete{type="nameless"}<CR>',
						"nameless",
					},
				},
			})
		end)
	end,
	config = function()
		require("close_buffers").setup({})
	end,
}
