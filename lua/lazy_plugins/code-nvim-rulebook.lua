return {
    'chrisgrieser/nvim-rulebook',
    keys = {
		{ "<leader>ui", function() require("rulebook").ignoreRule() end, desc = "ignore rule" },
		{ "<leader>ul", function() require("rulebook").lookupRule() end, desc = "lookup rule" },
	}
}
