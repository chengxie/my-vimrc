"==============================================================
"	NERDTree 文件列表
"==============================================================
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeWinPos = 'left'
"let g:NERDTreeMapQuit='<ESC>'
let g:NERDTreeMapJumpNextSibling='<C-N>'
let g:NERDTreeMapJumpPrevSibling='<C-P>'
let g:NERDTreeWinSize=40
let NERDTreeIgnore=['__pycache__']
nnoremap <silent>; :call <SID>NERDTreeToggle()<CR>
nnoremap <silent><leader>v :call <SID>NERDTreeFind()<CR>
augroup my_nerdtree
	au! StdinReadPre * let s:std_in=1
	"如果最后一个窗口是NERDTree,则退出vim
	au! BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup end

"==============================================================
"vim-nerdtree-syntax-highlight
"==============================================================
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


function! s:NERDTreeFind() abort
	if exists('g:loaded_tagbar')
		if (g:NERDTreeWinPos == 'left' && g:tagbar_left) || (g:NERDTreeWinPos == 'right' && !g:tagbar_left)
			TagbarClose
		endif
	endif
	NERDTreeFind
endfunction

function! s:NERDTreeToggle() abort
	if exists('g:loaded_tagbar')
		if (g:NERDTreeWinPos == 'left' && g:tagbar_left) || (g:NERDTreeWinPos == 'right' && !g:tagbar_left)
			TagbarClose
		endif
	endif
	NERDTreeToggle
endfunction

