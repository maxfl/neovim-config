return {
    'ntpeters/vim-better-whitespace',
    init = function()
        vim.g.better_whitespace_enabled=false
        vim.g.strip_whitespace_on_save=false
        vim.g.strip_whitespace_confirm=false
    end,
    config = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>rts', '<CMD>StripWhitespace<CR>', {noremap=true})
        vim.cmd[[
            autocmd FileType python,lua,cpp,vim,sh,fish :silent EnableStripWhitespaceOnSave
        ]]
    end
}

