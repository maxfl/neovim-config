return function()
    vim.g.EnhancedJumps_CaptureJumpMessages=0

    local map = vim.api.nvim_set_keymap
    map('n', '<Leader><C-O>', '<Plug>EnhancedJumpsOlder', {})
    map('n', '<Leader><C-I>', '<Plug>EnhancedJumpsNewer', {})
    map('n', '<C-O>',         '<Plug>EnhancedJumpsLocalOlder', {})
    map('n', '<C-I>',         '<Plug>EnhancedJumpsLocalNewer', {})
    map('n', '<M-p>',         '<Plug>EnhancedJumpsRemoteOlder', {})
    map('n', '<M-S-p>',       '<Plug>EnhancedJumpsRemoteNewer', {})
end
