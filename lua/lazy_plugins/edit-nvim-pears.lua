return {
	"steelsojka/pears.nvim",
	priority = 57,
	config = function()
		local pears = require("pears")
		pears.setup(function(conf)
			-- conf.pair('“', '”')
			-- conf.pair('‘', '’')
			-- conf.pair('„', '“')
			-- conf.pair('«', '»')

			--
			-- Lua
			--
			conf.pair("[=[", { close = "]=]", filetypes = { "lua" } })
			conf.pair("[==[", { close = "]==]", filetypes = { "lua" } })
			-- conf.pair('function()', 'end')

			--
			-- Tex
			--
			conf.pair("$", { close = "$", filetypes = { "tex" } })
			conf.pair(",,", { close = "``", filetypes = { "tex" } })
			conf.pair("`", { close = "'", filetypes = { "tex" } })
			conf.pair("``", { close = "''", filetypes = { "tex" } })
			conf.pair("<<", { close = ">>", filetypes = { "tex" } })
			conf.pair("\\(", { close = "\\)", filetypes = { "tex" } })

			--
			-- Markdown
			--
			conf.pair("\\*", { close = "\\*", filetypes = { "markdown" } })
		end)
	end,
}
