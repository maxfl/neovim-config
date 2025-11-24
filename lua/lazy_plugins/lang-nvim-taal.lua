-- Plugin: bennorichters/taal.nvim
-- Installed via store.nvim

return {
    "bennorichters/taal.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        {
            "<leader>tg",
            "<cmd>TaalGrammar<cr>"
        },
        {
            "<leader>tl",
            "<Cmd>TaalGrammar inlay<Cr>"
        },
        {
            "<leader>tr",
            "<Cmd>TaalGrammar<Cr>"
        },
        {
            "<leader>th",
            "<Cmd>TaalHover<Cr>"
        },
        {
            "<leader>ta",
            "<Cmd>TaalApplySuggestion<Cr>"
        },
        {
            "<leader>ts",
            "<Cmd>TaalSetSpelllang<Cr>"
        },
        {
            "<leader>ti",
            "<Cmd>TaalInteract<Cr>",
            mode = "v"
        }
    },
    opts = {}
}