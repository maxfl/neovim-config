local map = vim.api.nvim_set_keymap
local set = vim.opt
local noremap = { noremap = true }
local emptyopts = {}
vim.g["&packpath"] = vim.g["&runtimepath"]

vim.cmd([[
    syntax on
    filetype on
]])

-- Options
-- GUI
set.guifont = {
	"MesloLGS NF:h12",
	"MesloLGSDZ Nerd Font Mono:h12",
	"Monospace:h12",
	"Mono:h12",
}

-- Behaviour
set.autowrite = true
set.autoread = true

if vim.o.history < 1000 then
	set.history = 1000
end

vim.o.shada = vim.o.shada:gsub("'%d+", "'1000")

-- Stop insert of focus lost
vim.cmd([[
    function s:AutoStopInsert()
        if &buftype!="terminal"
            stopinsert
        endif
    endfunction

    augroup focuscontrol
        au!
        au FocusLost,TabLeave * call s:AutoStopInsert()
    augroup END
]])

-- Interface
set.background = "light"
set.hidden = true
set.termguicolors = true
set.switchbuf = { "useopen", "usetab", "newtab" }
set.number = true
set.relativenumber = true
set.signcolumn = "yes"

-- set.fillchars:append {vert='│', fold='—', stlnc='_'}
set.fillchars:append({ vert = "┊" })
set.listchars:append({ eol = "↪", multispace = "_", leadmultispace = " " })
set.list = true
-- set.listchars:append{tab='>-', trail='-', extends='>', precedes='<', nbsp='+'}
-- vim.cmd[[let &listchars = "tab:\u21e5.,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"]]

-- Splitting and field of view
set.splitbelow = true
set.splitright = true
set.scrolloff = 3
set.sidescrolloff = 5
set.sidescroll = 5

-- breaks and wraps
set.wrap = false
set.linebreak = true
set.colorcolumn = "+1"
set.showbreak = "↪"
set.cpoptions:append("n") -- show break on a numberline

set.formatoptions:append("ro")

-- indentation
set.shiftwidth = 4
set.expandtab = true
set.tabstop = 4
set.softtabstop = 2
set.cino:append({ "g0", "i0", "(0" })
set.cinkeys:remove("0#")
set.autoindent = true
set.breakindent = true
set.breakindentopt:append({ "shift:-1", "min:50" })

-- editing
-- set.joinspaces=false

-- completion
set.complete:append("k")
set.completeopt:remove("preview")
set.completeopt:append("noinsert")
set.completeopt:append("menuone")
-- set.completeopt:append 'longest'
vim.cmd([[au FileType * exe('setl dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')]])

-- folds
set.foldopen:append("jump")
set.foldenable = false

-- pairs, brackets, etc
set.showmatch = true

-- cursor
set.virtualedit = { "onemore", "block" }

-- search
set.ignorecase = true
set.smartcase = true
set.grepprg = "grep -nH $*"

-- spelling
set.spelllang = { "en", "ru_yo" }
set.spellcapcheck = vim.o.spellcapcheck:sub(1, 1) .. vim.o.spellcapcheck:sub(3) -- remove . from matching
set.keymap = "russian-jcukenwin"
set.iminsert = 0
set.imsearch = -1
vim.cmd([[
    augroup forcespellcheck
        au!
        au FileType svn setlocal spell
        au FileType gitcommit setlocal spell
        au FileType vcscommit setlocal spell
    augroup END
]])

map("n", "<C-L>", "<CMD>nohlsearch<CR><CMD>diffupdate<CR><C-L>", { silent = true, noremap = true })

-- paths
-- set path={'.', '../include', '../inc', '/usr/include'}

-- commandline
set.wildmode = { "longest", "full" }
set.wildignorecase = true
set.wildignore:append({ "*/.git/*", "*/.hg/*", "*/.svn/*", "*/CVS/*" })

-- mouse
set.mouse = "a"
set.mousefocus = true
set.mousemoveevent = true

require("maxfl.keymaps")

