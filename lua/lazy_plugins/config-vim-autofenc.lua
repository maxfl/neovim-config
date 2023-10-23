return {
    's3rvac/autofenc',
    enabled = false,
    init = function()
        vim.g.autofenc_emit_messages = true
        vim.g.autofenc_ext_prog_args = '-i -L russian'
    end
}
