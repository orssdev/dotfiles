return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'ibhagwan/fzf-lua' },
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
    vim.keymap.set('n', '<leader>h', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set('n', '<C-p>', function() harpoon:list():prev() end)
    vim.keymap.set('n', '<C-n>', function() harpoon:list():next() end)

    vim.keymap.set('n', '<leader>fh', function()
      local fzf = require('fzf-lua')
      local paths = {}
      for _, item in ipairs(harpoon:list().items) do
        table.insert(paths, item.value)
      end
      fzf.fzf_exec(paths, {
        prompt = 'Harpoon> ',
        previewer = 'builtin',
        actions = { ['default'] = fzf.actions.file_edit },
      })
    end, { desc = 'Harpoon fzf list' })
  end,
}
