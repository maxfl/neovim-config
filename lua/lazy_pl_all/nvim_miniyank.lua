return {
    'bfredl/nvim-miniyank',
    config=function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('', 'p', '<Plug>(miniyank-autoput)', opts)
        map('', 'P', '<Plug>(miniyank-autoPut)', opts)
        map('', '<Leader>n', '<Plug>(miniyank-cycle)', opts)
        map('', '<Leader>yc', '<Plug>(miniyank-tochar)', opts)
        map('', '<Leader>yl', '<Plug>(miniyank-toline)', opts)
        map('', '<Leader>yb', '<Plug>(miniyank-toblock)', opts)
    end
}

