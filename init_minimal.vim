filetype plugin indent on
set runtimepath^=~/.config/nvim/bundle/repos/github.com/lervag/vimtex
noremap <localleader>l0 :let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>

