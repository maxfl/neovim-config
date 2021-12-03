return {
    'rhysd/devdocs.vim',
    cmd = {'DevDocs', 'DevDocs*'},
    keys={{'n', '<Plug>(devdocs-under-cursor)'}},
    config=function()
        local map=vim.api.nvim_set_keymap
        map('n', '<Leader>Z', '<Plug>(devdocs-under-cursor)', {})
    end
}
