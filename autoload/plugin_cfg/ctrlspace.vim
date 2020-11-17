function plugin_cfg#ctrlspace#add()
    let g:CtrlSpaceSetDefaultMapping=1
    let g:CtrlSpaceUseTabline=1
    let g:CtrlSpaceDefaultMappingKey='<C-Space> '
    let g:CtrlSpaceProjectRootMarkers = [
         \ ".git",
         \ ".hg",
         \ ".svn",
         \ ".bzr",
         \ ".envrc",
         \ "_darcs",
         \ "CVS"
         \ ]
endfunction

function plugin_cfg#ctrlspace#post_source()
    nmap <M-u>    :CtrlSpaceGoUp<CR>
    nmap <M-S-u>  :CtrlSpaceGoDown<CR>
endfunction
