"
" classic.vim - Vim color file
"
" Written by:
" Joel Dahl <joel@vnode.se>
"

" My old vim color theme. Save it here in case I ever want to use it again.
" Looks really nice with my old Xdefaults colors.
" I should probably tidy it up a bit someday...

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="classic"

hi Boolean		ctermfg=yellow
hi Character		ctermfg=yellow
hi Comment		ctermfg=blue
hi Conditional		ctermfg=darkcyan
hi Constant		ctermfg=yellow
hi Cursor		ctermfg=grey
hi Debug		ctermfg=grey
hi Define		ctermfg=darkred
hi Delimiter		ctermfg=grey
hi DiffAdd		ctermfg=grey
hi DiffChange		ctermfg=grey
hi DiffDelete		ctermfg=grey
hi DiffText		ctermfg=grey
hi Directory		ctermfg=grey
hi ErrorMsg		ctermfg=grey
hi Exception		ctermfg=darkcyan
hi Float		ctermfg=yellow
hi FoldColumn		ctermfg=grey
hi Folded		ctermfg=grey
hi Function		ctermfg=grey
hi Identifier		ctermfg=grey
hi Include		ctermfg=darkred
hi IncSearch		ctermfg=grey
hi Keyword		ctermfg=darkcyan
hi Label		ctermfg=darkcyan
hi LineNr		ctermfg=yellow
hi Macro		ctermfg=darkred
hi ModeMsg		ctermfg=grey
hi MoreMsg		ctermfg=grey
hi Number		ctermfg=yellow
hi Operator		ctermfg=darkcyan
hi PreCondit		ctermfg=darkred
hi PreProc		ctermfg=darkred
hi Question		ctermfg=grey
hi Repeat		ctermfg=darkcyan
hi Search		ctermfg=grey
hi SpecialChar		ctermfg=grey
hi SpecialComment	ctermfg=grey
hi Special		ctermfg=grey
hi SpecialKey		ctermfg=darkblue
hi Statement		ctermfg=darkcyan
hi StatusLine		ctermfg=grey
hi StatusLineNC		ctermfg=grey
hi StorageClass		ctermfg=darkgreen
hi String		ctermfg=yellow
hi Structure		ctermfg=darkgreen
hi Tag			ctermfg=grey
hi Title		ctermfg=grey
hi Todo			ctermfg=grey
hi Typedef		ctermfg=darkgreen
hi Type			ctermfg=darkgreen
hi Underlined		ctermfg=grey
hi VertSplit		ctermfg=grey
hi VisualNOS		ctermfg=grey
hi WarningMsg		ctermfg=grey
hi WildMenu		ctermfg=grey
