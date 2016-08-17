set foldmethod=indent      " Fold based on indent
set colorcolumn=73,80,160  " Show a column at 73, 80, and 160 char mark

" Auto save and restore views for these files
autocmd BufWinLeave *.py mkview
autocmd BufWinEnter *.py silent loadview

" Synstastic settings
let g:syntastic_python_checkers=['pylint', 'flake8']
let g:syntastic_python_flake8_args='--config ~/.flake8'
let g:syntastic_python_pylint_args='--rcfile .pylintrc --msg-template="{path}:{line}: [{msg_id}] {msg}" -r n'

" Pydocstring
let g:pydocstring_templates_dir=expand('<sfile>:p:h:h') . '/template/pydocstring/'

" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#smart_auto_mappings = 0
function! JediToggle()
    if g:jedi#popup_on_dot
        let g:jedi#popup_on_dot = 0
    else
        let g:jedi#popup_on_dot = 1
    endif
endfunction
noremap <leader>c :call JediToggle()<CR>

" snips
let g:ultisnips_python_style = "google"

" Add the virtualenv's site-packages to vim path
if has('python')
python << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

let @d = 'oimport ipdb; ipdb.set_trace()j^'
let @m = 'ggO# vim: set et ts=4 sw=4 fileencoding=utf-8:``'
let @u = 'yypv$r='
let @i = 'yypv$r-'

" Input current relative filename as a python path
inoremap \fn <C-R>=substitute(expand("%:r"), "/", ".", "g")<CR>
