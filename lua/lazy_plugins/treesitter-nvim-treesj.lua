--
-- Split and  join blocks of code
--
return {
	"Wansmer/treesj",
	config = function()
		require("treesj").setup({
			use_default_keymaps = false,
		})
		pcall(function()
			require("which-key").register({
				["<leader><S-,>"] = {
					function()
						require("treesj").toggle()
					end,
					"split/join arguments (treesj)",
				},
			})
		end)
	end,
}
