-- 1. Register the plugin block to vim.pack's manifest
vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }

-- 2. Configure global plugin settings (perfectly safe to do at the top level)
vim.g.mkdp_auto_start = 0

-- 3. Load the plugin and attach configurations only when a markdown file opens
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    -- CRITICAL: Unpack the 'opt' package files into the active session runtime path
    vim.cmd 'packadd markdown-preview.nvim'

    -- Safely bind the keymap directly to the open markdown buffer
    vim.keymap.set('n', '<leader>cp', '<cmd>MarkdownPreviewToggle<cr>', {
      desc = 'Markdown Preview',
      buffer = true, -- Attaches ONLY to active markdown buffers
    })

    -- Lazy-compile the Node binary one time if missing
    if not vim.g.mkdp_node_installed then
      vim.fn['mkdp#util#install']()
      vim.g.mkdp_node_installed = true
    end
  end,
})
-- vim: ts=2 sts=2 sw=2 et
