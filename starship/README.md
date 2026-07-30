# starship

Two **mutually exclusive** variants of the prompt — stow only one, since both provide the same paths (`.config/starship/starship.toml` and `.zsh/starship.zsh`) and will conflict if stowed together.

- `git/` — full git status/metrics/state segments enabled. Use this as your everyday prompt.
- `no-git/` — same base config with `git_metrics`, `git_state`, and `git_status` disabled, and the directory segment untruncated. Use this if git status queries are too slow for a given machine/context (e.g. a slow network filesystem) or you just want a quieter prompt.

Switching variants:

```sh
stow -D starship/git   # or starship/no-git, whichever is currently stowed
stow starship/no-git   # or starship/git
```

Both variants set `STARSHIP_CONFIG` and call `starship init zsh` from `.zsh/starship.zsh`, which `zsh/.zshrc` sources automatically.
