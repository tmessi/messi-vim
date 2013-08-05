scriptencoding utf-8
set encoding=utf-8

"------------------------------------------------
" Color settings
"------------------------------------------------
set background=dark

" Basic settings
highlight Normal  guifg=Green guibg=Black
highlight LineNr  term=bold cterm=NONE ctermfg=gray ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Folded  ctermfg=59    ctermbg=NONE

" Pmenu for supertab etc
highlight Pmenu      guifg=green guibg=darkgray gui=NONE ctermfg=green ctermbg=darkgray cterm=NONE
highlight PmenuSel   guifg=green guibg=black    gui=NONE ctermfg=green ctermbg=black    cterm=NONE

" Better diff colors
highlight DiffAdd    term=reverse cterm=bold ctermbg=darkgreen ctermfg=black
highlight DiffChange term=reverse cterm=bold ctermbg=darkblue  ctermfg=black
highlight DiffText   term=reverse cterm=bold ctermbg=lightgray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=darkred   ctermfg=black

" Underline the cursor line
highlight CursorLine cterm=underline

" Extra white space
highlight OverLength  ctermbg=red
highlight ColorColumn ctermbg=darkgray
highlight ExtraWhitespace ctermbg=red guibg=red


"------------------------------------------------
" Basic settings
"------------------------------------------------
let mapleader="'"      " The leader key
set mouse=a            " Allow mouse
set nowrap             " No wrapping
set showmatch          " Show matching brackets when inserted
set foldmethod=syntax  " Fold based on syntax
set t_Co=256           " Force 256 colors
set nobackup

" Tab settings
set expandtab          " Expand tabs into spaces
set smarttab           " Allow for easy backspace of tabs
set tabstop=4          " Use 4 spaces for tabs
set softtabstop=4      " Use 4 spaces for soft tabs
set shiftwidth=4       " Make shift same as a tab

" Indent settings
set autoindent
set nosmartindent

" Search settings
set hlsearch           " Highlight results
set incsearch          " Start showing results while typing

" Line number settings
set relativenumber     " Start with relative numbers
set numberwidth=3      " Use 3 columns for numbers

" Cursor / visual settings
set cursorline         " Show a line for the cursor
set colorcolumn=80     " Show a column at 80 char mark
set laststatus=2       " Always show status line
set showmode           " Show the current mode


"------------------------------------------------
" Plugin settings
"------------------------------------------------

" SuperTab settings
let g:SuperTabDefaultCompletionType = "context"

" NerdTree settings
let g:nerdtree_tabs_open_on_console_startup = 1

" Gundo settings
let g:gundo_preview_bottom = 1
let g:gundo_right = 1
let g:gundo_help = 0
let g:gundo_width = 25
let g:gundo_preview_height = 10

" Eclim settings
let g:EclimProjectTreeAutoOpen = 0
let g:EclimProjectTreeSharedInstance = 1
let g:EclimBrowser = 'xombrero'
let g:EclimOpenUrlInVimPatterns =
  \ [
    \ '\.\(dtd\|xml\|xsd\)$',
    \ '\.txt$',
  \ ]
command -range -nargs=* Google call eclim#web#SearchEngine('http://www.google.com/search?q=<query>', <q-args>, <line1>, <line2>)
command -nargs=? Dictionary call eclim#web#WordLookup('http://dictionary.reference.com/search?q=<query>', '<args>')


"------------------------------------------------
" Other settings
"------------------------------------------------
" Auto save and restore views for these files
autocmd BufWinLeave *.sh mkview
autocmd BufWinEnter *.sh silent loadview
autocmd BufWinLeave *.c mkview
autocmd BufWinEnter *.c silent loadview
autocmd BufWinLeave *.h mkview
autocmd BufWinEnter *.h silent loadview
autocmd BufWinLeave *.h mkview
autocmd BufWinEnter *.h silent loadview
autocmd BufWinLeave *.py mkview
autocmd BufWinEnter *.py silent loadview
autocmd BufWinLeave *.java mkview
autocmd BufWinEnter *.java silent loadview
autocmd BufWinLeave *.js mkview
autocmd BufWinEnter *.js silent loadview

" Show extra which space and over 80
match OverLength /\%80v.\+/
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Fun with numbers
autocmd FocusLost * :set number
autocmd FocusGained * : set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

" Key bindings
map <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <F2> :call NumberToggle()<cr>
map <F3> :set wrap! wrap?<CR>
map <F4> :set hlsearch! hlsearch?<CR>
map <F5> :edit <CR>
map <F6> :edit! <CR>
nmap <F12> :NERDTreeTabsToggle <CR>
nmap <F7> :GundoToggle <CR>
map <F8> :set expandtab! expandtab?<CR>
map <F9> :set paste! paste?<CR>
map <F10> :set cursorline! cursorline?<CR>
" Bindings for eclim commands
noremap <silent> <buffer> <leader>i :JavaImport<cr>
noremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
noremap <silent> <buffer> <leader>p :JavaDocComment<cr>
noremap <silent> <buffer> <leader>o :JavaImportOrganize<cr>
noremap <silent> <buffer> <cr> :JavaSearchContext<cr>
