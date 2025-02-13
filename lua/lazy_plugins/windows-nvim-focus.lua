return {
	"nvim-focus/focus.nvim",
	-- 'willothy/focus.nvim',
	config = function()
		require("focus").setup({
			enable = true,
			ui = {
				relativenumber = true,
				hybridnumber = true,
				absolutenumber_unfocussed = true,
				cursorline = false,
				signcolumn = false,
				winhighlight = true,
			},
			autoresize = {
				enable = false,
			},
		})

		--
		-- Ignores
		--
		local ignore_buftypes = { "nofile", "prompt", "popup", "terminal" }
		local ignore_filetypes = { "neoterm", "lazygit" }

        augroup = vim.api.nvim_create_augroup("FocusDisable", { clear = true })

		vim.api.nvim_create_autocmd("WinEnter", {
			group = augroup,
			callback = function(_)
				if vim.tbl_contains(ignore_buftypes, vim.bo.buftype) then
					vim.w.focus_disable = true
					-- else
					--     vim.w.focus_disable = false
				end
			end,
			desc = "Disable focus autoresize for BufType",
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = augroup,
			callback = function(_)
				if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
					vim.b.focus_disable = true
				end
			end,
			desc = "Disable focus autoresize for FileType",
		})

		--
		-- Mappings
		--
		local map, silent = vim.api.nvim_set_keymap, { silent = true }
		map("n", "<M-h>", "<CMD>FocusSplitLeft<CR>", silent)
		map("n", "<M-j>", "<CMD>FocusSplitDown<CR>", silent)
		map("n", "<M-k>", "<CMD>FocusSplitUp<CR>", silent)
		map("n", "<M-l>", "<CMD>FocusSplitRight<CR>", silent)

		map("n", "<M-w>", "<CMD>close<CR>", silent)
		-- map('n', '<M-w><M-w>', '<CMD>close<CR>', silent)
		map("n", "<M-S-w>", "<CMD>Bdelete<CR>", silent)

		-- map('n', '<M-m>', '<CMD>FocusMaximise<CR>', silent)
		map("n", "<M-m>", "<CMD>FocusMaxOrEqual<CR>", silent)
		map("n", "<M-S-m>", "<CMD>FocusEqualise<CR>", silent)

		-- map('n', '<Leader>ww', '<CMD>FocusDisableWindow<CR>', silent)
		-- map('n', '<Leader>wW', '<CMD>FocusEnableWindow<CR>', silent)
		map("n", "<Leader>wT", "<CMD>FocusToggle<CR>", silent)
		map("n", "<Leader>w=", "<CMD>FocusEqualise<CR>", silent)
		map("n", "<Leader>wf", "<CMD>FocusMaximise<CR>", silent)

		local opts = {}
		map("n", "<M-->", "<CMD>tabprev<CR>", opts)
		map("n", "<M-=>", "<CMD>tabnext<CR>", opts)
		map("n", "<M-+>", "<CMD>tabnew<CR>", opts)
	end,
}
