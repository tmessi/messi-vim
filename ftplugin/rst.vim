set textwidth=79
set colorcolumn=79

" Auto save and restore views for these files
autocmd BufWinLeave *.rst mkview
autocmd BufWinEnter *.rst silent loadview

let @u = 'yypv$r='
let @i = 'yypv$r-'
