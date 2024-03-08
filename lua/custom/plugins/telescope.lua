return {
  'nvim-telescope/telescope.nvim',

  keys = function()
    local builtin = require 'telescope.builtin'
    return {
      { '<leader>gf', mode = { 'n' }, builtin.git_files, desc = '[G]it [f]iles - search files tracked by git' },
      { '<leader>gb', mode = { 'n' }, builtin.git_branches, desc = '[G]it [b]ranches for current directory' },
      { '<leader>gc', mode = { 'n' }, builtin.git_commits, desc = '[G]it [c]ommits for current directory' },
      { '<leader>gt', mode = { 'n' }, builtin.git_commits, desc = '[G]it commi[t]s for this buffer' },
      { '<leader>gs', mode = { 'n' }, builtin.git_status, desc = '[G]it [s]tatus for current directory' },
      { '<leader>gh', mode = { 'n' }, builtin.git_stash, desc = '[G]it stas[h] items in currenct repo' },
    }
  end,
}
