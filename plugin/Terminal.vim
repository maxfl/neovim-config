tnoremap <C-O> <C-\><C-n>

let g:TerminalAutoStartInsert=v:true

command -nargs=1 SetAutostartInsert let b:TerminalAutoStartInsert=<args>

function s:AutoStartInsert()
    if get(b:, 'TerminalAutoStartInsert', g:TerminalAutoStartInsert)
        startinsert
    endif
endfunction

augroup focuscontrol_terminal
    au!
    autocmd BufWinEnter,FocusGained term://* call s:AutoStartInsert()
augroup END
