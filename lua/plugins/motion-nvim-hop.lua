--
-- Clever jump
--
return {
	"smoka7/hop.nvim",
	-- cmd = 'Hop*',
	init = function()
		pcall(function()
			require("which-key").add({
				{
					"<leader>m",
					group = "hop",
				},
				{ "<Leader>m?", "<CMD>HopPattern<CR>", desc = "pattern" },
				{ "<Leader>m/", "<CMD>HopPatternBC<CR>", desc = "pattern (back)" },
				{ "<Leader>mf", "<CMD>HopChar1<CR>", desc = "char" },
				{ "<Leader>mF", "<CMD>HopChar1BC<CR>", desc = "char (back)" },
				{ "<Leader>mk", "<CMD>HopLineBC<CR>", desc = "line (back)" },
				{ "<Leader>mj", "<CMD>HopLineAC<CR>", desc = "line" },
				{ "<Leader>mw", "<CMD>HopWord<CR>", desc = "word" },
				{ "<Leader>mW", "<CMD>HopWordBC<CR>", desc = "word (back)" },
			})
		end)
	end,
	config = function()
		-- you can configure Hop the way you like here; see :h hop-config
		require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
	end,
}
