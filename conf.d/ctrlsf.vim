"==============================================================
"	CtrlSF 全文搜索
"==============================================================
let g:ctrlsf_auto_focus = {
			\ "at" : "done",
			\ "duration_less_than": 1000
			\ }

let g:ctrlsf_mapping = {
			\ "next": "n",
			\ "prev": "N",
			\ "tab": "",
			\ "tabb": "",
			\ "popen": "",
			\ "popenf": "",
			\ }

function! s:ctrlsf_find_by_filetype()
	exec 'CtrlSF -filetype ' . &filetype . ' ' . expand("<cword>")
endfunction

nmap <silent>f :CtrlSFToggle<CR>
nmap <silent>F	:call <SID>ctrlsf_find_by_filetype()<CR>
nmap <silent><F3> :call <SID>ctrlsf_find_by_filetype()<CR>
":CtrlSFFocus<CR>
