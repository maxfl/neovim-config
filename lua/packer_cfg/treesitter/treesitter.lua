return {
    'nvim-treesitter/nvim-treesitter',
    run=function()
        vim.cmd ":TSUpdate"
    end,
    config=function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {
                'lua', 'python', 'vim',
                'bash', 'fish',
                'cmake',
                'cpp', 'julia',
                'diff', 'dot',
                'gitcommit', 'gitattributes', 'gitignore',
                'latex', -- conflicts with pears
                'make',
                'markdown',
                'mermaid',
                'rst',
                'toml', 'yaml'
            },
            -- ignore_install = { 'latex' }, -- List of parsers to ignore installing
            highlight = {
                enable = true,              -- false will disable the whole extension
                disable = {
                    'c',
                    'rust',
                    'latex'
                },  -- list of language that will be disabled
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = false,
            },
            incremental_selection = {
                enable = false,
                keymaps = {
                    init_selection = "gnn",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm",
                },
            },
        }
    end
}