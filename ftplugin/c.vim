set foldmethod=syntax

" Auto save and restore views for these files
autocmd BufWinLeave *.c mkview
autocmd BufWinEnter *.c silent loadview

" Synstastic settings
let g:syntastic_c_checkers=['make']
