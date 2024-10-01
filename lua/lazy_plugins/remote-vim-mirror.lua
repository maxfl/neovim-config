return {
	"zenbro/mirror.vim",
	-- cmd = {'MirrorPush', 'MirrorPull', 'MirrorConfig', 'MirrorConfigReload', 'MirrorSSH', 'MirrorEdit', 'Mirror*'},
	init = function()
		pcall(function()
			require("which-key").add({
				{ "<leader>r", group = "mirror" },
				{ "<Leader>rt", "<CMD>MirrorPush<CR>", desc = "push (there)" },
				{ "<Leader>rc", "<CMD>MirrorPush<CR>", desc = "push" },
				{ "<Leader>rp", "<CMD>MirrorPull<CR>", desc = "pull" },
				{ "<Leader>rh", "<CMD>MirrorPull<CR>", desc = "pull (here)" },
				{ "<Leader>rs", "<CMD>MirrorSSH<CR>", desc = "ssh" },
				{ "<Leader>rC", "<CMD>MirrorConfig<CR>", desc = "config" },
				{ "<Leader>rr", "<CMD>MirrorConfigReload<CR>", desc = "reload config" },
			})
		end)
	end,
}
