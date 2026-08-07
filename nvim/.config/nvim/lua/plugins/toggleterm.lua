return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    lazy = true,
    cmd = { 'ToggleTerm' },
    keys = {
      { [[<c-\>]], '<cmd>ToggleTerm direction=float<cr>', desc = 'Toggle floating terminal' },
    },
    opts = {
      direction = 'float',
      open_mapping = [[<c-\>]],
    },
  },
}
