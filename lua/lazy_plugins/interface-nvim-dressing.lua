--
-- Pretty dialogs for everything
--
return {
    'stevearc/dressing.nvim',
    priority = 70,
    config = function()
        require("dressing").setup({
            input = {
                enabled = true,
                insert_only = false,
                start_in_insert = true,
                win_options = {
                    winblend = 0,
                    wrap = true,
                }
            }
        })
    end
}
