local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup("lazy_plugins")

pcall(function()
	require("which-key").register({
		["<leader>"] = {
			p = { "<CMD>EditMarkdownTable<CR>", "plugins" },
		},
	})
end)
