return {
    'ciaranm/detectindent',
    ft='python',
    init = function() 
        vim.g.detectindent_preferred_expandtab=true 
    end,
    config=function() 
        vim.cmd[[au FileType cpp,python :DetectIndent]] 
    end
}
