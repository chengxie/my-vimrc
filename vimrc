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
set foldlevelstart=99
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
set background=dark					" Setting dark mode
set clipboard=unnamed				"共享系统剪切板
set autoread

set term=$TERM "终端名
if $TERM == 'xterm-256color'
	set t_Co=256	"number of colors
	set t_ZH=[3m
	set t_ZR=[23m
	set noeb vb t_vb=					" 禁用响铃
endif

if $LC_TERMINAL == 'iTerm2' || has('win32unix') || has('gui_running')
	set termguicolors
endif
if has("gui_running")
	"set transp=8
	set guifont=SauceCodeProNerdFontComplete-Regular:h14
endif

"加载插件管理器
exec 'silent! source '.$HOME.'/.vim/plug_conf.vim'

"加载配色方案
if isdirectory($HOME.'/.vim/plugged/vim-material-monokai')
	let g:materialmonokai_subtle_spell=1
	let g:materialmonokai_subtle_airline=0
	let g:materialmonokai_custom_lint_indicators=0
	let g:materialmonokai_italic=1
	let g:airline_theme='materialmonokai'
	colorscheme material-monokai
endif

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
	endif
	if exists('t:zoomed') && t:zoomed
		execute t:zoom_winrestcmd
		let t:zoomed = 0
	else
		let t:zoom_winrestcmd = winrestcmd()
		resize
		vertical resize
		let t:zoomed = 1
	endif
endfunction
nnoremap <silent><leader>z :call <SID>toggle_win_zoom()<CR>
nnoremap <silent><space>z :call <SID>toggle_win_zoom()<CR>


"==============================================================
"	全局自动命令相关函数
"==============================================================
function! s:win_count_by_type(type) abort
	let i = 0
	let c = -1
	while i < winnr('$')
		if getbufvar(winbufnr(i + 1), '&buftype') == a:type
			let c = i + 1
			break
		endif
		let i = i + 1
	endwhile
	return c
endfunction

function! s:on_filetype_cpp() abort
	source $VIMRUNTIME/ftplugin/man.vim
	nmap <Leader>man :Man 3 <cword><CR>
	inoremap {<CR>		{}<Left><CR><ESC>ko
	"新开窗口显示 ctags
	nmap <C-\>			<C-W><C-]>
	setlocal foldenable foldmethod=indent
	"normal! zR
endfunction

function! s:on_filetype_python() abort
	setlocal tabstop=4		"编辑时<Tab>占用空格数
	setlocal shiftwidth=4	"格式化时<Tab>占用空格数
	setlocal softtabstop=4	"将连续数量的空格视为一个<Tab>
	setlocal expandtab		"将<Tab>转换成空格
	setlocal smarttab		"插入<Tab>时使用 'shiftwidth'
	setlocal foldenable foldmethod=indent
	"normal! zR
endfunction




augroup my_augroup
	au! FileType vue syntax sync fromstart
	au! FileType cpp,c,php,javascript,objc,cs call <SID>on_filetype_cpp()
	au! FileType python call <SID>on_filetype_python()
	"重新打开文件时光标回到最后编辑的位置
	au! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"zz" | endif
	"au! WinEnter * set cursorline
	"au! WinLeave * set nocursorline
	au! WinEnter * set cursorline wincolor=NormalActive
	au! WinLeave * set nocursorline wincolor=NormalInactive
augroup end


"==============================================================
" 全局按键映射
"==============================================================
nnoremap <BS>		<C-W>h
nnoremap <TAB>		<C-W>l
nnoremap <C-J>		<C-W>j
nnoremap <C-K>		<C-W>k
"c-bs do nothing
"imap 			<BS>
"将winows换行符替换为unix换行符
nmap <silent><F8>	<ESC>:%s/\r\n/\r/g<CR><ESC>:w<CR><ESC>:%s/\r/\r/g<CR>
nmap <silent><F10>	<ESC>ggVG=<ESC>:w<CR><ESC>:%s/[ \t]\n/\r/g<CR><ESC>:w<CR>
"光标所在单词的全文替换
"nmap <F10>	#:%s/<C-R>=expand("<cword>")<CR>//g<Left><Left>
"清除搜索高亮
nmap <silent>,,	:nohl<CR>
nmap <SPACE>v	:vsp<CR>
nmap <SPACE>h	:sb<CR>

let g:terminal_ansi_colors = [
			\ '#272822',
			\ '#f92672',
			\ '#a6e22e',
			\ '#f4bf75',
			\ '#21a7e9',
			\ '#ae81ff',
			\ '#a1efe4',
			\ '#f8f8f2',
			\ '#75715e',
			\ '#cc064e',
			\ '#7aac18',
			\ '#f0a945',
			\ '#21c7e9',
			\ '#7e33ff',
			\ '#00e5e5',
			\ '#f9f8f5',
			\ ]
" black
" Red
" green
" yellow
" blue
" magenta
" cyan
" white
" black (bright)
" red (bright)
" green (bright)
" yellow (bright)
" blue (bright)
" magenta (bright)
" cyan (bright)
" white (bright)
