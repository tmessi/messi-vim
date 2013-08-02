" Some simple color overrides

set background=dark

" Basic settings
highlight Normal  guifg=Green guibg=Black
highlight LineNr  term=bold cterm=NONE ctermfg=gray ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Folded  ctermfg=59    ctermbg=NONE

" Pmenu for supertab etc
highlight Pmenu      guifg=green guibg=darkgray gui=NONE ctermfg=green ctermbg=darkgray cterm=NONE
highlight PmenuSel   guifg=green guibg=black    gui=NONE ctermfg=green ctermbg=black    cterm=NONE

" Better diff colors
highlight DiffAdd    term=reverse cterm=bold ctermbg=darkgreen ctermfg=black
highlight DiffChange term=reverse cterm=bold ctermbg=darkblue  ctermfg=black
highlight DiffText   term=reverse cterm=bold ctermbg=lightgray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=darkred   ctermfg=black

" Underline the cursor line
highlight CursorLine cterm=underline

" White space and 80 char mark
highlight OverLength  ctermbg=red
highlight ColorColumn ctermbg=darkgray
highlight ExtraWhitespace ctermbg=red guibg=red
