return function()
    vim.g.EnhancedJumps_CaptureJumpMessages=0

    local map = vim.api.nvim_set_keymap
    local opts = {}
    map('n', '<Leader><C-O>', '<Plug>EnhancedJumpsOlder', opts)
    map('n', '<Leader><C-I>', '<Plug>EnhancedJumpsNewer', opts)
    map('n', '<C-O>',         '<Plug>EnhancedJumpsLocalOlder', opts)
    map('n', '<C-I>',         '<Plug>EnhancedJumpsLocalNewer', opts)
    map('n', '<M-p>',         '<Plug>EnhancedJumpsRemoteOlder', opts)
    map('n', '<M-S-p>',       '<Plug>EnhancedJumpsRemoteNewer', opts)
end
