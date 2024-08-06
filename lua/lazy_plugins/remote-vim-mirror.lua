return {
	"zenbro/mirror.vim",
	-- cmd = {'MirrorPush', 'MirrorPull', 'MirrorConfig', 'MirrorConfigReload', 'MirrorSSH', 'MirrorEdit', 'Mirror*'},
	init = function()
		pcall(function()
			require("which-key").add({
				{ "<leader>r", group = "mirror" },
				{ "<Leader>t", "<CMD>MirrorPush<CR>", desc = "push (there)" },
				{ "<Leader>c", "<CMD>MirrorPush<CR>", desc = "push" },
				{ "<Leader>p", "<CMD>MirrorPull<CR>", desc = "pull" },
				{ "<Leader>h", "<CMD>MirrorPull<CR>", desc = "pull (here)" },
				{ "<Leader>s", "<CMD>MirrorSSH<CR>", desc = "ssh" },
				{ "<Leader>C", "<CMD>MirrorConfig<CR>", desc = "config" },
				{ "<Leader>r", "<CMD>MirrorConfigReload<CR>", desc = "reload config" },
			})
		end)
	end,
}
