return {
    'bronson/vim-trailing-whitespace',
    config = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>rts', ':FixWhitespace<CR>', {noremap=true})
        vim.cmd[[
            autocmd BufWritePre *.py,*.lua,*.cc,*.hh,*.cxx,*.h,*.cpp,*.vim,vimrc,*.sh,*.fish :silent FixWhitespace
        ]]
    end
}
