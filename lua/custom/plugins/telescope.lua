-- Install the plugin
vim.pack.add { 'https://github.com/nvim-telescope/telescope.nvim' }

-- Define keymaps for telescope git operations
-- Using callbacks to lazy-load the builtin module when keys are pressed

vim.keymap.set('n', '<leader>gf', function() require('telescope.builtin').git_files() end, {
  desc = '[G]it [f]iles - search files tracked by git',
})

vim.keymap.set('n', '<leader>gb', function() require('telescope.builtin').git_branches() end, {
  desc = '[G]it [b]ranches for current directory',
})

vim.keymap.set('n', '<leader>gc', function() require('telescope.builtin').git_commits() end, {
  desc = '[G]it [c]ommits for current directory',
})

vim.keymap.set('n', '<leader>gt', function() require('telescope.builtin').git_commits() end, {
  desc = '[G]it commi[t]s for this buffer',
})

vim.keymap.set('n', '<leader>gs', function() require('telescope.builtin').git_status() end, {
  desc = '[G]it [s]tatus for current directory',
})

vim.keymap.set('n', '<leader>gh', function() require('telescope.builtin').git_stash() end, {
  desc = '[G]it stas[h] items in currenct repo',
})
-- vim: ts=2 sts=2 sw=2 et
