return {
  {
    'mikavilpas/yazi.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    keys = {
      { '<leader>e', '<cmd>Yazi<cr>', desc = 'Open yazi' },
    },
    opts = {
      open_for_directories = true,
    },
  },
}
