

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround                  "Round indent to nearest shiftwidth multiple
set noswapfile

filetype on
filetype plugin on

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

source ~/.vim/config/bundle.vim
source ~/.vim/config/keymaps.vim
source ~/.vim/config/theme.vim

