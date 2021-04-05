
function! s:my_fswitch_mapping()
	nmap <buffer><silent><space>aa		:FSHere<CR>
	nmap <buffer><silent><space>ak		:FSAbove<CR>
	nmap <buffer><silent><space>aj		:FSBelow<CR>
	nmap <buffer><silent><space>ah		:FSLeft<CR>
	nmap <buffer><silent><space>al		:FSRight<CR>
	nmap <buffer><silent><space>ask		:FSSplitAbove<CR>
	nmap <buffer><silent><space>asj		:FSSplitBelow<CR>
	nmap <buffer><silent><space>ash		:FSSplitLeft<CR>
	nmap <buffer><silent><space>asl		:FSSplitRight<CR>
	com! A		FSHere
	com! Ak		FSAbove
	com! Aj		FSBelow
	com! Ah		FSLeft
	com! Al		FSRight
	com! ASk	FSSplitAbove
	com! ASj	FSSplitBelow
	com! ASh	FSSplitLeft
	com! ASl	FSSplitRight
endfunction


augroup my_fswitch_group
	au! BufEnter *.h	let b:fswitchdst = 'cpp,c,m'	| let b:fswitchlocs = 'reg:/include/src/,reg:/include.*/src/,ifrel:|/include/|../src|'
	au! BufEnter *.cpp	let b:fswitchdst = 'h'			| let b:fswitchlocs = 'reg:/src/include/,reg:|src|include/**|,ifrel:|/src/|../include|'
	au! BufEnter *.js	let b:fswitchdst = 'vue'		| let b:fswitchlocs = 'rel:.'
	au! BufEnter *.vue	let b:fswitchdst = 'js'			| let b:fswitchlocs = 'rel:.'
	au! FileType vue,javascript,cpp,c,objc call <SID>my_fswitch_mapping()
augroup end
