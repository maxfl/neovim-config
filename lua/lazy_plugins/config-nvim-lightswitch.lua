return {
	"markgandolfo/lightswitch.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	cmd = "LightSwitchShow",
	keys = {
		{
			"<leader>[",
			":LightSwitchShow<CR>",
			desc = "LightSwitch",
		},
	},
	config = function()
		require("lightswitch").setup({
			toggles = {
				{
					name = "LSP",
					enable_cmd = ":LspStart<CR>",
					disable_cmd = ":LspStop<CR>",
					state = true, -- Initially enabled
				},
				{
					name = "lualine",
					enable_cmd = "require('lualine').hide({unhide=true})",
					disable_cmd = "require('lualine').hide()",
					state = true, -- Initially enabled
				},
				{
					name = "diffopt: iwhite",
					enable_cmd = ":set diffopt+=iwhite<CR>",
					disable_cmd = ":set diffopt-=iwhite<CR>",
					state = false, -- Initially disabled
				},
				{
					name = "diffopt: iwhiteall",
					enable_cmd = ":set diffopt+=iwhiteall<CR>",
					disable_cmd = ":set diffopt-=iwhiteall<CR>",
					state = false, -- Initially disabled
				},
				{
					name = "focus",
					enable_cmd = ":FocusEnable<CR>",
					disable_cmd = ":FocusDisable<CR>",
					state = true, -- Initially enabled
				},
				-- {
				-- 	name = "set number",
				-- 	enable_cmd = ":set number<CR>",
				-- 	disable_cmd = ":set nonumber<CR>",
				-- 	state = true, -- Initially enabled
				-- },
				-- {
				-- 	name = "set relativenumber",
				-- 	enable_cmd = ":set relativenumber<CR>",
				-- 	disable_cmd = ":set norelativenumber<CR>",
				-- 	state = true, -- Initially enabled
				-- },
				{
					name = "commentless: hide comments",
					enable_cmd = ":Commentless toggle<CR>",
					disable_cmd = ":Commentless toggle<CR>",
					state = false, -- Initially disabled
				},
			},
		})
		lightswitch = require("lightswitch")
		lightswitch.add_toggle("Git Signs", "Gitsigns toggle_signs", "Gitsigns toggle_signs", true)
	end,
}

--[[
vim.keymap.set("n", "<Leader>di", "<CMD>set diffopt+=iwhite<CR>")
vim.keymap.set("n", "<Leader>dI", "<CMD>set diffopt-=iwhite<CR>")
vim.keymap.set("n", "<Leader>dw", "<CMD>set diffopt+=iwhiteall<CR>")
vim.keymap.set("n", "<Leader>dW", "<CMD>set diffopt-=iwhiteall<CR>")
--]]
