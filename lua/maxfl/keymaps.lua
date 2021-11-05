-- Keymaps
local set = vim.opt
set.spelllang={'en', 'ru_yo'}
set.keymap='russian-jcukenwin'
set.iminsert=0
set.imsearch=-1

-- Switch keymaps
local map = vim.api.nvim_set_keymap
local noremap={noremap=true}
map('i', '<F3>', '<C-^><CMD>call KeymapLinenr()<CR>', noremap)
map('c', '<F3>', '<C-^><CMD>call KeymapLinenr()<CR>', noremap)
map('i', '<C-Space>', '<C-^><Space><CMD>call KeymapLinenr()<CR>', noremap)
map('c', '<C-Space>', '<C-^><Space><CMD>call KeymapLinenr()<CR>', noremap)
vim.cmd[[
    function KeyMapHLinsert()
        if &iminsert>0
            hi LineNr guibg=#004000
        else
            hi LineNr guibg=black
        endif
        redraw
    endfunction
    function KeymapHLcmd()
        if $imcmdline
            hi MsgArea guibg=#004000
        else
            hi MsgArea guibg=black
        endif
        redraw
    endfunction
    function KeymapHLTex()
        imap <buffer> \ \<CMD>set iminsert=0<CR>
        imap <buffer> \ \<CMD>set iminsert=0<CR>
    endfunction
    augroup KeymapHL
        au OptionSet iminsert,imsearch call KeyMapHLinsert()
        au OptionSet imcmdline         call KeyMapHLcmd()

        au BufRead,BufEnter *.tex call KeymapHLTex()
        au FileType tex,plaintex  call KeymapHLTex()
    augroup END
]]

-- Spelling
vim.cmd[[
    augroup forcespellcheck
        au FileType svn setlocal spell
        au FileType gitcommit setlocal spell
        au FileType vcscommit setlocal spell
    augroup END
]]
