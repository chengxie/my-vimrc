"==============================================================
"	NERDTree 文件列表
"==============================================================
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeWinPos = 'right'
"let g:NERDTreeQuitOnOpen = 1
"let g:NERDTreeMapQuit='<ESC><ESC>'
let g:NERDTreeMapJumpNextSibling='<C-N>'
let g:NERDTreeMapJumpPrevSibling='<C-P>'
nnoremap <silent>; :NERDTreeToggle<CR>
nnoremap <silent><leader>v :NERDTreeFind<CR>
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
