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


call plug#begin('~/.vim/plugged')

"中文手册
Plug 'yianwillis/vimcdoc'

"my vim themes
Plug 'chengxie/my-vim-themes'

"monokai主题
Plug 'chengxie/vim-material-monokai'

"airline
Plug 'vim-airline/vim-airline'

"airline 配色主题
Plug 'vim-airline/vim-airline-themes'

"NERDTree 文件管理器
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

"NERDTree插件，在NERDTree中根据文件类型显示icon
Plug 'ryanoasis/vim-devicons', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

"NERDTree插件，在NERDTree中为文件扩展名添加语法高亮, 配合vim-devicons显示icon
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

"NERDTree插件，在NERDTree中显示git状态
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

"LeaderF 文件模糊查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

"TagBar tags标签列表
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

"FlyGrep 全文即时搜索
Plug 'wsdjeg/FlyGrep.vim'

"CtrlSF 全文搜索
Plug 'dyng/ctrlsf.vim'

"多选光标，多处替换
Plug 'terryma/vim-multiple-cursors'

"注释开关
Plug 'scrooloose/nerdcommenter'

"DoxygenToolkit
Plug 'chengxie/DoxygenToolkit.vim'

"书签
Plug 'kshenoy/vim-signature'

"模版补全,需要python3.7+支持
Plug 'SirVer/ultisnips'

"my vim snippets for ultisnips
Plug 'chengxie/my-vim-snippets'

"c++语法高亮, 支持stl库关键字
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'cpp', 'c' ] }

"a.vim 切换cpp,h
Plug 'chengxie/a.vim', { 'for': [ 'cpp', 'c', 'objc' ] }

"fswitch 切换cpp,h, 功能与A.vim重复, 但是vim-protodef依赖这个
Plug 'derekwyatt/vim-fswitch'

"由接口快速生成实现框架, 依赖vim-fswitch
Plug 'derekwyatt/vim-protodef', { 'for': [ 'cpp', 'c', 'objc' ] }

"gutentags ctags 管理器
Plug 'chengxie/vim-gutentags'

"YouCompleteMe 自动补全, 语义分析
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer --system-libclang' }

"ycm_simple_conf 使用一个xml文件生成YouCompleteMe的配置
Plug 'chengxie/ycm_simple_conf', { 'for': [ 'cpp', 'c', 'objc' ] }

"代码自动对齐
Plug 'godlygeek/tabular'

"vim-instant-markdown
if has('mac') || has('win32unix')
	"markdown语法高亮, 必须在tabular之后加载
	Plug 'plasticboy/vim-markdown', {'for': 'markdown' }
	"markdown目录链接自动生成,支持 GFM 和 Redcarpet 两种链接风格
	Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown' }
	"markdown即时预览
	Plug 'suan/vim-instant-markdown', {'for': 'markdown' }
endif

"有道翻译
Plug 'iamcco/dict.vim'

call plug#end()


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
	setlocal foldenable foldmethod=syntax
	normal! zR
endfunction

function! s:on_filetype_python() abort	
	setlocal tabstop=4		"编辑时<Tab>占用空格数
	setlocal shiftwidth=4	"格式化时<Tab>占用空格数
	setlocal softtabstop=4	"将连续数量的空格视为一个<Tab>
	setlocal expandtab		"将<Tab>转换成空格
	setlocal smarttab		"插入<Tab>时使用 'shiftwidth'
	setlocal foldenable foldmethod=indent
	normal! zR
endfunction

augroup my_augroup
	au! BufNewFile *.h,*.hpp,*.c,*.cpp,*.cc*.m,*.mm exec "DoxAuthor"
	au! FileType cpp,c,php,javascript,objc,cs call <SID>on_filetype_cpp()
	au! FileType python call <SID>on_filetype_python()
	"重新打开文件时光标回到最后编辑的位置
	au! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"zz" | endif
augroup end


"==============================================================
" 全局按键映射
"==============================================================
nmap <BS>		<C-W>h
nmap <TAB>		<C-W>l
nmap <C-J>		<C-W>j
nmap <C-K>		<C-W>k
"c-bs do nothing
imap 			<BS>	
"将winows换行符替换为unix换行符
nmap <silent><F8>	<ESC>:%s/\r\n/\r/g<CR><ESC>:w<CR><ESC>:%s/\r/\r/g<CR>
"光标所在单词的全文替换
nmap <F10>	#:%s/<C-R>=expand("<cword>")<CR>//g<Left><Left>
"清除搜索高亮
nmap <silent><F11>	:nohl<CR>

"let map_leader=","

