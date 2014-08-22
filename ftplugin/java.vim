set foldmethod=syntax

" Auto save and restore views for these files
autocmd BufWinLeave *.java mkview
autocmd BufWinEnter *.java silent loadview

" Bindings for eclim commands
noremap <silent> <buffer> <leader>i :JavaImport<cr>
noremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
noremap <silent> <buffer> <leader>p :JavaDocComment<cr>
noremap <silent> <buffer> <leader>o :JavaImportOrganize<cr>
noremap <silent> <buffer> <cr> :JavaSearchContext<cr>

