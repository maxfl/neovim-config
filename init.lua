-- TODO:
--   - Move definitions from vimrc_legacy
--   - Move addons from dein to packer
--   - check what is packpath and why it is set
--
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
local map = vim.api.nvim_set_keymap
local set = vim.opt

vim.g['&packpath'] = vim.g['&runtimepath']

vim.cmd[[
    syntax on
    filetype on

    source ~/.config/nvim/vimrc_legacy
]]

-- Options
    -- GUI
        set.guifont='MesloLGSDZ Nerd Font Mono:h12,Monospace:h12,Mono:h12'
    -- Behaviour
        set.autowrite=true
        set.autoread=true
        set.exrc=true
        set.secure=false

        if vim.o.history<1000 then
            set.history=1000
        end

    -- Interface
        set.background='dark'
        set.hidden=true
        set.number=true
        set.relativenumber=true

        set.termguicolors=true

    -- Splitting and field of view
        set.splitbelow=true
        set.splitright=true
        set.scrolloff=3
        set.sidescrolloff=5

    -- breaks and wraps
        set.wrap=false
        set.showbreak='↪'
        set.linebreak=true
        set.colorcolumn='+1'

        set.formatoptions:append'ro'

    -- indentation
        set.shiftwidth=4
        set.expandtab=true
        set.tabstop=4
        set.softtabstop=2
        set.cino:append{'g0','i0','(0'}
        set.cinkeys:remove'0#'
        set.breakindent=true
        set.autoindent=true

    -- pairs, brackets, etc
        set.showmatch=true

    -- cursor
        set.virtualedit={'onemore', 'block'}

    -- search
        set.ignorecase=true
        set.smartcase=true

    -- commandline
        set.wildignorecase=true

    -- mouse
        set.mouse='a'
        set.mousefocus=true

        require 'maxfl.keymaps'

    -- some mappings
        set.pastetoggle='<F4>'

    -- filetype
        vim.g.load_doxygen_syntax=1
        vim.g.tex_flavor='latex'
        vim.g.tex_conceal='abdmg'
        vim.cmd [[
            augroup filetypeextra
                au!
                au BufNewFile,BufRead *.wiki set shiftwidth=2
                au BufNewFile,BufRead *.bbx,*.cbx,*.lbx setf tex
            augroup END
        ]]

    -- Diff selection
        map('n', 'Dp', ':.diffput<CR>', {})
        map('v', 'Dp', ':diffput<CR>', {})
        map('n', 'Do', ':.diffget<CR>', {})
        map('v', 'Do', ':diffget<CR>', {})

    -- Clipboard mappings
        noremap={noremap=true}
        -- Make x, d and dd delete with no register
        map('',  'x',  '"_x',  noremap)
        map('v', 'x',  '"_x',  noremap)
        map('',  'd',  '"_d',  noremap)
        map('v', 'd',  '"_d',  noremap)
        map('n', 'dd', '"_dd', noremap)
        -- use m (move) for deleting with register
        map('',  'm',  'd',  noremap)
        map('v', 'm',  'd',  noremap)
        map('n', 'mm', 'dd', noremap)
        map('n', 'gm', 'm',  noremap)

-- Plugins
require 'packer_cfg.packer'

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

