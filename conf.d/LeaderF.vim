"==============================================================
"LeaderF 文件模糊查找
"==============================================================
let g:Lf_ShortcutF = '<space>f'
let g:Lf_ShortcutB = '<space><space>'
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_WildIgnore = {
		\ 'dir': ['.svn','.git','.hg', '.obj'],
		\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', '*.tbx', '*.mps', '*.dat', '*.xml', '*.pb.*', 'xmlconfig_*', '*.pid', '*.d', '*.log.*', '*.log' ]
		\}
