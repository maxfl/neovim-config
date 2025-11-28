return {
    'ncm2/float-preview.nvim',
    config = function() 
        vim.g['float_preview#docked']=1
        vim.opt.completeopt:append 'preview'
    end
}
