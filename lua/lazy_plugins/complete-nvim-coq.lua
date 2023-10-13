return {
    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        dependencies = { 'ms-jpq/coq.artifacts', 'ms-jpq/coq.thirdparty' },
        priority = 60,
        build = ':COQdeps',
        enabled = false,
        config = function()
            vim.g.coq_settings = {
                auto_start = 'shut-up',
                completion = {
                    always = true,
                    skip_after = {"{", "}", "[", "]", "(", ")"},
                },
                keymap = {
                    recommended = false,
                    pre_select  = false,
                    manual_complete = '<M-x>',
                    bigger_preview = vim.v.null,
                    jump_to_mark = vim.v.null
                }
            }
            require 'coq' ()
            vim.cmd 'COQnow -s'

            local map = vim.api.nvim_set_keymap
            local opts = {silent=true, expr=true, noremap=true}
            map('i', '<Esc>',   'pumvisible() ? "\\<C-e><Esc>" : "\\<Esc>"', opts)
            map('i', '<C-c>',   'pumvisible() ? "\\<C-e><C-c>" : "\\<C-c>"', opts)
            map('i', '<BS>',    'pumvisible() ? "\\<C-e><BS>"  : "\\<BS>"', opts)
            map('i', '<M-CR>',  'pumvisible() ? (complete_info().selected == -1 ? "\\<C-e><CR>" : "\\<C-y>") : "\\<CR>"', opts)
            map('i', '<Tab>',   'pumvisible() ? "\\<C-n>" : "\\<Tab>"', opts)
            map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<BS>"', opts)

            map('i', '<C-k>',   'pumvisible() ? "\\<C-e><C-k>" : "\\<C-k>"', opts)
            map('i', '<M-e>',   'pumvisible() ? "\\<C-e><C-e>" : "\\<C-e>"', opts)
            map('i', '<M-y>',   'pumvisible() ? "\\<C-e><C-y>" : "\\<C-y>"', opts)
        end
    },
    {
        'ms-jpq/coq.thirdparty',
        branch='3p',
        config = function()
            require 'coq_3p' {
                { src = "nvimlua", short_name = "nLUA" },
                { src = "ultisnip", short_name = "US" },
            }
        end
    },
    {
        'ms-jpq/coq.artifacts',
        branch='artifacts'
    }
}
