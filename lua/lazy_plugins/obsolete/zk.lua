return {
	"mickael-menu/zk-nvim",
	dependencies = "folke/which-key.nvim",
	cmd = { "ZkNew", "ZkLinks", "ZkNotes", "ZkTags", "Zk*" },
	init = function()
		vim.env["ZK_NOTEBOOK_DIR"] = "/home/gonchar/zettels"

		pcall(function()
			require("which-key").register({
				["<leader>z"] = {
					name = "+zettelkasten",
					["+"] = { "<CMD>ZkNew<CR>", "new" },
					l = { "<CMD>ZkLinks<CR>", "links" },
					n = { "<CMD>ZkNotes<CR>", "notes" },
					t = { "<CMD>ZkTags<CR>", "tags" },
				},
				["<leader>]"] = {
					name = "+telescope",
					z = { "<CMD>ZkLinks<CR>", "zettelkasten" },
				},
			}, {
				silent = true,
			})
		end)
	end,
	config = function()
		require("zk").setup({
			picker = "telescope",
		})
	end,
}
