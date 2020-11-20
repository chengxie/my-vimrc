"==============================================================
"	A.vim 切换cpp,h
"==============================================================
let g:alternateExtensions_{'h'} = "cpp,cxx,cc,CC,c"
let g:alternateExtensions_{'vue'} = "js"
let g:alternateExtensions_{'js'} = "vue"
function! s:a_switch_mapping()
	nmap <buffer><silent><C-A>			:A!<CR>
	nmap <buffer><silent><leader>asa	:ASA<CR>
	nmap <buffer><silent><leader>asb	:ASB<CR>
	nmap <buffer><silent><leader>avl	:AVL<CR>
	nmap <buffer><silent><leader>avr	:AVR<CR>
endfunction
augroup my_a_switch
	au! FileType vue,js,cpp,c,objc call <SID>a_switch_mapping()
augroup end

