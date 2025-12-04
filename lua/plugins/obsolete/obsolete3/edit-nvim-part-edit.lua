return {
	"niuiic/part-edit.nvim",
	dependencies = "https://github.com/niuiic/omega.nvim",
	config = function()
		require("part-edit").setup({
			open_in = "tab",
			float = {
				win = {
					-- the ratio of the floating window width to the editor width
					width_ratio = 0.8,
					-- the ratio of the floating window height to the editor height
					height_ratio = 0.8,
				},
			},
			-- whether to delete the buffer when leave
			-- notice: you have to delete previous buffer before you run 'PartEdit' again
			delete_buf_on_leave = true,
		})
		pcall(function()
			require("which-key").add({
				{ "<leader>u", group = "utils" },
				{
					"<leader>ue",
					function()
						require("part-edit").start()
					end,
					desc = "part edit",
					silent = true,
					mode = "x",
				},
			})
		end)
	end,
}
