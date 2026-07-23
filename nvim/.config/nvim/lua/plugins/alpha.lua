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

    local function btn(sc, txt, keybind)
      local b = dashboard.button(sc, txt, keybind)
      b.opts.cursor = 2
      return b
    end

    dashboard.section.buttons.val = {
      btn('f', '  Find file', '<cmd>Telescope find_files<cr>'),
      btn('r', '  Recent files', '<cmd>Telescope oldfiles<cr>'),
      btn('g', '  Live grep', '<cmd>Telescope live_grep<cr>'),
      btn('e', '  File explorer', '<cmd>Yazi<cr>'),
      btn('q', '  Quit', '<cmd>qa<cr>'),
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

    dashboard.section.header.opts = { hl = 'AlphaHeader', position = 'center' }

    vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#cc241d' })

    alpha.setup(dashboard.opts)
  end,
}
