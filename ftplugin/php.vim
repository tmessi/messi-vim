let g:syntastic_check_on_open = 0
set colorcolumn=73,80  " Show a column at 73, 80, char mark
set redrawtime=10000

" Open definition
nmap <Leader>ds :PhpactorGotoDefinitionHsplit<CR>
nmap <Leader>dv :PhpactorGotoDefinitionVsplit<CR>
nmap <Leader>dt :PhpactorGotoDefinitionTab<CR>
