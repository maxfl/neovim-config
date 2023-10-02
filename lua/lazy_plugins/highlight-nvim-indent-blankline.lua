--
-- Indentation guides
--
return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		require("ibl").update({
			enabled = true,
			indent = {
				char = "┊",
				tab_char = "│",
			},
		})
	end,
}
