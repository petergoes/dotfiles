# Use Starship for prompt decoration (https://starship.rs/)
eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"
eval "$(thefuck --alias)"

# Load FZF config
source $HOME/.config/fzf/config

# Load custom aliases
source $HOME/.config/zsh/alias.zsh

# Load custom tools
source $HOME/.config/zsh/tools/jump.zsh
source $HOME/.config/zsh/tools/nvm.zsh
source $HOME/.config/zsh/tools/remove-ds-store-files.zsh
source $HOME/.config/zsh/tools/thefuck.zsh

# Add syntax highlighting for commands (https://github.com/zsh-users/zsh-syntax-highlighting)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load git completion. See https://stackoverflow.com/a/58517668
zstyle ':completion:*:*:git:*' user-commands ${${(M)${(k)commands}:#git-*}/git-/} 
fpath=(~/.zsh $fpath)

# Needed for lazygit to load its condig
export XDG_CONFIG_HOME="$HOME/.config"

autoload -Uz compinit && compinit -u

