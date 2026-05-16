-- 1. Install the plugin
vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }

vim.g.mkdp_auto_start = 0

-- Load on FileType markdown
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.keymap.set('n', '<leader>cp', '<cmd>MarkdownPreviewToggle<cr>', {
      desc = 'Markdown Preview',
      buffer = true,
    })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  once = true,
  callback = function()
    -- Run build/install if needed
    if not vim.g.mkdp_node_installed then
      vim.fn['mkdp#util#install']()
      vim.g.mkdp_node_installed = true
    end
  end,
})
-- vim: ts=2 sts=2 sw=2 et
