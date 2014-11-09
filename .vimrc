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

" Different indentation based on some common file types
autocmd FileType c,cpp setlocal sw=8 ts=8 noet
autocmd FileType perl,sh,zsh,csh,tcsh setlocal sw=4 ts=8 sts=4 et 
autocmd FileType html,css setlocal sw=2 ts=8 sts=2 et

" C options for proper indenting - :help cinoptions-values
set cinoptions=:0,t0,+4,(4

" Do not show all characters
set nolist

" If I want all characters, show them like this
set listchars=tab:>>,trail:-

" Automatically insert line breaks
set textwidth=78

" Scroll offset - number of lines visible above and below the cursor
set scrolloff=4

" Mouse support in xterm vim
set mouse=a

" Scroll wheel support in xterm vim
map <xCSI>[62~ <MouseDown>

" F11 to toggle paste mode
map <F11> :set invpaste<CR>
set pastetoggle=<F11>

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

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
