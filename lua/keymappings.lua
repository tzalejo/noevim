-- Mapping helper
local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Git messenger
mapper("n", "<Leader>gm", "<Plug>(git-messenger)<CR>")

-- Define Mapleader
vim.g.mapleader = " "

-- TODO vista de resaltadore utilizando telescope
mapper("n", "<Leader>tt", ":TodoTelescope<CR>")

-- Para recargar un archivo de forma manual
-- nnoremap <leader>ss :source %<cr>
mapper("n", "<Leader>ss", ":source %<CR>")

-- Save and Close
mapper("n", "<Leader>w", ":w!<CR>")
mapper("n", "<Leader>q", ":q<CR>")
mapper("n", "mq", ":qa!<CR>")
mapper("n", "qq", ":q!<CR>")

--Agregar ventana
mapper("n", "<Leader>wh", ":split<CR>")
mapper("n", "<Leader>wv", ":vsplit<CR>")
mapper("n", "<Leader>wr", ":WinResizerStartResize<CR>")

-- Abrir Terminal
mapper("n", "<C-t>", ":split<CR>:ter<CR>:resize 15<CR>")
-- Abre Ayuda Instalacion
mapper("n", "<Leader>h", ":CheckHealth<CR>")

-- Menu desplegable NERDTree
mapper("n", "<Leader>nt", ":NvimTreeOpen<CR>")
mapper("n", "<Leader>nn", ":NvimTreeClose<CR>")
mapper("n", "<Leader>nu", ":NvimTreeRefresh<CR>")

-- Duplitcate Line
mapper("n", "tt", ":t.<CR>")

-- Busqueda en un archivo
-- Hop.nvim
mapper('n', 'f', ":HopWord<CR>")
mapper('n', 'F', ":HopPattern<CR>")
mapper('n', 'ff', ":HopChar2<CR>")

-- Change Buffer
mapper("n", "<C-M>", ":bnext<CR>")
mapper("n", "<C-N>", ":bprev<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprevious<CR>")

-- Resize with arrows
mapper("n", "<C-Up>", ":resize -2<CR>")
mapper("n", "<C-Down>", ":resize +2<CR>")
mapper("n", "<C-Left>", ":vertical resize +2<CR>")
mapper("n", "<C-Right>", ":vertical resize -2<CR>")

-- Better window movement
mapper("n", "<C-h>", "<C-w>h")
mapper("n", "<C-j>", "<C-w>j")
mapper("n", "<C-k>", "<C-w>k")
mapper("n", "<C-l>", "<C-w>l")

-- Coc
mapper("n", "gd", "<Plug>(coc-definition)<CR>")
mapper("n", "gD", "<Plug>(coc-implementation)<CR>")
mapper("n", "gr", "<Plug>(coc-references)<CR>")
mapper("n", "gf", "<Plug>(coc-declaration)<CR>")

-- LSP
-- mapper("n", "<Leader>s", ":LspInfo<CR>")
-- mapper("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
-- mapper("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
-- mapper("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
-- mapper("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
-- mapper("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
-- mapper("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
-- mapper("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
-- mapper("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
-- mapper("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
-- mapper("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
-- mapper("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
-- mapper("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
-- mapper("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
-- mapper("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
-- mapper("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
--mapper("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")
--mapper("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")

-- Plugins Mappings ↓

-- Telescope
-- mapper("n", "<Leader>st", ":Telescope live_grep<CR>")
-- mapper("n", "<Leader>sb", ":Telescope buffers<CR>")
mapper("n", "<Leader>fs", ":Telescope find_files<CR>")
mapper("n", "<Leader>sm", ":Telescope help_tags<CR>")
mapper("n", "<Leader>st", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
mapper("n", "<Leader>sb", "<cmd>lua require('telescope.builtin').buffers()<cr>")


-- Troubles
-- mapper("n", "<leader>xx", "<cmd>Trouble<cr>")
--[[ mapper("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>")
mapper("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>")
mapper("n", "<leader>xl", "<cmd>Trouble loclist<cr>")
mapper("n", "<leader>xq", "<cmd>Trouble quickfix<cr>")
mapper("n", "gR", "<cmd>Trouble lsp_references<cr>") ]]

-- Completion
-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})



