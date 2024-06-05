local function user_au_on_dark()
    if vim.o.background == "dark" then
        vim.g.material_style = "oceanic"
        vim.cmd.colorscheme("default")
        vim.cmd.redraw()
        vim.cmd.colorscheme("material")
    end
end

local function user_au_on_light()
    if vim.o.background == "light" then
        vim.g.material_style = "lighter"
        vim.cmd.colorscheme("default")
        vim.cmd.redraw()
        vim.cmd.colorscheme("edge")
    end
end

return {
	{
		"marko-cerovac/material.nvim",
        priority = 100,
		config = function()
			require("material").setup({
				-- popup_menu='colorful',
				-- italics = {
				--     keywords = true
				-- },
				styles = {
					keywords = {
						italic = true,
					},
				},
				custom_highlights = {
					-- LineNr    = {bg='black'},
					-- Pmenu     = {bg='#808080'},
					-- VertSplit = {bg='#808080'},
					-- DiffChange= {bg='#13191C'}
				},
				disable = {
					borders = false,
				},
			})
			vim.api.nvim_create_augroup("background", { clear = false })
			vim.api.nvim_create_autocmd("OptionSet", {
				group = "background",
				pattern = "background",
				callback = user_au_on_dark,
			})
			-- user_au_on_dark()
		end,
	},
	{
		"sainnhe/edge",
        priority = 100,
		dependencies = "marko-cerovac/material.nvim",
		config = function()
			vim.g.edge_transparent_background = false
			vim.api.nvim_create_augroup("background", { clear = false })
			vim.api.nvim_create_autocmd("OptionSet", {
				group = "background",
				pattern = "background",
				callback = user_au_on_light,
			})
            vim.g.edge_enable_italic = false
			user_au_on_light()
		end,
	},
}
--,
-- {
--     '4e554c4c/darkman.nvim',
--     build = 'go build -o bin/darkman.nvim',
--     config = function()
--         require 'darkman'.setup{
--             change_background = true,
--             send_user_event = true
--         }
--     end,
-- }
