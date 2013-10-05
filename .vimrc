"
" .vimrc - Vim configuration file
" 
" Written by:
" Joel Dahl <joel@vnode.se>
"

" Prevent vim from emulating vi
set nocompatible

" Theme
colorscheme hacktop

" Show the current mode
set showmode

" Show the command being typed
set showcmd

" Always display the status line
set laststatus=2

" Adjust the status line a bit
set statusline=%F\ %m%r%h%w\ [%{&ff}]\ %y\ [line:%l/%L]\ [col:%v]

" Detect type of file being edited
filetype plugin indent on

" Syntax highlightning
syntax on

" Highlight as I type a search phrase
set incsearch

" Do not highlight searched phrases
set nohlsearch

" No beeps or screen flashes
set noerrorbells
set visualbell
set t_vb=

" Do not make backups
set nobackup

" Keep commands and search patterns in the history
set history=1000

" Allow backspace to delete
set backspace=indent,eol,start

" Turn on line numbers
set number

" Display the cursor position
set ruler

" Autoindent
set autoindent

" Number of spaces to use for each step of (auto)indent
" Different indentation based on some common extensions
autocmd FileType c,cpp setlocal shiftwidth=8
autocmd FileType perl,sh,zsh,csh,tcsh setlocal shiftwidth=4
autocmd FileType html,css setlocal shiftwidth=2

" Do not show all characters
set nolist

" If I want all characters, show them like this
set listchars=tab:>-,trail:-

" Automatically insert line breaks
set textwidth=78

" Number of spaces that a <Tab> in the file counts for
set tabstop=8

" Prevents tabs from being automagically converted to spaces
set noexpandtab

" Scroll offset - number of lines visible above and below the cursor
set scrolloff=4

" C options for proper indenting - :help cinoptions-values
set cinoptions=:0,t0,+4,(4

" Mouse support in xterm vim
set mouse=a

" Scroll wheel support in xterm vim
map <xCSI>[62~ <MouseDown>

" F11 to toggle paste mode
map <F11> :set invpaste<CR>
set pastetoggle=<F11>

" Enable smarter paste mode when $TERM is xterm
" Helps a lot with pasting in vim
if &term =~ "xterm.*"
	let &t_ti = &t_ti . "\e[?2004h"
	let &t_te = "\e[?2004l" . &t_te
	function XTermPasteBegin(ret)
		set pastetoggle=<Esc>[201~
		set paste
		return a:ret
	endfunction
	map <expr> <Esc>[200~ XTermPasteBegin("i")
	imap <expr> <Esc>[200~ XTermPasteBegin("")
endif
