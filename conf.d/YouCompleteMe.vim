"==============================================================
"	YouCompleteMe 自动代码补全
"==============================================================
"补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
"set completeopt=longest,menu
let g:ycm_confirm_extra_conf=1
"开启语法引擎, 关键字补全
let g:ycm_seed_identifiers_with_syntax=1	
"开启标签引擎, 基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files=1
"从字符串和注释中收集标识符用于补全, 否
let g:ycm_collect_identifiers_from_comments_and_strings=0
"禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=1
"在注释中也开启补全,否 
let g:ycm_complete_in_comments=0
"字符串中也开启补全,否
let g:ycm_complete_in_strings=0
"整合UltiSnips的提示
let g:ycm_use_ultisnips_completer=1
"开始补全的字符数
let g:ycm_min_num_of_chars_for_completion=2
"跳转的buf窗口打开方式,横向分割
let g:ycm_goto_buffer_command='horizontal-split' "vertical
"是否启用诊断提示
let g:ycm_enable_diagnostic_signs=0
if g:ycm_enable_diagnostic_signs == 1
	set signcolumn=yes
	highlight YcmErrorLine guibg=#3f0000
	let g:ycm_enable_diagnostic_highlighting=1
	let g:ycm_show_diagnostics_ui=1 
endif
let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion=1
"autocmd User YcmQuickFixOpened cclose
let g:ycm_filetype_whitelist = {
			\ "c":1, "cpp":1, "objc":1,
			\ "sh":1, "zsh":1,
			\ "lua":1, "php":1, "python":1,
			\ "javascript":1, "css":1, "html":1,
			\ }



function! s:TracyoneGotoDef(open_type)
	let l:ycm_ret=s:YcmGotoDef(a:open_type)
	if l:ycm_ret < 0
		try
			execute "cs find g ".expand("<cword>")
		catch /^Vim\%((\a\+)\)\=:E/
			echo "cscope query failed"
			if a:open_type != "" | wincmd q | endif
			return -1
		endtry
	else
		return 0
	endif
	return 0
endfunction

func! s:YcmGotoDef(open_type)
	let l:cur_word=expand("<cword>")."\s*\(.*[^;]$"
	:redir => l:msg
	execute a:open_type
	silent! execute ":YcmCompleter GoToDefinition"
	:redir END
	let l:rs=split(l:msg,'\r\n\|\n')
	"make sure index valid
	if get(l:rs,-1,3) !=3 && l:rs[-1] =~ 'Runtime.*'
		:redir => l:msg
		silent! execute ":YcmCompleter GoToDeclaration"
		:redir END
		let l:rs=split(l:msg,'\r\n\|\n')
		if get(l:rs,-1,3) != 3 && l:rs[-1] !~ 'Runtime.*'
			execute ":silent! A"
			" search failed then go back
			if search(l:cur_word) == 0
				execute ":silent! A"
				return -2
			endif
			return 3
		elseif get(l:rs,-1,3) == 3 "not exist no error
			return 0
		else
			return -3
		endif

	else
		return 1
	endif
endfunc





"映射按键
let g:ycm_key_list_select_completion=['<C-J>']
let g:ycm_key_list_previous_completion=['<C-K>']
let g:ycm_key_list_stop_completion=['<C-SPACE>', '<CR>' ]
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>x <C-X><C-O>
nnoremap <silent><leader>jj :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <silent><leader>jd	:YcmCompleter GoToDeclaration<CR>
"nnoremap <silent><leader>jc :YcmCompleter GoToDefinition<CR>
nnoremap <silent><leader>jc :call <SID>TracyoneGotoDef("")<CR>
nnoremap <silent><leader>g :call <SID>TracyoneGotoDef("")<CR>
nnoremap <silent><C-\>g :call <SID>TracyoneGotoDef("sp")<CR>


