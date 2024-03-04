return {
  'mbbill/undotree',
  cmd = { 'UndotreeToggle', 'UndotreeShow', 'UndotreeFocus', 'UndotreePersistUndo', 'UndotreeHide' },
  keys = {
    {
      '<leader>u',
      '<cmd>UndotreeToggle<cr>',
      desc = 'Undotree Toggle',
    },
  },
}
