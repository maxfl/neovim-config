return {
	"linrongbin16/gitlinker.nvim",
	config = function()
		require("gitlinker").setup({
			router = {
				browse = {
					["^git.jinr.ru"] = "https://git.jinr.ru/"
						.. "{_A.USER}/"
						.. "{_A.REPO}/blob/"
						.. "{_A.REV}/"
						.. "{_A.FILE}"
						.. "#L{_A.LSTART}"
						.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					["^code.ihep.ac.cn"] = "https://code.ihep.ac.cn/"
						.. "{_A.USER}/"
						.. "{_A.REPO}/blob/"
						.. "{_A.REV}/"
						.. "{_A.FILE}"
						.. "#L{_A.LSTART}"
						.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
				},
				blame = {
					["^git.jinr.ru"] = "https://git.jinr.ru/"
						.. "{_A.USER}/"
						.. "{_A.REPO}/blame/"
						.. "{_A.REV}/"
						.. "{_A.FILE}"
						.. "#L{_A.LSTART}"
						.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
					["^code.ihep.ac.cn"] = "https://code.ihep.ac.cn/"
						.. "{_A.USER}/"
						.. "{_A.REPO}/blame/"
						.. "{_A.REV}/"
						.. "{_A.FILE}"
						.. "#L{_A.LSTART}"
						.. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
				},
			},
		})
		pcall(function()
			require("which-key").register({
				["<leader>g"] = {
					name = "+git",
					l = { "<CMD>GitLink<CR>", "copy link" },
					L = { "<CMD>GitLink!<CR>", "open link" },
				},
			}, {
				silent = true,
			})
		end)
	end,
}
