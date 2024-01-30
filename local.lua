--- Local options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true
vim.o.backup = false
vim.o.swapfile = false

vim.o.incsearch = true

vim.o.termguicolors = true

--- Local keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Exchange lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Overwrite paste by deleting selection into blackhole register and pasting from 
--   unnamed register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- === Some simple system clipboard related commands
-- yank text or selection into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- yank line into system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- ==== The following are Windows-like system clipboard commands to 
-- copy/cut/paste text (Ctrl-C,X,V)
--    copy selection into system clipboard <Opt>-c
vim.keymap.set("x", "<Char-0x00E7>", [["+y]])

--    cut selection into system clipboard <Opt>-x
vim.keymap.set("x", "<Char-0x2248>", [["+d]])

--    paste from system clipboard <Opt>-v for both insert mode and normal mode
vim.keymap.set("n", "<Char-0x221a>", [["+p]])
vim.keymap.set("i", "<Char-0x221a>", "<Esc>\"+pa")

-- ==== End of Windows-like system clipboard commands

-- deleting text/selection into blackhole register
--    this is to avoid overwriting the contents of the default copy/paste register
vim.keymap.set({"n", "v"}, "<C-D>", [["_d]])

-- Execute current lua source file
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

