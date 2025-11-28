return {
	"folke/which-key.nvim",
	priority = 80,
	config = function()
		local wk = require("which-key")
		wk.setup({
			-- presets = {
			--     operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
			--     motions = false, -- adds help for motions
			--     text_objects = false, -- help for text objects triggered after entering an operator
			--     windows = true, -- default bindings on <c-w>
			--     nav = true, -- misc bindings to work with windows
			--     z = true, -- bindings for folds, spelling and others prefixed with z
			--     g = true, -- bindings for prefixed with g
			-- },
			-- triggers = {
			--     "<leader>",
			--     'g',
			--     'z',
			--     '"'
			-- }
			triggers = {
				{ "<auto>", mode = "nxsot" },
				-- { "d", mode = { "n", "x" } },
			},
		})

		wk.add({
			{ "<Leader><Leader>", group = "visual multi" },
			{ "<Leader><Leader>/", desc = "search" },
			{ "<Leader><Leader><Leader>", desc = "cursor at pos" },
			{ "<Leader><Leader>A", desc = "select all" },
			{ "<Leader><Leader>g", group = "...reselect" },
			{ "<Leader><Leader>gS", desc = "reselect last" },
			{ "<Leader>d", group = "diff" },
			{ "<Leader>dD", desc = "diagnostics (all)" },
			{ "<Leader>dd", desc = "diagnostics (buffer)" },
			{ "<Leader>dl", desc = "linediff" },
			{ "<Leader>dr", desc = "reset linediff" },
			{ "<Leader>w", group = "window" },
			{ "<Leader>w=", desc = "equalize (focus)" },
			{ "<Leader>wM", desc = "swap (winshift)" },
			{ "<Leader>wf", desc = "maximize (focus)" },
			{ "<Leader>wi", desc = "winteract" },
			{ "<Leader>wm", desc = "move (winshift)" },
			{ "<Leader>ws", desc = "symbols" },
			{ "<Leader>wT", desc = "toggle focus" },
			{ "<Leader>u", group = "utils" },
			{ "<Leader>ua", desc = "code actions" },
			{ "<Leader>ub", desc = "buffers" },
			{ "<Leader>uo", desc = "outline (symbols)" },
			{ "<Leader>up", desc = "project root" },
			{ "<Leader>uu", desc = "undo tree" },
			{ "<Leader>uv", desc = "outline (voom)" },
			{ "<Leader>uz", desc = "zen mode" },
		})

		wk.add({
			{ "<leader>C", group = "count", mode = "x" },
			{ "<Leader>Ca", [[:s/\%V.//gn | silent nohls<CR>]], desc = "count characters", mode = "x" },
			{ "<Leader>CS", [[:s/\%V\S//gn | silent nohls<CR>]], desc = "count non-space characters", mode = "x" },
			{ "<Leader>Cw", [[:s/\%V\S\+//gn | silent nohls<CR>]], desc = "count words", mode = "x" },
		})
	end,
}
