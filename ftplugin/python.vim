set foldmethod=indent      " Fold based on indent
set colorcolumn=73,80,160  " Show a column at 73, 80, and 160 char mark

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
