return {
    'sindrets/winshift.nvim',
    config=function()
        require("winshift").setup{
            highlight_moving_win = true,  -- Highlight the window being moved
            focused_hl_group = "Visual",  -- The highlight group used for the moving window
            moving_win_options = {
                -- These are local options applied to the moving window while it's
                -- being moved. They are unset when you leave Win-Move mode.
                wrap = false,
                cursorline = false,
                cursorcolumn = false,
                colorcolumn = "",
            },
            window_picker_ignore = {
                -- This table allows you to indicate to the window picker that a window
                -- should be ignored if its buffer matches any of the following criteria.
                filetype = {  -- List of ignored file types
                    "NvimTree",
                },
                buftype = {   -- List of ignored buftypes
                    "terminal",
                    "quickfix",
                },
                bufname = {   -- List of regex patterns matching ignored buffer names
                    [[.*foo/bar/baz\.qux]]
                },
            },
        }

        local map, noremap=vim.api.nvim_set_keymap, {noremap=true}
        map('n', '<Leader>wm', '<CMD>WinShift<CR>', noremap)
        map('n', '<Leader>wM', '<CMD>WinShift swap<CR>', noremap)
    end
}
