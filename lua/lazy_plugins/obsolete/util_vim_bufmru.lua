return {
    'mildred/vim-bufmru',
    enabled = false,
    config = function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('n', '<M-p>',   '<CMD>BufMRUNext<CR>', opts)
        map('n', '<M-S-p>', '<CMD>BufMRUPrev<CR>', opts)
    end
}
