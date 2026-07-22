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
      source_selector = {
        winbar = true,
        statusline = false,
        content_layout = 'center',
        sources = {
          { source = 'filesystem', display_name = '󰉓 Files' },
          { source = 'buffers', display_name = '󰈙 Bufs' },
          { source = 'git_status', display_name = ' Git' },
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            added = '✚',
            modified = '',
            deleted = '✖',
            renamed = '',
            untracked = 'U',
            ignored = 'I',
            unstaged = 'M',
            staged = 'S',
            conflict = 'C',
          },
        },
      },
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
