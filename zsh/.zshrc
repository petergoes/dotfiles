# Use Starship for prompt decoration (https://starship.rs/)
eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"

source <(fzf --zsh)
source $HOME/.config/fzf/config
zstyle ':fzf-tab:*' use-fzf-default-opts yes

# Load custom aliases
source $HOME/.config/zsh/alias.zsh

# Load FZF tab
source $HOME/.config/zsh/plugins/fzf-tab/fzf-tab.zsh

# Add syntax highlighting for commands (https://github.com/zsh-users/zsh-syntax-highlighting)
local HOMEBREW_PREFIX="$(brew shellenv | grep HOMEBREW_PREFIX | awk '{print $2}' FS='"')"
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load git completion. See https://stackoverflow.com/a/58517668
zstyle ':completion:*:*:git:*' user-commands ${${(M)${(k)commands}:#git-*}/git-/} 
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit -u

