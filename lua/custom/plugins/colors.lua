return {
  {
    "folke/tokyonight.nvim",
    priority = 1100,
    lazy = false,
    config = function()
      -- vim.cmd.colorscheme('tokyonight')
    end,
  },
  {
    "catppuccin/nvim",
    priority = 1200,
    lazy = false,
    flavour = "mocha",  -- latte, frappe, macchiato, mocha
    background = { -- :h background
      light = "latte",
      dark = "mocha",
    },
    config = function()
      vim.cmd.colorscheme('catppuccin')
    end,
  },
}
