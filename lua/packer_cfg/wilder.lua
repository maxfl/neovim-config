return {
    'gelguy/wilder.nvim',
    disable=true,
    config=function()
        vim.cmd [[
            call wilder#setup({'modes': [':']})
            call wilder#set_option('renderer', wilder#popupmenu_renderer({'highlighter': wilder#basic_highlighter()}))
            " call wilder#setup({'modes': [':', '/', '?']})
        ]]
    end
}

