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
                        function() require "close_buffers".delete{type="hidden", force=true} end,
						"hidden",
					},
					n = {
						function() require "close_buffers".delete{type="nameless"} end,
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
