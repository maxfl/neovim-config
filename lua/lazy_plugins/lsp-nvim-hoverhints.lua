return {
	"soulis-1256/hoverhints.nvim",
	enabled = true,
	config = function()
		local hh = require("hoverhints")
        hh.setup({})

		-- vim.keymap.del("n", "<MouseMove>")
		-- vim.keymap.set("n", "<MouseMove>", hh.show_diagnostics, { silent = true })
        -- vim.api.nvim_del_augroup_by_name('ShowDiagnosticsOnModeChange')
	end,
}
