return {
	"cshuaimin/ssr.nvim",
	enabled = true,
	config = function()
		require("ssr").setup()

		pcall(function()
			require("which-key").add({
				{
					"<Leader>f",
					group = "search",
				},
				{
					"<Leader>ft",
					function()
						require("ssr").open()
					end,
					desc = "structural search and replace",
					mode = "n",
				},
			})
		end)
	end,
}
