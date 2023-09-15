return {
    'inkarkat/vim-EnhancedJumps',
    dependencies = 'inkarkat/vim-ingo-library',
    config= function()
        vim.g.EnhancedJumps_CaptureJumpMessages=false

        local map, opts = vim.api.nvim_set_keymap, {}
        -- map('n', '<Leader><C-O>', '<Plug>EnhancedJumpsOlder', opts)
        -- map('n', '<Leader><C-I>', '<Plug>EnhancedJumpsNewer', opts)
        -- map('n', '<C-O>',         '<Plug>EnhancedJumpsLocalOlder', opts)
        -- map('n', '<C-I>',         '<Plug>EnhancedJumpsLocalNewer', opts)

        map('n', '<C-M-n>',       '<Plug>EnhancedJumpsRemoteOlder', opts)
        map('n', '<C-M-p>',       '<Plug>EnhancedJumpsRemoteNewer', opts)

        -- map('n', '<M-n>', '<CMD>bnext<CR>', opts)
        -- map('n', '<M-S-n>', '<CMD>bprev<CR>', opts)
    end
}
