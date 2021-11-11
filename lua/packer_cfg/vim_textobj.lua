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
    {'kana/vim-textobj-line',             requires='kana/vim-textobj-user'}, -- l
    {'rhysd/vim-textobj-continuous-line', requires='kana/vim-textobj-user'}, -- v {'kana/vim-textobj-indent',           requires='kana/vim-textobj-user'}, -- i,  I
    {'jceb/vim-textobj-uri',              requires='kana/vim-textobj-user'}, -- u
    {'glts/vim-textobj-indblock',         requires='kana/vim-textobj-user'}, -- o
    {'kana/vim-textobj-datetime',         requires='kana/vim-textobj-user'}, -- da, df, dt, dz
    {                                                                        -- E
        'kana/vim-textobj-entire',
        requires='kana/vim-textobj-user',
        setup=function()
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
    {                                                                        -- .
        'sgur/vim-textobj-parameter',
        requires='kana/vim-textobj-user',
        setup=function()
            vim.g.vim_textobj_parameter_mapping = '.'
        end,
    },
    {                                                                        -- _
        'thinca/vim-textobj-between',
        requires='kana/vim-textobj-user',
        setup=function()
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
    --     requires={'kana/vim-textobj-user', 'sgur/vim-textobj-parameter'},
    --     config=function()
    --         require'revj'.setup{
    --             enable_default_keymaps=true
    --         }
    --     end
    -- }
}
