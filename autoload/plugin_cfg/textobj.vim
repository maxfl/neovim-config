function plugin_cfg#textobj#entire_add()
    let g:textobj_entire_no_default_key_mappings=1
    xmap iE <Plug>(textobj-entire-i)
    omap iE <Plug>(textobj-entire-i)
    xmap aE <Plug>(textobj-entire-a)
    omap aE <Plug>(textobj-entire-a)
endfunction


function plugin_cfg#textobj#parameter_add()
    let g:textobj_parameter_no_default_key_mappings=1
    xmap a. <Plug>(textobj-parameter-a)
    omap a. <Plug>(textobj-parameter-a)
    xmap i. <Plug>(textobj-parameter-i)
    omap i. <Plug>(textobj-parameter-i)
endfunction


function plugin_cfg#textobj#functioncall_add()
    let g:textobj_functioncall_no_default_key_mappings = 1
    xmap i@ <Plug>(textobj-functioncall-i)
    omap i@ <Plug>(textobj-functioncall-i)
    xmap a@ <Plug>(textobj-functioncall-a)
    omap a@ <Plug>(textobj-functioncall-a)
endfunction

function plugin_cfg#textobj#python_add()
    xmap aF <Plug>(textobj-python-function-a)
    omap aF <Plug>(textobj-python-function-a)
    xmap iF <Plug>(textobj-python-function-i)
    omap iF <Plug>(textobj-python-function-i)
    xmap aP <Plug>(textobj-python-class-a)
    omap aP <Plug>(textobj-python-class-a)
    xmap iP <Plug>(textobj-python-class-i)
    omap iP <Plug>(textobj-python-class-i)
endfunction

function plugin_cfg#textobj#between_add()
    let g:textobj_between_no_default_key_mappings=1
    xmap a_ <Plug>(textobj-between-a)
    omap a_ <Plug>(textobj-between-a)
    xmap i_ <Plug>(textobj-between-i)
    omap i_ <Plug>(textobj-between-i)
endfunction
