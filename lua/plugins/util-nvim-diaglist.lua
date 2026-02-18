return {
	"onsails/diaglist.nvim",
	-- module = 'diaglist',
	keys = {
		{
			"<leader>uD",
			function()
				require("diaglist").open_buffer_diagnostics()
			end,
			desc = "Show diagnostics",
		},
	},
	config = function()
		require("diaglist").init({})
	end,
}
