return {
	"rickhowe/diffchar.vim",
    enabled = true,
	cond = function()
		return vim.o.diff
	end,
    init = function()
        -- vim.g.DiffUnit = "Word2"
    end
}
