" Run go cmd on current file
nmap <leader>r <Plug>(go-run)
nmap <leader>t <Plug>(go-test)
nmap <leader>tf <Plug>(go-test-func)
nmap <leader>c <Plug>(go-coverage)

" Open definition
nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)

" Open gdocs
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>gv <Plug>(go-doc-vertical)

" Rename
nmap <Leader>e <Plug>(go-rename)

let g:syntastic_go_checkers = ['go', 'golangci_lint']
let g:syntastic_go_golangci_lint_args='--config ~/.golangci.yml'

let g:go_fmt_command = "gofumpt"

set colorcolumn=80

" compile tests on save to detect test compilation errors
autocmd BufWritePost *_test.go :GoTestCompile

" force build, fixes gopls issues
noremap <leader><leader>p :GoBuildTags ''<cr>

" use better fallback completion
call SuperTabSetDefaultCompletionType("<c-x><c-o>")
" close preview
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

let tlist_go_settings = 'go;p:packages;t:types;c:constants;v:variables;i:interfaces;s:structs;f:functions'

let g:golang_onwrite = 0
" Build/Test on save.
augroup auto_go
    autocmd!
    autocmd BufWritePost *.go call go#cmd#Build(1)
augroup end

