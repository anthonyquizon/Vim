let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

map - :VimFilerCurrentDir -simple -auto-cd<CR>
map _ :VimFilerExplore -simple -auto-cd<CR>
map <C-_> :VimFiler 

