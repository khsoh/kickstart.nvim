return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'go', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'html' },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
