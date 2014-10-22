

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround                  "Round indent to nearest shiftwidth multiple

filetype on
filetype plugin on

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

source ~/.vim/config/bundle.vim
source ~/.vim/config/keymaps.vim
source ~/.vim/config/theme.vim

