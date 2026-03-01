--- Global variables
vim.g.have_nerd_font = true

--- Local options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
if vim.fn.has 'mac' then
  vim.o.undodir = vim.fn.getenv 'HOME' .. '/.vim/undodir'
elseif vim.fn.has 'win32' then
  vim.o.undodir = vim.fn.getenv 'USERPROFILE' .. '/.vim/undodir'
end
vim.o.backup = false
vim.o.swapfile = false
vim.o.incsearch = true
vim.o.relativenumber = true
vim.o.termguicolors = true

-- vim: ts=2 sts=2 sw=2 et
