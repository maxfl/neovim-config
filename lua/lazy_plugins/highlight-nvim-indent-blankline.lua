--
-- Indentation guides
--
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        enabled = true,
        indent = {
            char = "┊",
            tab_char = "│",
        },
        show_end_of_line = true,
        filetype = { "python", "fish", "lua" },
    },
}
