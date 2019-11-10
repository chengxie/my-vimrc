"==============================================================
"	gutentags ctags自动生成
"==============================================================
"let g:gutentags_trace = 1 
"是否不启用gutentags
let g:gutentags_dont_load=0
"let g:gutentags_ctags_auto_set_tags = 1
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.svn', '.git', '.root', '.ycm_extra_conf.py', '.ycm_simple_conf.xml' ]
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
"启用ctags与cscope模块
let g:gutentags_modules=['ctags', 'cscope']
" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazlS', '--extra=+qf']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+plxcdefgmnstuv', '--language-force=c++']
let g:gutentags_ctags_extra_args += ['--c-kinds=+pxl']
" 如果使用 universal ctags 需要指定--output-format
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']	
let g:gutentags_file_list_command = 'find . -type f -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.m" -o -name "*.mm"'
"let g:gutentags_enabled=1
"let g:gutentags_define_advanced_commands=1
"nmap <silent><F12> :GutentagsToggleEnabled<CR>
" 正向遍历同名标签
nmap tn :tnext<CR>
" 反向遍历同名标签
nmap tp :tprevious<CR>

