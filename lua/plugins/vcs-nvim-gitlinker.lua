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
			require("which-key").add({
				{ "<leader>g", group = "git" },
				{
					"<leader>gl",
					"<CMD>GitLink<CR>",
					desc = "copy link",
				},
				{
					"<leader>gL",
					"<CMD>GitLink!<CR>",
					desc = "open link",
				},
			}, {
				silent = true,
			})
		end)
	end,
}
