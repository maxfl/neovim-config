set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

imap <M-Space> <Space><Space><Left>
imap <S-Space> <Space><Space><Left>
imap <M-BS> <Del><BS>

" Toggle paste mode
noremap  \tp :set paste!<CR>
set pastetoggle=<F4>



source ~/.config/nvim/addons.vim

