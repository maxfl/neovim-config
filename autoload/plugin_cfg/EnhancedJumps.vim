function plugin_cfg#EnhancedJumps#add()
    let g:EnhancedJumps_CaptureJumpMessages = 0

    nmap <Leader><C-O> <Plug>EnhancedJumpsOlder
    nmap <Leader><C-I> <Plug>EnhancedJumpsNewer
    nmap <C-O>         <Plug>EnhancedJumpsLocalOlder
    nmap <C-I>         <Plug>EnhancedJumpsLocalNewer
    nmap <M-p>         <Plug>EnhancedJumpsRemoteOlder
    nmap <M-S-p>       <Plug>EnhancedJumpsRemoteNewer
endfunction

