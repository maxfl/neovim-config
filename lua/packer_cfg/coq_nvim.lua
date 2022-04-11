return {
    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        requires = { 'ms-jpq/coq.artifacts', 'ms-jpq/coq.thirdparty' },
        config = function()
            vim.g.coq_settings = {
                auto_start = 'shut-up',
                keymap = {
                    manual_complete = '<c-x><c-a>'
                }
            }
            require 'coq' ()
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
