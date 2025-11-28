return {
    'bfredl/nvim-miniyank',
    config=function()
        local map=vim.api.nvim_set_keymap
        local opts={noremap=true}
        map('n', 'p', '<Plug>(miniyank-autoput)', opts)
        map('n', 'P', '<Plug>(miniyank-autoPut)', opts)
        map('n', '<Leader>n', '<Plug>(miniyank-cycle)', opts)
        map('n', '<Leader>yc', '<Plug>(miniyank-tochar)', opts)
        map('n', '<Leader>yl', '<Plug>(miniyank-toline)', opts)
        map('n', '<Leader>yb', '<Plug>(miniyank-toblock)', opts)
        map('n', '<Leader>yp', 'p', opts)
        map('n', '<Leader>yP', 'P', opts)
    end
}

