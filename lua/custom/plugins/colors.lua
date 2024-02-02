return {
  "folke/tokyonight.nvim",
  priority = 1100,
  lazy = false,
  config = function()
    vim.cmd.colorscheme('tokyonight')
  end,
}
