return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup()

		local Rule = require("nvim-autopairs.rule")
		local npairs = require("nvim-autopairs")
		local cond = require("nvim-autopairs.conds")

		npairs.remove_rule("`")
		--[
		-- General rules
		--]
		npairs.add_rules({
			Rule("`", "`", { "markdown", "bash", "vimwiki", "rmarkdown", "pandoc" })
				:with_move(cond.move_right())
                :with_pair(cond.not_add_quote_inside_quote())
		})

		--[
		-- LaTeX rules
		--]
		npairs.add_rules({
			Rule("$", "$", { "tex", "latex" })
				-- don't add a pair if the next character is %
				:with_pair(cond.not_after_regex("%%"))
				-- don't move right when repeat character
				:with_move(cond.none())
				-- disable adding a newline when you press <cr>
				:with_cr(cond.none()),
			Rule(",,", "``", { "tex", "latex" })
				:with_pair(cond.not_after_regex("%%"))
				:with_move(cond.none())
				:with_cr(cond.none()),
			Rule("`", "'", { "tex", "latex" })
				:with_pair(cond.not_after_regex("%%"))
				:with_move(cond.none())
				:with_cr(cond.none()),
			Rule("<<", ">>", { "tex", "latex" })
				:with_pair(cond.not_after_regex("%%"))
				:with_move(cond.none())
				:with_cr(cond.none()),
			Rule("\\(", "\\)", { "tex", "latex" })
				:with_pair(cond.not_after_regex("%%"))
				:with_move(cond.none())
				:with_cr(cond.none()),
		})

		--[
		-- Markdown rules
		--]
		npairs.add_rules({
			Rule("*", "*", { "markdown" })
				:with_pair(cond.before_regex("[ *]"))
				-- don't move right when repeat character
				:with_move(cond.none())
				-- disable adding a newline when you press <cr>
				:with_cr(cond.none()),
		})
	end,
}
