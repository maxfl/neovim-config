return {
	"mjmjm0101/quickui.nvim",
	lazy = false,
	config = function()
		require("quickui").setup({
			keymap = "<F9>", -- toggle the menubar
			border = "single",
			winblend = { bar = 0, menu = 0 },

			menus = {
				{
					name = "&Editing",
					items = {
						{ name = "Toggle &table-mode", rtxt = "\\tm", cmd = "normal \\tm" },
						{ name = "Enable &GhostText", rtxt = "\\ug", cmd = "<CMD>GhostTextStart<CR>" },
						{ name = "--", cmd = "--" },
						{ name = "&Remove trailing whitespace", rtxt = "\\rts", cmd = "<CMD>FixWhitespace<CR>" },
					},
				},
				{
					name = "&Configuration",
					items = {
						{
							name = "Toggle &relative number",
							cmd = "<CMD>setl relativenumber!<CR>",
						},
						{
							name = "Disable &sign column",
							cmd = "<CMD>setl signcolumn=no<CR>",
						},
						{
							name = "Toggle &listchars",
							cmd = "<CMD>setl listchars!<CR>",
						},
						{ name = "--", cmd = "--" },
						{
							name = "Toggle indent &blank line",
							cmd = "<CMD>IBLToggle<CR>",
						},
						{
							name = "Disable lualine",
							cmd = function()
								require("lualine").hide({ unhide = true })
							end,
						},
						{
							name = "Enable lualine",
							cmd = function()
								require("lualine").hide()
							end,
						},
						{ name = "--", cmd = "--" },
						{
							name = "&Snapshot friendly configuration",
							cmd = function()
								vim.o.relativenumber = false
								vim.o.signcolumn = "no"
								vim.o.list = false
								vim.o.scrolloff = 0

								vim.cmd([[
                                    FocusDisable
                                    IBLDisable
                                    TSContext disable
                                ]])
								require("lualine").hide()
								vim.diagnostic.enable(false)
							end,
						},
					},
				},
				{
					name = "&Diff",
					items = {
						{
							name = "+iwhite",
							conditions = function(opt)
								return not vim.o.diffopt:find("iwhite", 1, true)
							end,
							cmd = ":set diffopt+=iwhite<CR>",
						},
						{
							name = "-iwhite",
							conditions = function(opt)
								return vim.o.diffopt:find("iwhite", 1, true)
							end,
							cmd = ":set diffopt-=iwhite<CR>",
						},
						{
							name = "+iwhiteall",
							conditions = function(opt)
								return not vim.o.diffopt:find("iwhiteall", 1, true)
							end,
							cmd = ":set diffopt+=iwhiteall<CR>",
						},
						{
							name = "-iwhiteall",
							conditions = function(opt)
								return vim.o.diffopt:find("iwhiteall", 1, true)
							end,
							cmd = ":set diffopt-=iwhiteall<CR>",
						},
					},
				},
				{
					name = "&Search",
					items = {
						{ name = "&GrugFar  :GrugFar…", cmd = 'call feedkeys(":GrugFar ")' },
						{ name = "&Esearch          \ff…", cmd = "normal \ff" },
					},
				},
				-- {
				-- 			toggles = {
				-- 				{
				-- 					name = "LSP",
				-- 					enable_cmd = ":LspStart<CR>",
				-- 					disable_cmd = ":LspStop<CR>",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "lualine",
				-- 					enable_cmd = "require('lualine').hide({unhide=true})",
				-- 					disable_cmd = "require('lualine').hide()",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "wrap",
				-- 					enable_cmd = ":set wrap!<CR>",
				-- 					disable_cmd = ":set wrap!<CR>",
				-- 					state = false, -- Initially disabled
				-- 				},
				-- 				{
				-- 					name = "focus",
				-- 					enable_cmd = ":FocusEnable<CR>",
				-- 					disable_cmd = ":FocusDisable<CR>",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "number",
				-- 					enable_cmd = ":set number<CR>",
				-- 					disable_cmd = ":set nonumber<CR>",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "relativenumber",
				-- 					enable_cmd = ":setg relativenumber<CR>",
				-- 					disable_cmd = ":setg norelativenumber<CR>",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "signcolumn",
				-- 					enable_cmd = ":setg scl=yes<CR>",
				-- 					disable_cmd = ":setg scl=no<CR>",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "indent blank line",
				-- 					enable_cmd = ":IBLEnable<CR>",
				-- 					disable_cmd = ":IBLDisable<CR>",
				-- 					state = true, -- Initially enabled
				-- 				},
				-- 				{
				-- 					name = "commentless: hide comments",
				-- 					enable_cmd = ":Commentless toggle<CR>",
				-- 					disable_cmd = ":Commentless toggle<CR>",
				-- 					state = false, -- Initially disabled
				-- 				},
				-- 				{
				-- 					name = "vimtex: enable mupdf",
				-- 					enable_cmd = 'let g:vimtex_view_method="mupdf"',
				-- 					disable_cmd = 'let g:vimtex_view_method="zathura"',
				-- 					state = false, -- Initially disabled
				-- 				},
				-- 			},
				-- 		}
				-- {
				-- 	name = "&Tools",
				-- 	items = {
				-- 		{ name = "External &browser ob", cmd = "normal ob" },
				-- 		{ name = "External e&xplorer            oo", cmd = "normal oo" },
				-- 		{ name = "External &editor  oe", cmd = "normal oe" },
				-- 		{ name = "--", cmd = "--" },
				-- 		{ name = "&RangeMacro       @{register}{motion}", cmd = 'call feedkeys("gv:RangeMacro ")' },
				-- 		{ name = "&PrettyPrint1", cmd = 'call feedkeys(":PP ")' },
				-- 		{ name = "--", cmd = "--" },
				-- 		{ name = "&Gundo            wu", cmd = "GundoToggle" },
				-- 		{ name = "&Tagbar           wt", cmd = "TagbarToggle" },
				-- 		{ name = "&OpenInScim       sc", cmd = "OpenInScim" },
				-- 	},
				-- },
			},
		})
	end,
}