-- filetype
vim.g.load_doxygen_syntax = true
vim.g.tex_flavor = "latex"
vim.g.tex_conceal = "abdmg"
vim.cmd([[
            augroup filetypeextra
                au!
                au BufNewFile,BufRead *.wiki set shiftwidth=2
                au BufNewFile,BufRead *.bbx,*.cbx,*.lbx setf tex
            augroup END
        ]])

set.commentstring = "#%s"
set.cpoptions:append("d") -- ./ in tags means current directory

-- Diff selection
vim.keymap.set({"n", "v"}, "D", "<nop>", emptyopts)
vim.keymap.set("n", "Dp", ":.diffput<CR>", emptyopts)
vim.keymap.set("n", "Do", ":.diffget<CR>", emptyopts)
vim.keymap.set("v", "Dp", ":diffput<CR>", emptyopts)
vim.keymap.set("v", "Do", ":diffget<CR>", emptyopts)
vim.keymap.set("n", "<Leader>di", "<CMD>set diffopt+=iwhite<CR>")
vim.keymap.set("n", "<Leader>dI", "<CMD>set diffopt-=iwhite<CR>")
vim.keymap.set("n", "<Leader>dw", "<CMD>set diffopt+=iwhiteall<CR>")
vim.keymap.set("n", "<Leader>dW", "<CMD>set diffopt-=iwhiteall<CR>")
vim.keymap.set('n', '<leader>dU', '<CMD>Diffupdate<CR>', {silent=true})
vim.keymap.set('n', '<leader>du', '<CMD>diffupdate<CR>', {silent=true})

-- Clipboard mappings
-- Make x, d and dd delete with no register
map("", "x", '"_x', noremap)
map("v", "x", '"_x', noremap)
map("", "d", '"_d', noremap)
map("v", "d", '"_d', noremap)
map("n", "dd", '"_dd', noremap)

-- use m (move) for deleting with register
map("", "m", "d", noremap)
map("v", "m", "d", noremap)
map("n", "mm", "dd", noremap)
map("n", "gm", "m", noremap)

-- yank mouse selection
map("v", "<LeftRelease>", '"*ygv', emptyopts)

-- select just pasted text
local expr = { noremap = true, expr = true }
map("n", "viy", [['`['.strpart(getregtype(), 0, 1).'`]']], expr)

-- Motions
map("v", ">", ">gv", noremap)
map("v", "<", "<gv", noremap)

map("", "j", "gj", noremap)
map("", "k", "gk", noremap)
map("", "gj", "j", noremap)
map("", "gk", "k", noremap)

-- Pairs
map("i", "<M-Space>", "<Space><Space><Left>", noremap) -- make space before and after
map("i", "<S-Space>", "<Space><Space><Left>", noremap) -- make space before and after
map("i", "<M-BS>", "<BS><Del>", noremap) -- remove symbol before and after

-- Commands
-- Disable ex mode
map("n", "Q", "<nop>", noremap)
map("i", "<T-F12>", "<nop>", noremap)
map("i", "<F12>", "<nop>", noremap)

-- Save
map("n", "<F2>", "<CMD>w<CR>", noremap)
map("i", "<F2>", "<CMD>w<CR>", noremap)
map("n", "<Leader><F2>", "<CMD>w!<CR>", noremap)
-- map('n', 'Q', '<CMD>w!<CR>',   noremap)
-- map('i', '<F2>',   '<CMD>w<CR>gi',  noremap)
-- map('i', '<S-F2>', '<CMD>w!<CR>gi', noremap)

-- Edit new file based on a word under cursor
map("n", "<Leader>gf", "<CMD>e <cfile><CR>", noremap)
map("n", "<Leader>gF", "<CMD>tabe <cfile><CR>", noremap)

-- :commands
map("n", "<Leader>:e", [[':edit '.expand("%:h")]], expr)
map("n", "<Leader>:s", [[':saveas '.expand("%")]], expr)
map("n", "<Leader>:S", [[':saveas '.expand("%:h")]], expr)

-- Shell
-- vim.env.SHLVL = tostring(vim.env.SHLVL and vim.env.SHLVL - 1 or 0) -- Reduce SHLVL

-- Plugins
-- require 'packer_cfg.packer'
require("lazy_cfg")
