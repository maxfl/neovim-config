return {
    {                                                                        -- &
        'kana/vim-textobj-user',
        config=function()
            vim.fn['textobj#user#plugin'](
                'mylatex',
                { ['latex-amp']={
                    pattern={
                        [[\(&\|^\)\s*]], [[\s*\(&\|\\\\\)]] },
                        ['select-a']= 'a&',
                        ['select-i']= 'i&'
                    },
                }
            )
        end
    },
    {'kana/vim-textobj-line',             dependencies = 'kana/vim-textobj-user'}, -- l
    {'rhysd/vim-textobj-continuous-line', dependencies = 'kana/vim-textobj-user'}, -- v
    {'kana/vim-textobj-indent',           dependencies = 'kana/vim-textobj-user'}, -- i,  I
    {'jceb/vim-textobj-uri',              dependencies = 'kana/vim-textobj-user'}, -- u
    {'glts/vim-textobj-indblock',         dependencies = 'kana/vim-textobj-user'}, -- o
    {'kana/vim-textobj-datetime',         dependencies = 'kana/vim-textobj-user'}, -- da, df, dt, dz
    {                                                                        -- E
        'kana/vim-textobj-entire',
        dependencies = 'kana/vim-textobj-user',
        init = function()
            vim.g.textobj_entire_no_default_key_mappings=true
        end,
        config=function()
            local map, opts=vim.api.nvim_set_keymap, {}
            map('x', 'iE', '<Plug>(textobj-entire-i)', opts)
            map('o', 'iE', '<Plug>(textobj-entire-i)', opts)
            map('x', 'aE', '<Plug>(textobj-entire-a)', opts)
            map('o', 'aE', '<Plug>(textobj-entire-a)', opts)
        end
    },
    {                                                                        -- E
        'glts/vim-textobj-comment',
        dependencies = 'kana/vim-textobj-user',
        init = function()
            vim.g.textobj_comment_no_default_key_mappings=true
        end,
        config=function()
            local map, opts=vim.api.nvim_set_keymap, {}
            map('x', 'iC', '<Plug>(textobj-comment-i)', opts)
            map('o', 'iC', '<Plug>(textobj-comment-i)', opts)
            map('x', 'aC', '<Plug>(textobj-comment-a)', opts)
            map('o', 'aC', '<Plug>(textobj-comment-a)', opts)
        end
    },
    {                                                                        -- .
        'sgur/vim-textobj-parameter',
        dependencies = 'kana/vim-textobj-user',
        init = function()
            vim.g.vim_textobj_parameter_mapping = '.'
        end,
    },
    {                                                                        -- _
        'thinca/vim-textobj-between',
        dependencies = 'kana/vim-textobj-user',
        init = function()
            vim.g.textobj_between_no_default_key_mappings=true
        end,
        config=function()
            local map, opts=vim.api.nvim_set_keymap, {}
            map('x', 'i_', '<Plug>(textobj-between-i)', opts)
            map('o', 'i_', '<Plug>(textobj-between-i)', opts)
            map('x', 'a_', '<Plug>(textobj-between-a)', opts)
            map('o', 'a_', '<Plug>(textobj-between-a)', opts)
        end
    },
    -- {
    --     'AckslD/nvim-revJ.lua',
    --     dependencies = {'kana/vim-textobj-user', 'sgur/vim-textobj-parameter'},
    --     config=function()
    --         require'revj'.setup{
    --             enable_default_keymaps=true
    --         }
    --     end
    -- }
}
