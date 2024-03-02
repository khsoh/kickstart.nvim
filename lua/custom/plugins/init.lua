-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

--- Local options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.o.undofile = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.incsearch = true
vim.o.relativenumber = true
vim.o.termguicolors = true

--- Local keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Exchange lines in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Overwrite paste by deleting selection into blackhole register and pasting from
--   unnamed register
vim.keymap.set('x', '<leader>p', [["_dP]])

-- === Some simple system clipboard related commands
-- yank text or selection into system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])

-- yank line into system clipboard
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- ==== The following are Windows-like system clipboard commands to
-- copy/cut/paste text (Ctrl-C,X,V).  The Opt key must be mapped to Meta
-- key in Terminal profile setup
--    copy selection into system clipboard <Opt>-c
vim.keymap.set('x', '<M-c>', [["+y]])

--    cut selection into system clipboard <Opt>-x
vim.keymap.set('x', '<M-x>', [["+d]])

--    paste from system clipboard <Opt>-v for both insert mode and normal mode
-- THE FOLLOWING HAS BEEN COMMENTED OUT BECAUSE OS AND NEOVIM CLIPBOARDS
--   HAVE BEEN SET THE SAME BY THE vim.o.clipboard SETTING.  SO USER CAN
--   USE THE 'p' KEY TO PASTE FROM CLIPBOARD
-- vim.keymap.set("n", "<M-v>", [["+p]])
vim.keymap.set('i', '<M-v>', '<Esc>"+pa')

-- ==== End of Windows-like system clipboard commands

-- deleting text/selection into blackhole register
--    this is to avoid overwriting the contents of the default copy/paste register
vim.keymap.set({ 'n', 'v' }, '<C-D>', [["_d]])

-- Execute current lua source file
vim.keymap.set('n', '<leader><leader>', function()
  vim.cmd 'so'
end)

return {}
