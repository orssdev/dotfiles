return {
  'goolord/alpha-nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
      '                                                     ',
    }

    dashboard.section.buttons.val = {
      dashboard.button('f', '  Find file', '<cmd>Telescope find_files<cr>'),
      dashboard.button('r', '  Recent files', '<cmd>Telescope oldfiles<cr>'),
      dashboard.button('g', '  Live grep', '<cmd>Telescope live_grep<cr>'),
      dashboard.button('e', '  File explorer', '<cmd>Yazi<cr>'),
      dashboard.button('q', '  Quit', '<cmd>qa<cr>'),
    }

    dashboard.section.footer.val = ''

    dashboard.opts.layout = {
      { type = 'padding', val = 4 },
      dashboard.section.header,
      { type = 'padding', val = 2 },
      dashboard.section.buttons,
      { type = 'padding', val = 1 },
      dashboard.section.footer,
    }

    alpha.setup(dashboard.opts)
  end,
}
