return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    cmd = 'Neotree',
    dependencies = {
      { 'nvim-lua/plenary.nvim',       lazy = true },
      { 'nvim-tree/nvim-web-devicons', lazy = true },
      { 'MunifTanjim/nui.nvim',        lazy = true },
    },
    init = function()
      local function set_dir_hl()
        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = '#fbf1c7' })
        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { fg = '#fbf1c7' })
      end
      set_dir_hl()
      vim.api.nvim_create_autocmd('ColorScheme', { callback = set_dir_hl })
    end,
    keys = {
      { '<leader>fe', '<cmd>Neotree toggle<cr>', desc = 'Toggle Neo-tree' },
    },
    opts = {
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        window = {
          position = 'right',
          width = 50,
        },
      },
    },
  },
}
