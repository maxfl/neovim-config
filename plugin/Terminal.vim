tnoremap <C-O> <C-\><C-n>

let g:TerminalAutoStartInsert=v:false

command -nargs=1 SetAutostartInsert let b:TerminalAutoStartInsert=<args>

function s:AutoStartInsert()
    if get(b:, 'TerminalAutoStartInsert', g:TerminalAutoStartInsert)
        startinsert
    endif
endfunction

autocmd BufWinEnter,WinEnter term://* call s:AutoStartInsert()
