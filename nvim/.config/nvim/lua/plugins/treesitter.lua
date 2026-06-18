return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = { 'lua', 'typescript', 'tsx', 'javascript', 'python', 'markdown', 'bash', 'yaml', 'json' },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    },
}
