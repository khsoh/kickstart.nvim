return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = function(plugin)
      -- Add plugin's directory to runtime path
      vim.opt.rtp:prepend(plugin.dir)
      -- Now Neovim can find the autoload function
      vim.fn['mkdp#util#install']()
    end,
    ft = { 'markdown' },
    keys = {
      {
        '<leader>cp',
        '<cmd>MarkdownPreviewToggle<cr>',
        desc = 'Markdown Preview',
      },
    },
    config = function() vim.g.mkdp_auto_start = 0 end,
  },
}
