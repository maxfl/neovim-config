let &packpath = &runtimepath

source ~/.config/nvim/vimrc_legacy
set notermguicolors
set background=dark
"colorscheme maxfl

" Splitting and field of view
set splitbelow splitright
set scrolloff=3
" Term flicker on due to scrolloff fixed in https://github.com/neovim/neovim/issues/11915
au TermOpen * setl scrolloff=0 cursorline cursorcolumn

" Keymap
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
inoremap <F3> <C-^>
cnoremap <F3> <C-^>
inoremap <C-Space> <C-^><Space>
cnoremap <C-Space> <C-^><Space>

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

" Edit new file based on a word under cursor
noremap                                         <Leader>gf :e <cfile><CR>
noremap                                         <Leader>gF :tabe <cfile><CR>

" Complete from the normal mode
nmap                                            <Leader><C-x> ea<C-x>

" Diff selection
nmap Dp :.diffput<CR>
vmap Dp :diffput<CR>
nmap Do :.diffget<CR>
vmap Do :diffget<CR>

" Clipboard mappings
" Make x, d and dd delete with no register
noremap  x   "_x
vnoremap x   "_x
noremap  d   "_d
vnoremap d   "_d
nnoremap dd "_dd
" use m (move) for deleting with register
noremap  m     d
vnoremap m     d
nnoremap mm   dd
nnoremap gm    m

source ~/.config/nvim/addons.vim
