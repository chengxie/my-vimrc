"==============================================================
"	TagBar 函数列表
"==============================================================
let g:tagbar_left = 1
let g:tagbar_hide_nonpublic = 0
"let g:tagbar_map_close='<ESC>'
nnoremap <silent><F2> :call <SID>TagbarToggle()<CR>
let g:tagbar_type_javascript = { 'ctagsbin' : 'jsctags' }
let g:tagbar_width = 40
function! s:TagbarToggle() abort
	if exists('g:loaded_nerd_tree')
		if (g:NERDTreeWinPos == 'left' && g:tagbar_left) || (g:NERDTreeWinPos == 'right' && !g:tagbar_left)
			NERDTreeClose
		endif
	endif
	TagbarToggle
endfunction

