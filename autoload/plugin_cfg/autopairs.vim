function plugin_cfg#autopairs#add()
    let g:AutoPairsFlyMode = 1
    let g:AutoPairsShortcutToggle=''
    let g:AutoPairsShortcutJump=''

    "let g:AutoPairs={'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`'}
endfunction

function plugin_cfg#autopairs#post_source()
    call extend(g:AutoPairs, {'“':'”', '‘' : '’', '„':'“', '«':'»'})
endfunction
