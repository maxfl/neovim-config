return {
    'derekwyatt/vim-fswitch',
    ft='cpp',
    cmd = 'FS*',
    init = function()
        vim.cmd[[
            au! BufEnter *.cpp,*.c,*.C,*.cxx,*.cc,*.CC let b:fswitchdst = 'hpp,h,H,hh,HH,hxx' | exe "let b:fswitchlocs = '../inc,../include".",../".expand("%:h:h:t")."'"
            au! BufEnter *.hpp,*.h,*.H,*.hh,*.HH,*.hxx let b:fswitchdst = 'cpp,c,C,cc,CC,cxx' | let b:fswitchlocs = '../src'
        ]]

        local map = vim.api.nvim_set_keymap
        local silent={silent=true}
        map('n', '<Leader>aa', '<CMD>FSHere<CR>', silent)
        map('n', '<Leader>ar', '<CMD>tab FSRight<CR>', silent)
        map('n', '<Leader>al', '<CMD>tab FSLeft<CR>', silent)
        map('n', '<Leader>aR', '<CMD>tab FSSplitRight<CR>', silent)
        map('n', '<Leader>aL', '<CMD>tab FSSplitLeft<CR>', silent)
    end,
    config=function()
        vim.gfsnonewfiles=1
    end
}
