## General
alias sz="source ~/.zshrc"
alias code="codium"
alias v="nvim"
alias ff="fastfetch"
alias firefox="open -a Firefox"
alias y="yazi"
alias stow='stow -t "$HOME"'

## Git
### Status & Log
alias gs="git status"
alias gl="git log --oneline --graph --decorate"

### Staging & Committing
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit -m"
alias gca="git commit --amend"

### Diff
alias gd="git diff"
alias gds="git diff --staged"

### Remote
alias gp="git push"
alias gpl="git pull"
alias gf="git fetch"

### Branching
alias gb="git branch"
alias gbd="git branch -d"
alias gsw="git switch"
alias gswc="git switch -c"

### Merging & Rebasing
alias gm="git merge"
alias grb="git rebase"

### Stash
alias gst="git stash"
alias gstp="git stash pop"

### Restore
alias grs="git restore"
alias grss="git restore --staged"

### Lazygit
alias lg="lazygit"

## Tmux
alias stmux="tmux source ~/.config/tmux/tmux.conf"
alias tns="tmux new -s"
alias ta="tmux attach"
alias tat="tmux attach -t"
alias td="tmux detach"
alias tls="tmux list-session"
alias tks="tmux kill-session"
