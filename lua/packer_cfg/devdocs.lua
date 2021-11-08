return {
    'rhysd/devdocs.vim',
    opt=true,
    cmd='DevDocs*',
    keys={'n', '<Leader>Z'},
    config=function()
        local map=vim.api.nvim_set_keymap
        map('n', '<Leader>Z', '<Plug>(devdocs-under-cursor)', {})
    end
}
