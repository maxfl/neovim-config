function plugin_cfg#firenvim#add()
    let g:firenvim_config = {
                \   'localSettings': {
                \      '.*': {
                \        'priority': 1,
                \        'takeover': 'never',
                \      },
                \   }
                \ }
endfunction
