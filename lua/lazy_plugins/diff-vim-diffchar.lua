return {
	"rickhowe/diffchar.vim",
	cond = function()
		return vim.o.diff
	end,
    init = function()
        vim.g.DiffUnit = "Word"
    end
}
