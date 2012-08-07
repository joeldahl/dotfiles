"
" hacktop.vim - Vim color file
"
" Written by:
" Joel Dahl <joel@vnode.se>
"

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="hacktop"

" See :help group-name
hi Comment		ctermfg=10 ctermbg=NONE cterm=NONE
hi Constant		ctermfg=6 ctermbg=NONE cterm=NONE
hi Identifier		ctermfg=4 ctermbg=NONE cterm=NONE
hi Statement		ctermfg=2 ctermbg=NONE cterm=NONE
hi PreProc		ctermfg=9 ctermbg=NONE cterm=NONE
hi Type			ctermfg=3 ctermbg=NONE cterm=NONE
hi Special		ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined		ctermfg=13 ctermbg=NONE cterm=NONE
hi Ignore		ctermfg=NONE ctermbg=NONE cterm=NONE
hi Error		ctermfg=1 ctermbg=NONE cterm=NONE
hi Todo			ctermfg=5 ctermbg=NONE cterm=NONE

" See :help highlight-groups
hi Cursor		ctermfg=8 ctermbg=12 cterm=NONE
hi CursorColumn		ctermfg=NONE ctermbg=0 cterm=NONE
hi CursorLine		ctermfg=NONE ctermbg=0 cterm=NONE
hi ErrorMsg		ctermfg=1 ctermbg=7 cterm=NONE
hi IncSearch		ctermfg=9 ctermbg=7 cterm=NONE
hi LineNr		ctermfg=10 ctermbg=0 cterm=NONE
hi MatchParen		ctermfg=1 ctermbg=10 cterm=NONE
hi NonText		ctermfg=11 ctermbg=NONE cterm=NONE
hi Search		ctermfg=3 ctermbg=7 cterm=NONE
hi SpecialKey		ctermfg=11 ctermbg=0 cterm=NONE
hi StatusLine		ctermfg=14 ctermbg=0 cterm=NONE
hi StatusLineNC		ctermfg=11 ctermbg=0 cterm=NONE
hi VertSplit		ctermfg=11 ctermbg=11 cterm=NONE
hi Visual		ctermfg=0 ctermbg=10 cterm=NONE
