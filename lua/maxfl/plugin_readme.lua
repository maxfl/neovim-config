pr = {}

function pr.get_plugins()
    pu = require 'packer.plugin_utils'
    paths = pu.list_installed_plugins()

    plugins = {}
    for path, status in pairs(paths) do
        name = path:match('[^/]+$')
        if name then
            plugins[name]=path
            table.insert(plugins, {name=name, path=path})
        end
    end

    return plugins
end

function pr.open_readme(plugin)
    plugins = pr.get_plugins()
    path = plugins[plugin]
    if not info then
        return
    end

    vim.cmd('edit '..path)
end

vim.cmd[[
    command -nargs=1 PackerReadme :lua require'packer.plugin_readme'.open_readme('<args>')
]]

return pr
