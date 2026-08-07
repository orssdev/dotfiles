return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup({
      files = {
        cmd = 'rg --files --hidden --glob "!.git/*"',
      },
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --hidden -g '!.git'",
      },
      ui_select = {},
      lsp = {
        code_actions = {
          previewer = false,
        },
      },
    })

    local fzf = require('fzf-lua')
    vim.keymap.set('n', '<leader>ff', fzf.files,      { desc = 'Fzf find files' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep,  { desc = 'Fzf live grep' })
    vim.keymap.set('n', '<leader>fb', fzf.buffers,    { desc = 'Fzf buffers' })
    vim.keymap.set('n', '<leader>fs', fzf.git_status, { desc = 'Fzf git status' })
  end,
}
