let &packpath = &runtimepath
source ~/.vim/vimrc

" Toggle paste mode
noremap                                         \tp :set paste!<CR>
set pastetoggle=<F4>

" make space before and after
inoremap                                        <M-Space> <Space><Space><Left>
" make space before and after
inoremap                                        <S-Space> <Space><Space><Left>
" remove symbol before and after
inoremap                                        <M-BS> <BS><Del>

" search for the visually selected text
vnoremap                                        <Leader>/ y/<C-R>"<CR>\M
" search for previous visuall selected text
nnoremap                                        <Leader>/  gvy/<C-R>"<CR>\M

" SourceRange
vnoremap <Leader>S :SourceRange<CR>

source ~/.config/nvim/addons.vim
