
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/anthony/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/anthony/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'Shougo/vimproc', { 'build' : {
    \       'mac': 'make -f make_mac.mak',
    \       'unix' : 'make -f make_unix.mak',
    \   },
    \}

NeoBundleLazy 'Shougo/unite.vim', {
			\ 'autoload' : {
			\   'commands' : [{'name' : 'Unite'},
			\       'UniteWithBufferDir']
			\   }
			\ }

"NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/neomru.vim'

NeoBundle '29decibel/codeschool-vim-theme'
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'Shougo/vimshell'
NeoBundle 'godlygeek/tabular'

NeoBundle 'scrooloose/syntastic'
NeoBundle 'mattn/emmet-vim'

"haskell plugins
"NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'dag/vim2hs'
NeoBundle 'bitc/vim-hdevtools'
NeoBundle 'jaspervdj/stylish-haskell'
NeoBundle 'eagletmt/neco-ghc'

"Idris
NeoBundle 'idris-hackers/idris-vim'

"Purescript
NeoBundle 'raichoo/purescript-vim'

NeoBundle 'leafgarland/typescript-vim'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" === INCLUDES ===
source ~/.vim/config/bundles/unite.vim
source ~/.vim/config/bundles/NERDTree.vim
source ~/.vim/config/bundles/NERDCommenter.vim
source ~/.vim/config/bundles/vim-multiple-cursors.vim
"source ~/.vim/config/bundles/VimFiler.vim
source ~/.vim/config/bundles/neomru.vim
source ~/.vim/config/bundles/vim-hdevtools.vim
source ~/.vim/config/bundles/stylish-haskell.vim
"source ~/.vim/config/bundles/ghcmod.vim
source ~/.vim/config/bundles/neocomplete.vim
source ~/.vim/config/bundles/vim2hs.vim

