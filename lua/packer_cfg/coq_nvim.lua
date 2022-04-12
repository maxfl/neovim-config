return {
    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        requires = { 'ms-jpq/coq.artifacts', 'ms-jpq/coq.thirdparty' },
        config = function()
            vim.g.coq_settings = {
                auto_start = 'shut-up',
                ['keymap.recommended'] = false,
                ['keymap.pre_select']  = false,
                ['keymap.manual_complete'] = '<c-x><c-a>',
            }
            require 'coq' ()

            local map = vim.api.nvim_set_keymap
            local opts = {silent=true, expr=true, noremap=true}
            map('i', '<Esc>',   'pumvisible() ? "\\<C-e><Esc>" : "\\<Esc>"', opts)
            map('i', '<C-c>',   'pumvisible() ? "\\<C-e><C-c>" : "\\<C-c>"', opts)
            map('i', '<BS>',    'pumvisible() ? "\\<C-e><BS>"  : "\\<BS>"', opts)
            map('i', '<M-CR>',  'pumvisible() ? (complete_info().selected == -1 ? "\\<C-e><CR>" : "\\<C-y>") : "\\<CR>"', opts)
            map('i', '<Tab>',   'pumvisible() ? "\\<C-n>" : "\\<Tab>"', opts)
            map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<BS>"', opts)
        end
    },
    {
        'ms-jpq/coq.thirdparty',
        branch='3p',
        config = function()
            require 'coq_3p' {
                { src = "nvimlua", short_name = "nLUA" },
            }
        end
    },
    {
        'ms-jpq/coq.artifacts',
        branch='artifacts'
    }
}
