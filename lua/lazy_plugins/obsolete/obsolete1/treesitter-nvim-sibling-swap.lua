return {
	"Wansmer/sibling-swap.nvim",
	dependencies = { "nvim-treesitter" },
	config = {
		keymaps = {
			["<C-.>"] = "swap_with_right",
			["<C-,>"] = "swap_with_left",
			["<Leader><C-.>"] = "swap_with_right_with_opp",
			["<Leader><C-,>"] = "swap_with_left_with_opp",
		},
	},
}
