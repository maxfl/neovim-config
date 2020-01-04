let &packpath = &runtimepath

source ~/.vim/vimrc
set notermguicolors
set background=dark
"colorscheme maxfl

set splitbelow splitright

" Toggle paste mode
noremap                                         \tp :set paste!<CR>
set pastetoggle=<F4>

" make space before and after
inoremap                                        <M-Space> <Space><Space><Left>
" make space before and after
inoremap                                        <S-Space> <Space><Space><Left>
" remove symbol before and after
inoremap                                        <M-BS> <BS><Del>

" add <N> empty lines after current from normal mode
nnoremap                                        <Leader><CR> o<Esc>`[
" add <N> empty lines before current from normal mode
nnoremap                                        <Leader><S-CR> O<Esc>`]

" search for the visually selected text
vnoremap                                        <Leader>/ y/<C-R>"\V<CR>
" search for previous visually selected text
nnoremap                                        <Leader>#  gvy/<C-R>"\V<CR>
" search previously changed text (small change)
nnoremap                                        <Leader>/  /<C-R>-\V<CR>

" SourceRange
noremap                                         <Leader>S :SourceRange<CR>

source ~/.config/nvim/addons.vim
