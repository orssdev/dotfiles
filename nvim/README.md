# nvim

Neovim config using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager. Plugins are defined one-per-file under `lua/plugins/`; `lazy-lock.json` pins versions.

Leader key is `<space>`.

## Layout

- `init.lua` — entrypoint, loads `config/` then `lua/plugins/` via lazy.nvim
- `lua/config/options.lua` — core Neovim options
- `lua/config/keybinds.lua` — keymaps (below)
- `lua/config/lazy.lua` — lazy.nvim bootstrap/setup
- `lua/plugins/*.lua` — one file per plugin

Notable plugins: fzf-lua, neo-tree, harpoon, buffer_manager, gitsigns, lazygit.nvim, trouble, toggleterm, nvim-notify, smear-cursor, render-markdown, nvim-treesitter, blink/nvim-cmp-style completion (see `lua/plugins/completion.lua` and `lsp.lua` for the exact stack).

LSP servers, formatters, and treesitter parsers are installed on first launch via Mason/lazy.nvim — `install.sh` deliberately does not manage those.

## Keymaps

### General / editing

| Keys | Mode | Action |
|---|---|---|
| `J` / `K` | visual | move selected lines down/up |
| `<leader>y` | normal/visual | yank to system clipboard |
| `<leader>w` | normal | save |
| `<leader>q` | normal | quit |
| `<leader>r` | normal | reload file from disk |
| `<leader>rw` | normal | search/replace word under cursor |
| `<leader>nh` | normal | clear search highlight |
| `n` / `N` | normal | next/prev search match, centered |
| `<C-d>` / `<C-u>` | normal | half-page down/up, centered |

### Windows & buffers

| Keys | Mode | Action |
|---|---|---|
| `<leader>sv` / `<leader>sh` | normal | vertical/horizontal split |
| `<C-h/j/k/l>` | normal | move between window splits |
| `<leader>bn` / `<leader>bp` / `<leader>bd` | normal | next/prev/delete buffer |
| `<leader>bm` | normal | toggle buffer manager (buffer_manager.nvim) |
| `<leader>e` | normal | toggle Neo-tree |

### Diagnostics, LSP & formatting

| Keys | Mode | Action |
|---|---|---|
| `<leader>dd` | normal | open diagnostic float |
| `<leader>dt` | normal | toggle diagnostic virtual text |
| `gd` | normal | go to definition |
| `gr` | normal | go to references |
| `K` | normal | hover docs |
| `<leader>rn` | normal | rename symbol |
| `<leader>ca` | normal | code action |
| `<leader>cf` | normal/visual | format file (conform.nvim) |
| `<leader>xx` | normal | Trouble: diagnostics |
| `<leader>xw` | normal | Trouble: workspace diagnostics |
| `<leader>xb` | normal | Trouble: buffer diagnostics |
| `<leader>xq` | normal | Trouble: quickfix list |

### Git

| Keys | Mode | Action |
|---|---|---|
| `<leader>gp` | normal | toggle inline hunk preview (gitsigns) |
| `<leader>gb` | normal | toggle current line blame (gitsigns) |
| `<leader>lg` | normal | open LazyGit |

### Find / search (fzf-lua)

| Keys | Mode | Action |
|---|---|---|
| `<leader>ff` | normal | find files |
| `<leader>fg` | normal | live grep |
| `<leader>fb` | normal | list buffers |
| `<leader>fs` | normal | git status |
| `<leader>fh` | normal | fzf harpoon list |

### Harpoon

| Keys | Mode | Action |
|---|---|---|
| `<leader>a` | normal | add file to harpoon list |
| `<leader>h` | normal | toggle harpoon quick menu |
| `<C-p>` / `<C-n>` | normal | prev/next harpoon file |

### Terminal & markdown

| Keys | Mode | Action |
|---|---|---|
| `<C-\>` | normal | toggle floating terminal (toggleterm) |
| `<leader>mp` | normal | toggle markdown render (render-markdown.nvim) |

### Completion (insert mode, nvim-cmp)

| Keys | Action |
|---|---|
| `<C-Space>` | trigger completion |
| `<C-e>` | abort completion |
| `<CR>` | confirm selected item |
| `<Tab>` / `<S-Tab>` | next/prev item |
