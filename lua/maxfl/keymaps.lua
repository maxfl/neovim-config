-- Keymaps
local set = vim.opt
set.spelllang={'en', 'ru_yo'}
set.keymap='russian-jcukenwin'
set.iminsert=0
set.imsearch=-1

-- Switch keymaps
local map = vim.api.nvim_set_keymap
local noremap={noremap=true}
map('i', '<F3>', '<C-^><CMD>call KeyMapHLinsert()<CR>', noremap)
map('i', '<M-Space>', '<C-^><CMD>call KeyMapHLinsert()<CR>', noremap)
map('i', '<S-Space>', '<C-^><Space><CMD>call KeyMapHLinsert()<CR>', noremap)
map('i', '<C-Space>', '<C-^><Space><CMD>call KeyMapHLinsert()<CR>', noremap)
map('c', '<F3>', '<C-^><CMD>call KeyMapHLinsert()<CR>', noremap)
map('c', '<M-Space>', '<C-^><CMD>call KeyMapHLinsert()<CR>', noremap)
map('c', '<S-Space>', '<C-^><Space><CMD>call KeyMapHLinsert()<CR>', noremap)
map('c', '<C-Space>', '<C-^><Space><CMD>call KeyMapHLinsert()<CR>', noremap)

vim.cmd[[
    function! KeyMapHLinsert()
        if &iminsert>0
            hi LineNr guibg=#004000
        else
            hi LineNr guibg=black
        endif
        redraw
    endfunction
    "function! KeyMapHLcmd()
    "    if $imcmdline
    "        hi MsgArea guibg=#004000
    "    else
    "        hi MsgArea guibg=black
    "    endif
    "    redraw
    "endfunction
    function! KeymapDisable()
        if &iminsert
            call feedkeys("\<C-^>")
            set iminsert=0
        endif
    endfunction
    function! KeymapHLTex()
        imap <buffer> \ \<CMD>call KeymapDisable()<CR>
    endfunction
    augroup KeymapHL
        au!
        au OptionSet iminsert,imsearch call KeyMapHLinsert()
        au OptionSet imcmdline         call KeyMapHLinsert()
        " au OptionSet imcmdline         call KeyMapHLcmd()

        au BufRead,BufEnter *.tex call KeymapHLTex()
        au FileType tex,plaintex  call KeymapHLTex()
    augroup END
]]

-- Spelling
vim.cmd[[
    augroup forcespellcheck
        au!
        au FileType svn setlocal spell
        au FileType gitcommit setlocal spell
        au FileType vcscommit setlocal spell
    augroup END
]]

-- Langmap
set.langmap={
    -- 1: querty
    [=[йq]=], [=[цw]=], [=[уe]=], [=[кr]=], [=[еt]=], [=[нy]=], [=[гu]=], [=[шi]=], [=[щo]=], [=[зp]=], [=[х[]=], [=[ъ]]=],
    -- 2: asdf
    [=[фa]=], [=[ыs]=], [=[вd]=], [=[аf]=], [=[пg]=], [=[рh]=], [=[оj]=], [=[лk]=], [=[дl]=], [=[ж\;]=], [=[э']=],
    -- 3: zxcv
    [=[яz]=], [=[чx]=], [=[сc]=], [=[мv]=], [=[иb]=], [=[тn]=], [=[ьm]=], [=[ю.]=], [=[б\,]=],
    -- 1: QUERTY
    [=[ЙQ]=], [=[ЦW]=], [=[УE]=], [=[КR]=], [=[ЕT]=], [=[НY]=], [=[ГU]=], [=[ШI]=], [=[ЩO]=], [=[ЗP]=], [=[Х{]=], [=[Ъ}]=],
    -- 2: ASDF
    [=[ФA]=], [=[ЫS]=], [=[ВD]=], [=[АF]=], [=[ПG]=], [=[РH]=], [=[ОJ]=], [=[ЛK]=], [=[ДL]=], [=[Ж:]=], [=[Э"]=],
    -- 3: ZXCV
    [=[ЯZ]=], [=[ЧX]=], [=[СC]=], [=[МV]=], [=[ИB]=], [=[ТN]=], [=[ЬM]=], [[Б<]], [[Ю>]],
    -- 0: `123
    [=[ё`]=], [=[№#]=], [=[Ё~]=]
}

