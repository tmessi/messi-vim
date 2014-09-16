set foldmethod=syntax

" Auto save and restore views for these files
autocmd BufWinLeave *.cpp mkview
autocmd BufWinEnter *.cpp silent loadview

" Synstastic settings
let g:syntastic_cpp_checkers=['make']
