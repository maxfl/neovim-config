set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

imap <M-Space> <Space><Space><Left>
imap <S-Space> <Space><Space><Left>
imap <M-BS> <Del><BS>

source ~/.config/nvim/addons.vim

