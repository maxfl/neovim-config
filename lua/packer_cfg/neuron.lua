return {
    'oberblastmeister/neuron.nvim',
    requires='nvim-lua/popup.nvim',
    keys = {
        {'n', 'gz'}
    },
    config=function()
        require'neuron'.setup {
            virtual_titles = true,
            mappings = true,
            run = nil, -- function to run when in neuron dir
            neuron_dir = "/data/work/yadisk/docs/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
            leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
        }
    end
}
