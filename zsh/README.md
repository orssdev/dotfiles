# zsh

## Load order

- `.zprofile` — sets up Homebrew shellenv (login shell)
- `.zshrc` — sources every file in `~/.zsh/*.zsh`

## Files sourced by `.zshrc`

- `exports.zsh` — `XDG_CONFIG_HOME`, `EDITOR`/`VISUAL`, nvm init
- `plugins.zsh` — bootstraps [antidote](https://getantidote.github.io/) as the plugin manager, vi mode (`bindkey -v`)
- `aliases.zsh` — general, git, tmux aliases
- `local.zsh` — **gitignored.** Machine-specific or secret exports (e.g. `JAVA_HOME`, Android SDK `PATH`) that shouldn't follow the repo to another machine. Not present until you create it.
- other packages' `.zsh/*.zsh` snippets (starship, eza, fzf, yazi) are stowed alongside this package and picked up the same way

## Plugins

Managed via antidote, declared in `.zsh_plugins.txt`:

- `aloxaf/fzf-tab`
- `zsh-users/zsh-autosuggestions`
- `zsh-users/zsh-history-substring-search`
- `zsh-users/zsh-syntax-highlighting`
- `zsh-users/zsh-completions`

Editing `.zsh_plugins.txt` regenerates `.zsh_plugins.zsh` on next shell start (antidote diffs mtimes).

## New machine setup

After stowing, create `~/.zsh/local.zsh` for anything machine-specific — it's excluded from git on purpose.
