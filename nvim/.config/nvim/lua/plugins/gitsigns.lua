return {
    {
        'lewis6991/gitsigns.nvim',
        config = function(_, opts)
            -- Make blame virtual text more readable
            vim.api.nvim_set_hl(0, 'GitSignsCurrentLineBlame', { fg = '#ebdbb2', italic = true })
            require('gitsigns').setup(opts)
        end,
        opts = {
            current_line_blame_opts = { delay = 0 },
            on_attach = function(bufnr)
                local gs = require('gitsigns')
                local function map(l, r, desc)
                    vim.keymap.set('n', l, r, { buffer = bufnr, desc = desc })
                end

                map('<leader>gp', gs.preview_hunk_inline, 'Toggle hunk preview')
                map('<leader>gb', gs.toggle_current_line_blame, 'Toggle blame')
            end,
        },
    },
}
