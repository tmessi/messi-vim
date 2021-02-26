let g:syntastic_check_on_open = 0
set colorcolumn=73,80  " Show a column at 73, 80, char mark
set redrawtime=10000

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpstan']

" Open definition
nmap <Leader>ds :PhpactorGotoDefinitionHsplit<CR>
nmap <Leader>dv :PhpactorGotoDefinitionVsplit<CR>
nmap <Leader>dt :PhpactorGotoDefinitionTab<CR>

" PHPcbf
function! PHP_cbf()
  let save_pos = getpos(".")
  execute('silent %! phpcbf -q')
  call setpos('.', save_pos)
endfunction

:command! PHPcbf call PHP_cbf()

autocmd BufWritePre *.php call PHP_cbf()
