return {
	"nvim-pack/nvim-spectre",
	-- module='spectre',
	init = function()
		pcall(function()
			require("which-key").add({
				{
					"<Leader>f",
					group = "search and replace",
				},
				{
					"<Leader>fs",
					function()
						require("spectre").open()
					end,
					desc = "spectre",
					mode = "n",
				},
			})
		end)
	end,
}
