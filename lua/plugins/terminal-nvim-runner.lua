-- Plugin: TheLazyCat00/runner-nvim
-- Installed via store.nvim

return {
    "TheLazyCat00/runner-nvim",
    opts = {}, -- This is required to call setup()
    keys = {
        {
            "<leader>4r",
            function()
                require(
                    "runner-nvim"
                ).runLast()
            end,
            desc = "Run last cmd"
        },
        {
            "<leader>4o",
            function()
                require(
                    "runner-nvim"
                ).run()
            end,
            desc = "Run cmd"
        },
        {
            "<leader>4t",
            function()
                require(
                    "runner-nvim"
                ).toggle()
            end,
            desc = "Toggle terminal"
        }
    }
}