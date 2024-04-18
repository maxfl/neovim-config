-- Keymaps
local set = vim.opt

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
-- set.langremap = true
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

