return {
	"cshuaimin/ssr.nvim",
	module = "ssr",
	-- Calling setup is optional.
	config = function()
		require("ssr").setup()

		pcall(function()
			require("which-key").register({
				["<Leader>f"] = {
					name = "+search",
					t = {
						function()
							require("ssr").open()
						end,
						"structural search and replace",
					},
				},
			}, { mode = "" })
		end)
	end,
}
