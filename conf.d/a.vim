"==============================================================
"	A.vim 切换cpp,h
"==============================================================
function! s:a_switch_mapping()
	nmap <buffer><silent><C-A>			:A!<CR>
	nmap <buffer><silent><leader>asa	:ASA<CR>
	nmap <buffer><silent><leader>asb	:ASB<CR>
	nmap <buffer><silent><leader>avl	:AVL<CR>
	nmap <buffer><silent><leader>avr	:AVR<CR>
endfunction
augroup my_a_switch
	au! FileType cpp,c,objc call <SID>a_switch_mapping()
augroup end

