

au FileType haskell nnoremap <leader>gc :GhcModCheckAndLintAsync<CR>
au FileType haskell nnoremap <leader>gC :GhcModCheckAsync<CR>
au FileType haskell nnoremap <leader>ge :GhcModExpand<CR>

autocmd BufWritePost *.hs GhcModCheckAndLintAsync

let &l:statusline = '%{empty(getqflist()) ? "[No Errors]" : "[Errors Found]"}' . (empty(&l:statusline) ? &statusline : &l:statusline)

let g:ghcmod_open_quickfix_function = 'GhcModQuickFixByMarkify'
function! GhcModQuickFixByMarkify()
    MarkifyClear
    Markify
endfunction

"g:ghcmod_max_preview_size=2
