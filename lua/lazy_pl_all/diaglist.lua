return {
    'onsails/diaglist.nvim',
    -- module = 'diaglist',
    init = function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('n', '<Leader>uD', '<cmd>lua require "diaglist".open_all_diagnostics()<cr>', opts)
        map('n', '<Leader>ud', '<cmd>lua require "diaglist".open_buffer_diagnostics()<cr>', opts)
    end,
    config = function()
        require 'diaglist'.init{}
    end
}
