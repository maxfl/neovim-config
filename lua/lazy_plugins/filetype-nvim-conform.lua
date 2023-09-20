return {
	"stevearc/conform.nvim",
	dependencies = "folke/which-key.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				-- javascript = { { "prettierd", "prettier" } },
			},
		})
		local status, whichkey = pcall(function()
			return require("which-key")
		end)
		if not status then
			return
		end

		whichkey.register({
			["<Leader>u"] = {
				name = "+utils",
				f = { '<CMD>lua require "conform".format()<CR>', "format buffer" },
			},
		})
	end,
}
