-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
local map = vim.api.nvim_set_keymap
local set = vim.opt

set.termguicolors=false
set.background='dark'

-- Splitting and field of view
set.splitbelow=true
set.splitright=true
set.scrolloff=3

-- keymap
set.keymap='russian-jcukenwin'
set.iminsert=0
set.imsearch=-1
map('i', '<F3>', '<C-^>', {noremap=true})
map('c', '<F3>', '<C-^>', {noremap=true})
map('i', '<C-Space>', '<C-^><Space>', {noremap=true})
map('c', '<C-Space>', '<C-^><Space>', {noremap=true})

-- some mappings
set.pastetoggle='<F4>'

-- Diff selection
map('n', 'Dp', ':.diffput<CR>', {})
map('v', 'Dp', ':diffput<CR>', {})
map('n', 'Do', ':.diffget<CR>', {})
map('v', 'Do', ':diffget<CR>', {})

-- Clipboard mappings
-- Make x, d and dd delete with no register
map('', 'x', '"_x', {noremap=true})
map('v', 'x', '"_x', {noremap=true})
map('', 'd', '"_d', {noremap=true})
map('v', 'd', '"_d', {noremap=true})
map('n', 'dd', '"_dd', {noremap=true})
-- use m (move) for deleting with register
map('', 'm', 'd', {noremap=true})
map('v', 'm', 'd', {noremap=true})
map('n', 'mm', 'dd', {noremap=true})
map('n', 'gm', 'm', {noremap=true})

-- Plugins
--require 'packer_cfg.packer'

vim.cmd [[source ~/.config/nvim/addons.vim]]

-- plugins
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--  or rua install

--" make space before and after
--inoremap                                        <M-Space> <Space><Space><Left>
--" make space before and after
--inoremap                                        <S-Space> <Space><Space><Left>
--" remove symbol before and after
--inoremap                                        <M-BS> <BS><Del>

--" add <N> empty lines after current from normal mode
--nnoremap                                        <Leader><CR> o<Esc>`[
--" add <N> empty lines before current from normal mode
--nnoremap                                        <Leader><S-CR> O<Esc>`]

--" search for the visually selected text
--vnoremap                                        <Leader>/ y/<C-R>"\V<CR>
--" search for previous visually selected text
--nnoremap                                        <Leader>#  gvy/<C-R>"\V<CR>
--" search previously changed text (small change)
--nnoremap                                        <Leader>/  /<C-R>-\V<CR>

--" SourceRange
--noremap                                         <Leader>S :SourceRange<CR>

--" Edit new file based on a word under cursor
--noremap                                         <Leader>gf :e <cfile><CR>
--noremap                                         <Leader>gF :tabe <cfile><CR>

--" Complete from the normal mode
--nmap                                            <Leader><C-x> ea<C-x>

--source ~/.config/nvim/addons.vim
