-- Install the plugin
vim.pack.add { 'https://github.com/catppuccin/nvim' }

require('catppuccin').setup {
  flavour = 'mocha', -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = 'latte',
    dark = 'mocha',
  },
}
vim.cmd.colorscheme 'catppuccin'
-- vim: ts=2 sts=2 sw=2 et
