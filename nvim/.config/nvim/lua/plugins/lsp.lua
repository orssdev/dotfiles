return {
  {
    'artemave/workspace-diagnostics.nvim',
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require('mason-lspconfig').setup({
        ensure_installed = { 'ts_ls', 'eslint', 'pyright', 'lua_ls' },
        handlers = {
          function(server)
            lspconfig[server].setup({ capabilities = capabilities })
          end,
        },
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(event)
          require('workspace-diagnostics').populate_workspace_diagnostics(
            vim.lsp.get_client_by_id(event.data.client_id), event.buf
          )
          local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = event.buf, desc = desc })
          end
          map('gd', vim.lsp.buf.definition, 'Go to definition')
          map('gr', vim.lsp.buf.references, 'Go to references')
          map('K', function() vim.lsp.buf.hover({ border = 'rounded' }) end, 'Hover docs')
          map('<leader>rn', vim.lsp.buf.rename, 'Rename')
          map('<leader>ca', vim.lsp.buf.code_action, 'Code action')
        end,
      })
    end,
  },
}
