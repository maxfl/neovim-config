--
-- Show where the cursor has jumped
--
return {
	-- "edluffy/specs.nvim",
	-- "jokajak/specs.nvim",
	"JuanS3/specs.nvim",
	config = function()
		local specs = require("specs")
		specs.setup({
			show_jumps = true,
			min_jump = 10,
			popup = {
				delay_ms = 10, -- delay before popup displays
				inc_ms = 10, -- time increments used for fade/resize effects
				blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
				width = 30,
				winhl = "PMenu",
				-- fader = require('specs').linear_fader,
				-- fader = require('specs').pulse_fader,
				fader = require("specs").exp_fader,
				resizer = require("specs").shrink_resizer,
			},
			ignore_filetypes = {},
			ignore_buftypes = {
				nofile = true,
			},
		})

		vim.api.nvim_create_autocmd("FocusGained", {
			group = vim.api.nvim_create_augroup("focus_cursor", { clear = true }),
			callback = function(_)
				local specs = require("specs")
				specs.show_specs({
					inc_ms = 20,
					blend = 0,
				})
			end,
			desc = "Show cursor on FocusGained",
		})
	end,
}
