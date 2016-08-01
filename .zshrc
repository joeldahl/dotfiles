#
# .zshrc - zsh configuration file
#
# Written by:
# Joel Dahl <joel@vnode.se>
#

# Completion
autoload -U compinit
compinit

# My simple but effective prompt
PROMPT="%n@%m [%~] "

# Adjust completion to my liking
setopt NO_AUTO_MENU
setopt NO_ALWAYS_LAST_PROMPT

# No beeps
setopt NO_BEEP

# History - set size of the history file and make sure no duplicate
# commands are saved.
export HISTSIZE=8000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS

# ls colors - some systems use LSCOLORS, some use LS_COLORS.
export LSCOLORS="dxfxcxdxbxegedabagacad"
export LS_COLORS="di=33:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"

# Colors for filename completion
zmodload -i zsh/complist
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Needed for ..<TAB> to ../ completion
zstyle ':completion:*' special-dirs true

# Swedish characters
export LC_CTYPE=sv_SE.UTF-8

# English messages
export LC_MESSAGES=en_US.UTF-8

# less > more
export PAGER=less

# Partially type a command from history and search with up/down arrows.
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^[[A' history-beginning-search-backward-end 
bindkey '^[[B' history-beginning-search-forward-end

# Use vim as default editor if it is available. Else use plain old vi.
if (( $+commands[vim] )) then
	export EDITOR=vim
	alias vi=vim
else
	export EDITOR=vi
fi

# Load my aliases file if it exists
[ -f .aliases ] && source .aliases

