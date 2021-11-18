return {
    'abecodes/tabout.nvim',
    requires = {'nvim-treesitter'},    -- or require if not used so far
    -- after = {'nvim-cmp', 'ultisnips'}, -- if a completion plugin is using tabs load it before,
    -- after = {'nvim-cmp'}, -- if a completion plugin is using tabs load it before,
    config = function()
        require 'tabout'.setup {
            tabkey = '', --'<C-Tab>', -- key to trigger tabout, set to an empty string to disable
            backwards_tabkey = '', -- '<C-S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
            act_as_tab = false, -- shift content if tab out is not possible
            act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
            -- enable_backwards = true, -- well ...
            completion = false, -- if the tabkey is used in a completion pum
            -- tabouts = {
            --     {open = "'", close = "'"},
            --     {open = '"', close = '"'},
            --     {open = '`', close = '`'},
            --     {open = '(', close = ')'},
            --     {open = '[', close = ']'},
            --     {open = '{', close = '}'}
            -- },
            ignore_beginning = false, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
            -- exclude = {} -- tabout will ignore these filetypes
        }

        local map, silent=vim.api.nvim_set_keymap, {silent=true}
        map('i', '<M-Tab>', "<Plug>(TaboutMulti)", silent)
        map('i', '<M-S-Tab>', "<Plug>(TaboutBackMulti)", silent)
    end,
}
