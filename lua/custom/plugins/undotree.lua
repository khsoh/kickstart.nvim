-- Install the plugin
vim.pack.add { 'https://github.com/mbbill/undotree' }

-- Register the keymap with a callback
-- This ensures the plugin loads only when <leader>u is pressed
vim.keymap.set('n', '<leader>u', function()
  -- Trigger the command, which will load the plugin if not already loaded
  vim.cmd 'UndotreeToggle'
end, {
  desc = 'Undotree Toggle',
})
-- vim: ts=2 sts=2 sw=2 et
