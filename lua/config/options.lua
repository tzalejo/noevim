vim.g.mapleader = " "
vim.g.snippets = "luasnip"

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append "unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append "-" -- consider string-string as whole word

-- movimiento de linea
vim.cmd [[
filetype plugin indent on
nnoremap <silent> <A-j>  :<C-U>exec "exec 'norm m`' \| move +" . (0+v:count1)<CR>
nnoremap <silent> <A-k>  :<C-U>exec "exec 'norm m`' \| move -" . (1+v:count1)<CR>
]]

-- cuando navego centro la pantalla
vim.cmd [[
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
]]
