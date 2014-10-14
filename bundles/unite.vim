
" === Unite ===
" Settings
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	"let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	"let g:unite_source_grep_recursive_opt = ''
	"let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g'
endif

" Keybindings
nnoremap <C-l> :Unite file<CR>
"nnoremap <C-p> :Unite file_rec/async<CR>
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
