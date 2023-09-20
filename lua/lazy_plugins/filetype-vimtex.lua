return {
	"lervag/vimtex",
	config = function()
		--
		-- View
		--
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_view_use_temp_files = 1
		-- vim.g.vimtex_view_use_temp_files=0 -- broken

		--
		-- Compilation
		--
		local map = vim.api.nvim_set_keymap
		local noremap = { noremap = true }
		map("", "<localleader>lL", "<plug>(vimtex-compile-ss)", noremap)
		map(
			"",
			"<localleader>l0",
			"<CMD>let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>",
			noremap
		)

		vim.g.vimtex_quickfix_ignore_filters = {
			"Overfull \\\\.box",
			"Underfull \\\\.box",
			"Package relsize Warning",
			"Empty bibliography",
			"inputenc package ignored with utf8 based engines",
		}

		vim.g.vimtex_compiler_latexmk = { build_dir = "./vimtex.out" }

		--
		-- Imaps
		--
		vim.g.vimtex_imaps_enabled = false
		-- vim.g.vimtex_imaps_leader='/'

		--
		-- Spelling
		--
		vim.g.vimtex_syntax_nospell_comments = true
		vim.g.vimtex_syntax_custom_cmds = {
			-- References
			{ name = "cref", argspell = false },
			{ name = "crefrange", arggreedy = true, argspell = false },
			-- Siunitx
			{ name = "num", argspell = false },
			{ name = "si", argspell = false },
			{ name = "SI", arggreedy = true, argspell = false },
			-- Maty
			{ name = "text", mathmode = true, argspell = false },
		}

		--
		-- Autocmds
		--
		vim.cmd([=[
            augroup VimtexFix
                au!
                au BufEnter,BufRead *.tex silent! iunmap <buffer> ]]
                au FileType tex silent! iunmap <buffer> ]]
            augroup END
        ]=])

		--
		-- Completion
		--
		pcall(function()
			require("coq_3p")({
				{ src = "vimtex", short_name = "vTEX" },
			})
		end)

		--
		-- Hotkeys
		--
		pcall(function()
			require("which-key").register({
				["<leader>l"] = {
					name = "+latex",
					-- p='->ascii',
					-- P='->ascii preview'
				},
			}, { silent = true })
		end)
	end,
}
