return {
  {
    'catppuccin/nvim',
    priority = 900,
    lazy = false,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = 'latte',
          dark = 'mocha',
        },
      }
      require('catppuccin').load()
    end,
  },
}
