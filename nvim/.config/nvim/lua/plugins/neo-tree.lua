return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    keys = {
      { '<leader>et', '<cmd>Neotree toggle<cr>', desc = 'Toggle NeoTree' },
    },
    opts = {
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          hide_dotfiles = false,
        },
        window = {
          position = 'right',
          width = 50,
          mappings = {
            ['<space>'] = 'toggle_preview',
          },
        },
      },
    },
  },
}
