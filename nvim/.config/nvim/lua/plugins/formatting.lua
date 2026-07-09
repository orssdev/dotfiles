return {
    {
        'stevearc/conform.nvim',
        keys = {
            {
                '<leader>cf',
                function()
                    require('conform').format({ lsp_format = 'fallback', async = true })
                end,
                mode = { 'n', 'v' },
                desc = 'Format file',
            },
        },
        opts = {
            formatters_by_ft = {
                javascript = { 'prettierd', 'prettier', stop_after_first = true },
                javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
                typescript = { 'prettierd', 'prettier', stop_after_first = true },
                typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
                json = { 'prettierd', 'prettier', stop_after_first = true },
            },
        },
    },
}
