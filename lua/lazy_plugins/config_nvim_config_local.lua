return {
    'klen/nvim-config-local',
    config = function()
        require 'config-local'.setup {
            config_files = { '.nvimrc', '.nvimrc.lua' },
        }
    end
}
