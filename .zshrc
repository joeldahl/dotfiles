# Load colors support (for the prompt)
autoload colors
colors

# Allow variable substitution in the prompt
setopt PROMPT_SUBST

# Prompt
PS1="%n%{$fg[red]%}@%{$reset_color%}%m %{$fg[green]%}[%{$reset_color%}%~%{$fg[green]%}]%{$reset_color%} "

# Load completion support
autoload compinit
compinit

# zsh completion colors
zmodload zsh/complist
zstyle ':completion:*' list-colors 'di=01;33:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:'

# ls colors
export LSCOLORS="Dxfxcxdxbxegedabagacad"

# Completion: Don't cycle
setopt NO_AUTO_MENU

# Completion: Prompt below completion
setopt NO_ALWAYS_LAST_PROMPT

# No beeping
setopt NO_BEEP NO_HIST_BEEP NO_LIST_BEEP

# Set vim as default editor if it exists
if [ -x /usr/local/bin/vim ]; then
	# FreeBSD default
	export EDITOR="/usr/local/bin/vim"
elif [ -x /usr/bin/vim ]; then
	# Mac OS X default
	export EDITOR="/usr/bin/vim"
fi

# Pager
export="more"

# Better ls
alias ls='ls -ahoGF'

# History
export HISTFILE=~/.zshhistory
export HISTSIZE=8196
export SAVEHIST=8196

# Manual pages with color
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

# Music
alias radioseven='mplayer http://www.radioseven.se/128.pls'
alias playdio='mplayer http://scb3.fantis.se:8000'
alias neradio='mplayer http://bp.neradio.se:8000'
