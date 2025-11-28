return {
    "TheLazyCat00/replace-nvim",
    opts = {},
    keys = {
        {
            "<Leader>r",
            function() return require('replace-nvim').replace(true) end,
            mode = { "n", "x" },
            expr = true, -- ⚠️ set expr to true
            desc = "Replace with clipboard",
        },
    },
}
