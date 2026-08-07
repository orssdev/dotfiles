return {
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      win = { size = 20 },
    },
    keys = {
      { '<leader>xx', '<cmd>Trouble diagnostics toggle focus=true<cr>', desc = 'Diagnostics' },
      { '<leader>xw', '<cmd>Trouble diagnostics toggle focus=true<cr>', desc = 'Workspace Diagnostics' },
      { '<leader>xb', '<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>', desc = 'Buffer Diagnostics' },
      { '<leader>xq', '<cmd>Trouble qflist toggle focus=true<cr>', desc = 'Quickfix List' },
    },
  },
}
