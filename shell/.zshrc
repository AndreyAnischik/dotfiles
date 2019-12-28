# zsh-specific variables
export ZSH_THEME="chaotic-beef" # theme
export CASE_SENSITIVE="true"
export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color # 256 colors for tmux

# autosuggestion and completion
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=94'
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export COMPLETION_WAITING_DOTS="true" # display dots when completion is loading

# fuzzy search
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# initializations
# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# rbenv
eval "$(rbenv init -)"

# kiex
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

# plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting # must be the last in this list
)

# disable oh-my-zsh aliases
unalias -m '*'

# import helper functions
if [ -f "$HOME/dotfiles/shell/functions.sh" ]; then
    . "$HOME/dotfiles/shell/functions.sh"
fi

# import aliases
if [ -f "$HOME/dotfiles/shell/aliases.sh" ]; then
    . "$HOME/dotfiles/shell/aliases.sh"
fi

# import temp settings (e.g. for current project)
if [ -f "$HOME/dotfiles/shell/temp_settings.sh" ]; then
    . "$HOME/dotfiles/shell/temp_settings.sh"
fi
