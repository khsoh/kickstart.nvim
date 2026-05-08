-- 1. Install the plugin
vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }

-- Lazy load on FileType markdown
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  once = true,
  callback = function()
    -- Run build/install if needed
    if not vim.g.mkdp_node_installed then
      vim.fn['mkdp#util#install']()
      vim.g.mkdp_node_installed = true
    end

    vim.g.mkdp_auto_start = 0

    vim.keymap.set('n', '<leader>cp', '<cmd>MarkdownPreviewToggle<cr>', {
      desc = 'Markdown Preview',
      buffer = 0,
    })

    -- Ensure the plugin is loaded (it might be loaded automatically by the autocmd firing)
    -- If commands aren't found, you might need to require it:
    pcall(require, 'markdown-preview')
  end,
})
-- vim: ts=2 sts=2 sw=2 et
