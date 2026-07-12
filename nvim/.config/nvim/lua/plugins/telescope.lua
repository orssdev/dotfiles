return {
  'nvim-telescope/telescope.nvim', version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    require('telescope').setup({
      defaults = {
        path_display = { 'smart' },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    })
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('ui-select')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden = true }) end, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep,   { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers,     { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags,   { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fs', builtin.git_status,  { desc = 'Telescope git status' })
  end,
}
