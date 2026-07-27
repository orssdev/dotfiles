export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix --exclude .git'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --info=inline"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

export FZF_ALT_C_COMMAND='fd --type d --hidden --strip-cwd-prefix --exclude .git'
export FZF_ALT_C_OPTS="--preview 'eza --icons --tree --color=always {} | head -200'"

export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window up:3:hidden:wrap --bind 'ctrl-/:toggle-preview'"

eval "$(fzf --zsh)"

bindkey -r '^[c'
bindkey -M emacs '^F' fzf-cd-widget
bindkey -M viins '^F' fzf-cd-widget
