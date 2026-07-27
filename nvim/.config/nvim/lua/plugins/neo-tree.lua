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
      vim.g.loaded_netrwPlugin = 1
    end,
    keys = {
      { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Toggle Neo-tree' },
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
