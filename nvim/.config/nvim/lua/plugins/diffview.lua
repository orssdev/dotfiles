return {
  {
    'sindrets/diffview.nvim',
    lazy = true,
    cmd = {
      'DiffviewOpen',
      'DiffviewClose',
      'DiffviewFileHistory',
    },
    keys = {
      { '<leader>gv', '<cmd>DiffviewOpen<cr>', desc = 'Diffview: open' },
      { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Diffview: file history' },
      { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = 'Diffview: close' },
    },
  },
}
