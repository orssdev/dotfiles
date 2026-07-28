return {
  'rcarriga/nvim-notify',
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    require('notify').setup(opts)
    vim.notify = require('notify')
  end,
  opts = {
    background_colour = '#000000',
  },
}
