syntax enable		"开启语法高亮
syntax on			"允许用指定语法高亮配色方案替换默认方案
filetype on			"侦测文件类型
filetype indent on	"自适应不同语言的智能缩进
filetype plugin on	"加载文件类型插件
set nocompatible	"不使用VI的键盘模式，而使用VIM的！
set autoindent		"继承前一行的缩进方式，特别适用于多行注释
set backspace=indent,eol,start
set cindent			"实现C程序的缩进
set smartindent		"C程序智能自动缩进
set showmatch		"插入括号时短暂跳转到匹配的括号
set incsearch		"输入搜索模式时同时高亮部分的匹配
set nofoldenable	"默认关闭折叠
set nobackup		"覆盖文件时不保留备份文件
set nowrap			"禁止自动换行
set ruler			"显示光标当前位置
set number			"开启行号显示
set cursorline		"高亮显示当前行
set hlsearch		"高亮显示搜索结果 
set wildmenu		"打开命令补全菜单
set tabstop=4		"编辑时<Tab>占用空格数
set shiftwidth=4	"格式化时<Tab>占用空格数
set softtabstop=4	"将连续数量的空格视为一个<Tab>
set laststatus=2	"总是显示状态栏
set termencoding=utf-8
set encoding=utf-8					"内部使用的编码方式
set makeencoding=utf-8				"外部 make/grep 命令使用的编码
set fileencoding=utf-8				"多字节文本的文件编码
set fileencodings=utf-8,gbk,big5	"参与自动检测的字符编码	
set fileformat=unix					"文件输入输出使用的格式
set fileformats=unix				"参与自动检测的 'fileformat' 的格式
set background=dark				 " Setting dark mode

set term=$TERM "终端名
if $TERM == 'xterm-256color'
	set t_Co=256	"number of colors
endif
if $LC_TERMINAL == 'iTerm2' || has('win32unix') || has('gui_running')
	set termguicolors
endif


"设置airline主题
if isdirectory($HOME.'/.vim/plugged/vim-airline-themes')
	let g:airline_theme='solarized'
endif

"设置配色方案
if isdirectory($HOME.'/.vim/plugged/my-vim-themes/colors')
	colorscheme monokai
	"colorscheme solarized
	"colorscheme termcolor
endif

"if isdirectory($HOME.'/.vim/plugged/vim-material-monokai')
	"let g:materialmonokai_subtle_spell=1
	"let g:materialmonokai_subtle_airline=0
	"let g:materialmonokai_custom_lint_indicators=0
	"let g:airline_theme='materialmonokai'
	"colorscheme material-monokai
"endif

"加载所有插件配置,必须在设置过配色方案之后,
"否则配色方案会覆盖某些插件中设置的特定高亮颜色
let s:cnflist = split(globpath('~/.vim/conf.d', '*.vim'), '\n')
for cnf in s:cnflist
	exec 'silent! source '.cnf
endfor



"==============================================================
"F9 QuickFix 相关
"==============================================================
function! s:toggle_quickfix() abort
	if <SID>win_count_by_type('quickfix') == -1
		botright copen
	else
		cclose
	endif
endfunction
nmap <silent><F9>	:call <SID>toggle_quickfix()<CR>
nmap <silent><C-X><C-K>	:cp<CR>
nmap <silent><C-X><C-J>	:cn<CR>


"==============================================================
" Zoom / Restore window.
"==============================================================
function! s:toggle_win_zoom() abort
	if winnr('$') < 2
		return



