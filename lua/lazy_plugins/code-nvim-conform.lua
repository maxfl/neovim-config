return {
	"stevearc/conform.nvim",
	config = function()
		local util = require("conform.util")

		require("conform").setup({
            -- log_level = vim.log.levels.DEBUG,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				python = { "isort", "black", "docformatter" },
				snakemake = { "isort", "snakefmt" },
				sh = { "beautysh" },
				bash = { "beautysh" },
				json = { "jsonnetfmt" },
				tex = { "latexindent" },
				-- Use a sub-list to run only the first available formatter
				-- javascript = { { "prettierd", "prettier" } },
			},
			default_format_opts = {
				timeout_ms = 2000,
			},
			formatters = {
				snakefmt = {
					command = "snakefmt",
					args = { "-" },
					stdin = true,
				},
				black = {
					args = {
						"--stdin-filename",
						"$FILENAME",
						"--quiet",
						"--target-version",
						"py313",
						"-",
					},
					cwd = util.root_file({
						-- https://black.readthedocs.io/en/stable/usage_and_configuration/the_basics.html#configuration-via-a-file
						"pyproject.toml",
					}),
				},
				latexindent = {
					command = "latexindent",
					args = {
                        "--yaml",
                        "defaultIndent:'  '",
                        "-"
					},
					range_args = function(_, ctx)
						return { "--lines", ctx.range.start[1] .. "-" .. ctx.range["end"][1], "-" }
					end,
					stdin = true,
				},
			},
		})
		pcall(function()
			require("which-key").add({
				{
					"<Leader>u",
					group = "utils",
				},
				{
					"<Leader>uf",
					function()
						require("conform").format()
					end,
					desc = "format buffer (conform)",
				},
				{
					"<Leader>uF",
					vim.cmd.ConformInfo,
					desc = "conform info",
				},
			})
		end)
	end,
}
