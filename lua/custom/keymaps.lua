--- Local keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Exchange lines in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

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

-- Overwrite paste by deleting selection into blackhole register and pasting from
--   unnamed register
vim.keymap.set('x', '<leader>p', [["_dP]])

-- deleting text/selection into blackhole register
--    this is to avoid overwriting the contents of the default copy/paste register
vim.keymap.set({ 'n', 'v' }, '<C-D>', [["_d]])

-- Execute current lua source file
vim.keymap.set('n', '<leader><leader>', function() vim.cmd 'so' end)

-- Keybinds to cycle through the buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { desc = 'Previous buffer' })

--- Neovide specific setting - neovide used in viewing scrollback of ghostty
if vim.g.neovide then
  -- Press 'q' to quit Neovide quickly when viewing scrollback
  vim.keymap.set('n', 'q', ':qa!<CR>', { silent = true })

  -- Set font-family and size
  vim.o.guifont = 'FiraMono Nerd Font:h18'
end
-- vim: ts=2 sts=2 sw=2 et
