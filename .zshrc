export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 17`

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# alias
## General
alias sz="source ~/.zshrc"
alias v="nvim"
alias firefox="open -a Firefox"

# fastfetch
alias ff="fastfetch"

## ls
alias ls='eza --icons'

## tmux 
alias stmux="tmux source ~/.config/tmux/tmux.conf"
alias tns="tmux new -s"
alias ta="tmux attach"
alias tat="tmux attach -t"
alias td="tmux detach"
alias tls="tmux list-session"
alias tks="tmux kill-session"

## Obsidian
alias iCloudmd="cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/iCloud"

# starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

#eza
export EZA_CONFIG_DIR="$HOME/.config/eza"

autoload -U compinit && compinit

#Antidote
# Set the root name of the plugins files (.txt and .zsh) antidote will use.
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins

# Ensure the .zsh_plugins.txt file exists so you can add plugins.
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

# Lazy-load antidote from its functions directory.
functions_path=$(brew --prefix)/opt/antidote/share/antidote/functions
fpath=($functions_path $fpath)
autoload -Uz antidote

# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

# Source your static plugins file.
source ${zsh_plugins}.zsh
