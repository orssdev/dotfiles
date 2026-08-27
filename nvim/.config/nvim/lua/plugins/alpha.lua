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
      btn('f', '  Find file', '<cmd>FzfLua files<cr>'),
      btn('l', '  Lazy', '<cmd>Lazy<cr>'),
      btn('g', '  Live grep', '<cmd>FzfLua live_grep<cr>'),
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

    vim.api.nvim_create_autocmd('User', {
      pattern = 'AlphaReady',
      callback = function()
        vim.opt_local.fillchars:append({ eob = ' ' })

        local nop_keys = { '<ScrollWheelDown>', '<ScrollWheelUp>', '<C-d>', '<C-u>', '<C-f>', '<C-b>', '<C-e>', '<C-y>' }
        for _, key in ipairs(nop_keys) do
          vim.keymap.set('n', key, '<Nop>', { buffer = true })
        end

        vim.api.nvim_create_autocmd('BufUnload', {
          buffer = 0,
          once = true,
          callback = function()
            vim.opt_local.fillchars:remove('eob')
          end,
        })
      end,
    })
  end,
}
