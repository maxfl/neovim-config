-- TODO:
--   - Move definitions from vimrc_legacy
--   - Move addons from dein to packer
--   - check what is packpath and why it is set
--
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
local map = vim.api.nvim_set_keymap
local set = vim.opt
local noremap={noremap=true}
local emptyopts={}

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

        set.switchbuf={'useopen', 'usetab', 'newtab'}

    -- Splitting and field of view
        set.splitbelow=true
        set.splitright=true
        set.scrolloff=3
        set.sidescrolloff=5
        set.sidescroll=5

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
        set.autoindent=true
        set.breakindent=true
        set.breakindentopt:append{'shift:-1', 'min:50'}

    -- editing
        -- set.joinspaces=false
        set.pastetoggle='<F4>'

    -- completion
        set.complete:append 'k'
        -- set.completeopt:remove 'preview'
        -- set.completeopt:append 'longest'
        vim.cmd[[au FileType * exe('setl dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')]]

    -- folds
        set.foldopen:append'jump'

    -- pairs, brackets, etc
        set.showmatch=true

    -- cursor
        set.virtualedit={'onemore', 'block'}

    -- search
        set.ignorecase=true
        set.smartcase=true
        set.grepprg='grep -nH $*'

        map('n', '<C-L>', '<CMD>nohlsearch<CR><CMD>diffupdate<CR><C-L>', {silent=true, noremap=true})

    -- paths
        -- set path={'.', '../include', '../inc', '/usr/include'}

    -- commandline
        -- set.wildmode={'longest', 'full'}
        set.wildignorecase=true
        set.wildignore:append{'*/.git/*', '*/.hg/*', '*/.svn/*', '*/CVS/*'}

    -- mouse
        set.mouse='a'
        set.mousefocus=true

        require 'maxfl.keymaps'

    -- filetype
        vim.g.load_doxygen_syntax=true
        vim.g.tex_flavor='latex'
        vim.g.tex_conceal='abdmg'
        vim.cmd [[
            augroup filetypeextra
                au!
                au BufNewFile,BufRead *.wiki set shiftwidth=2
                au BufNewFile,BufRead *.bbx,*.cbx,*.lbx setf tex
            augroup END
        ]]

        set.commentstring='#%s'
        set.cpoptions:append 'd'

    -- Diff selection
        map('n', 'Dp', ':.diffput<CR>', emptyopts)
        map('v', 'Dp', ':diffput<CR>', emptyopts)
        map('n', 'Do', ':.diffget<CR>', emptyopts)
        map('v', 'Do', ':diffget<CR>', emptyopts)

    -- Clipboard mappings
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

        -- yank mouse selection
        map('v', '<LeftRelease>', '"*ygv', emptyopts)

        -- select just pasted text
        local opts={noremap=true, expr=true}
        map('n', 'viy', [['`['.strpart(getregtype(), 0, 1).'`]']], opts)

    -- Motions
        map('v', '>', '>gv', noremap)
        map('v', '<', '<gv', noremap)

        map('', 'j', 'gj', noremap)
        map('', 'k', 'gk', noremap)
        map('', 'gj', 'j', noremap)
        map('', 'gk', 'k', noremap)

    -- Pairs
        map('i', '<M-Space>', '<Space><Space><Left>', noremap) -- make space before and after
        map('i', '<S-Space>', '<Space><Space><Left>', noremap) -- make space before and after
        map('i', '<M-BS>', '<BS><Del>', noremap)               -- remove symbol before and after

    -- Commands
        -- Disable ex mode
        map('n', 'Q', '<nop>', noremap)
        map('i', '<T-F12>', '<nop>', noremap)

        -- Save
        map('n', '<F2>',   '<CMD>w<CR>',    noremap)
        map('n', '<S-F2>', '<CMD>w!<CR>',   noremap)
        map('i', '<F2>',   '<CMD>w<CR>gi',  noremap)
        map('i', '<S-F2>', '<CMD>w!<CR>gi', noremap)

-- Plugins
require 'packer_cfg.packer'

-- plugins
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--  or rua install

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

