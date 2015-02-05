
set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set shiftround  "Round indent to nearest shiftwidth multiple
set noswapfile
"set smartindent
set ai

set backspace=indent,eol,start

filetype on

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

autocmd BufRead,BufNewFile *.jade filetype indent off
autocmd BufRead,BufNewFile *.sass filetype indent off
autocmd BufRead,BufNewFile *.html filetype indent off

autocmd FileType jade setlocal indentkeys-=*<Return>
autocmd FileType html setlocal indentkeys-=*<Return>

au BufReadPost *.elm set syntax=haskell
au BufReadPost *.lvl set syntax=yaml
au BufReadPost *.inc set syntax=yaml
