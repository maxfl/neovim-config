return {
	"gbprod/substitute.nvim",
	config = function()
        require('substitute').setup()

		vim.keymap.set("n", "S", require("substitute").operator, { noremap = true })
		vim.keymap.set("n", "SS", require("substitute").line, { noremap = true })
		vim.keymap.set("x", "S", require("substitute").visual, { noremap = true })

        vim.keymap.set("n", "<leader>s", require('substitute.range').operator, { noremap = true })
        vim.keymap.set("x", "<leader>s", require('substitute.range').visual, { noremap = true })
        vim.keymap.set("n", "<leader>ss", require('substitute.range').word, { noremap = true })

        vim.keymap.set("x", "X", require('substitute.exchange').visual, { noremap = true })
        vim.keymap.set("n", "<Leader>x", require('substitute.exchange').operator, { noremap = true })
        vim.keymap.set("n", "<Leader>xx", require('substitute.exchange').line, { noremap = true })
        vim.keymap.set("n", "<Leader>xc", require('substitute.exchange').cancel, { noremap = true })
	end,
}
