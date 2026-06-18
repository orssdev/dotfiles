return {
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
        end,
    },
}
