
" === Unite ===
" Settings
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	"let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	"let g:unite_source_grep_recursive_opt = ''
	let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g'
endif

" Keybindings
nnoremap <leader>f :<C-u>Unite file<CR>
nnoremap <leader>r :<C-u>Unite file_rec/async:!<CR>

let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite history/yank<CR>

nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>
