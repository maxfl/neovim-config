return {
    'andymass/vim-matchup',
    config=function()
        vim.cmd[[
            au FileType text,txt let b:match_words="“:”,‘:’,«:»,„:“"
            ]]
    end
}
