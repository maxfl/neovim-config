return {
    'mildred/vim-bufmru',
    config = function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('n', '<M-p>',         '<CMD>BufMRUPrev<CR>', opts)
        map('n', '<M-S-p>',       '<CMD>BufMRUNext<CR>', opts)
    end
}
