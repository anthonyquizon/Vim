"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'

" Colour Schemes
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'w0ng/vim-hybrid'

NeoBundle 'Shougo/vimproc', { 'build' : {
    \       'mac': 'make -f make_mac.mak',
    \       'unix' : 'make -f make_unix.mak',
    \       'linux' : 'make'
    \   },
    \}

NeoBundle 'Shougo/vimproc'

NeoBundleLazy 'Shougo/unite.vim', {
			\ 'autoload' : {
			\   'commands' : [{'name' : 'Unite'},
			\       'UniteWithBufferDir']
			\   }
			\ }

"NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/neomru.vim'

NeoBundle 'scrooloose/nerdtree'

NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'scrooloose/nerdcommenter'

"NeoBundle 'Shougo/vimshell'
"NeoBundle 'godlygeek/tabular'

"NeoBundle 'scrooloose/syntastic'
NeoBundle 'mattn/emmet-vim'

"haskell plugins
NeoBundle 'eagletmt/ghcmod-vim', 'master'
    
"NeoBundle 'bitc/vim-hdevtools'
NeoBundle 'dag/vim2hs'
NeoBundle 'jaspervdj/stylish-haskell'
NeoBundle 'eagletmt/neco-ghc'

"Idris
NeoBundle 'idris-hackers/idris-vim'

"Purescript
NeoBundle 'raichoo/purescript-vim'

NeoBundle 'othree/html5.vim'

"NeoBundle 'docker/docker'
"NeoBundle 'bendavis78/vim-polymer'

NeoBundle 'groenewege/vim-less'
NeoBundle 'digitaltoad/vim-jade'

"NeoBundle 'kshenoy/vim-signature'
"NeoBundle 'tomtom/quickfixsigns_vim'
NeoBundle 'dhruvasagar/vim-markify'

NeoBundle 'milkypostman/vim-togglelist'
"NeoBundle 'lambdatoast/elm.vim'

"Clojure
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'guns/vim-sexp'
NeoBundle 'tpope/vim-sexp-mappings-for-regular-people'
NeoBundle 'kien/rainbow_parentheses.vim'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" === INCLUDES ===
runtime lib/bundles/unite.vim
runtime lib/bundles/NERDTree.vim
runtime lib/bundles/NERDCommenter.vim
runtime lib/bundles/vim-multiple-cursors.vim
runtime lib/bundles/neomru.vim
runtime lib/bundles/vim-hdevtools.vim
runtime lib/bundles/stylish-haskell.vim
runtime lib/bundles/ghcmod-vim.vim
runtime lib/bundles/vim2hs.vim
runtime lib/bundles/rainbow-parentheses.vim
"runtime lib/bundles/syntastic.vim
"runtime lib/bundles/VimFiler.vim
"runtime lib/bundles/neocomplete.vim
