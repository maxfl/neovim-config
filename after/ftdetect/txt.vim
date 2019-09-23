au BufEnter,BufRead *.txt if &filetype=="" || &filetype=="text" | setf txt | endif
