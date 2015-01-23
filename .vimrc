"
" .vimrc - Vim configuration file
" 
" Written by:
" Joel Dahl <joel@vnode.se>
"

" Prevent vim from emulating vi
set nocompatible

" Syntax highlightning
syntax on

" Theme
colorscheme hacktop

set showmode			" Show current mode
set showcmd			" Show the command being typed
set laststatus=2		" Always display the status line
set incsearch			" Highlight as I type a search phrase
set nohlsearch			" Do not highlight searched phrases
set noerrorbells		" No error bells
set vb t_vb=			" No visual bell 
set nobackup			" Do not make backups
set history=1000		" Keep command line history
set backspace=indent,eol,start	" Allow backspace to delete
set number			" Turn on line numbers
set ruler			" Display the cursor position
set autoindent			" Autoindent
set cinoptions=:0,t0,+4,(4	" Proper C indenting :help cinoptions-values
set textwidth=78		" Automatically insert line breaks
set nolist			" Do not display unprintable characters
set listchars=tab:>>,trail:-	" Unprintable character visibility improvement
set scrolloff=1			" Number of lines visible around the cursor
set statusline=%F\ %m%r%h%w\ [%{&ff}]\ %y\ %l/%L:%v " Better status line

" Detect type of file being edited
filetype plugin indent on

" Different indentation based on some common file types
autocmd FileType c,cpp setlocal sw=8 ts=8 noet
autocmd FileType perl,sh,zsh,csh,tcsh setlocal sw=4 ts=8 sts=4 noet 
autocmd FileType html,css setlocal sw=2 ts=8 sts=2 noet

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
