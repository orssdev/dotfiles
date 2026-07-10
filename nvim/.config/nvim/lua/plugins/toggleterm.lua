return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    lazy = true,
    cmd = { 'ToggleTerm' },
    keys = {
      { '<leader>t', '<cmd>ToggleTerm direction=float<cr>', desc = 'Toggle floating terminal' },
    },
    opts = {
      direction = 'float',
    },
  },
}
