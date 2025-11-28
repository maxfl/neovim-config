return {
	"kazhala/close-buffers.nvim",
	-- cmd = {'BDelete', 'BWipeout'},
	-- module = 'close_buffers',
	init = function()
		pcall(function()
			require("which-key").add({
				{
					"<leader>C",
					group = "close buffer",
				},
				{
					"<Leader>Ch",
					function()
						require("close_buffers").delete({ type = "hidden", force = true })
					end,
					desc = "hidden",
				},
				{
					"<Leader>Cn",
					function()
						require("close_buffers").delete({ type = "nameless" })
					end,
					desc = "nameless",
				},
			})
		end)
	end,
	config = function()
		require("close_buffers").setup({})
	end,
}
