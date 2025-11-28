--
-- Indentation guides
--
return {
    "lukas-reineke/indent-blankline.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
        require("ibl").setup({
            enabled = true,
            indent = {
                char = "┊",
                tab_char = "┃",
                -- tab_char = "│",
            },
            scope = {
                enabled = true,
            },
        })
    end,
}
