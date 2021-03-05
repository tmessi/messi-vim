set tabstop=2          " Use 2 spaces for tabs
set softtabstop=2      " Use 2 spaces for soft tabs
set shiftwidth=2       " Make shift same as a tab

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
function! SyntasticCheckHook(errors)
  checktime
endfunction

set autoread
