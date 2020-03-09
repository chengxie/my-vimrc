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
nmap <silent>f :CtrlSFToggle<CR>
nmap <silent>F :CtrlSF<CR>	
nmap <silent><F3> :CtrlSF<CR>
":CtrlSFFocus<CR>
