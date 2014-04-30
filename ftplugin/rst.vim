set textwidth=79
set spell
autocmd FocusLost * :set nospell
autocmd FocusGained * :set spell
autocmd InsertEnter * :set nospell
autocmd InsertLeave * :set spell
