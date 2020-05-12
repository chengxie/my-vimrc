"==============================================================
"LeaderF 文件模糊查找
"==============================================================
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_ShortcutF = ',,'
let g:Lf_ShortcutB = '..'
let g:Lf_WildIgnore = {
		\ 'dir': ['.svn','.git','.hg', '.obj'],
		\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', '*.tbx', '*.mps', '*.dat', '*.xml', '*.pb.*', 'xmlconfig_*', '*.pid', '*.d', '*.log.*', '*.log' ]
		\}
