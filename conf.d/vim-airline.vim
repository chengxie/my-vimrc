"==============================================================
"	Airline 
"==============================================================
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#fugitiveline#enabled = 0
nnoremap <silent><leader>q	:bn<CR>:bd #<CR>
nnoremap <silent><space>q	:bn<CR>:bd #<CR>
nnoremap <silent><C-L>		:bn!<CR>
nnoremap <silent><C-H>		:bp!<CR>

