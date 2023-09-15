return {
    'RRethy/nvim-treesitter-textsubjects',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config=function()
        require'nvim-treesitter.configs'.setup{
            textsubjects = {
                enable = true,
                keymaps = {
                    ["."] ='textsubjects-smart',
                    [";"] ='textsubjects-container-outer',
                }
            }
        }
        end
    }
