return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				python = { "isort", "black" },
				snakemake = { "isort", "snakefmt" },
				-- Use a sub-list to run only the first available formatter
				-- javascript = { { "prettierd", "prettier" } },
			},
            formatters = {
                snakefmt = {
                    command = "snakefmt",
                    args = { "-" },
                    stdin = true
                }
            }
		})
		pcall(function()
			require("which-key").register({
				["<Leader>u"] = {
					name = "+utils",
					f = {
						function()
							require("conform").format()
						end,
						"format buffer",
					},
				},
			})
		end)
	end,
}
