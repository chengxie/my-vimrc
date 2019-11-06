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
"set backup			"覆盖文件时保留备份文件
set nobackup		"覆盖文件时不保留备份文件
set nowrap 			"禁止自动换行
set ruler			"显示光标当前位置
set number			"开启行号显示
set cursorline		"高亮显示当前行
"set cursorcolumn	"高亮显示当前列
set hlsearch 		"高亮显示搜索结果
set expandtab
set tabstop=4		"编辑时制表符占用空格数
set shiftwidth=4	"格式化时制表符占用空格数
set softtabstop=4	"将连续数量的空格视为一个制表符
set laststatus=2	"总是显示状态栏
set termencoding=utf-8
set encoding=utf-8					"内部使用的编码方式
set makeencoding=utf-8				"外部 make/grep 命令使用的编码
set fileencoding=utf-8				"多字节文本的文件编码
set fileencodings=utf-8,gbk,big5	"参与自动检测的字符编码	
set fileformat=unix					"文件输入输出使用的格式
set fileformats=unix				"参与自动检测的 'fileformat' 的格式
set background=dark                 " Setting dark mode

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

"模版补全
Plug 'SirVer/ultisnips'

"my vim snippets for ultisnips
Plug 'chengxie/my-vim-snippets'

"a.vim 切换cpp,h
Plug 'chengxie/a.vim', { 'for': [ 'cpp', 'c', 'objc' ] }

"fswitch 切换cpp,h
Plug 'derekwyatt/vim-fswitch'

"c++语法高亮, 支持stl库关键字
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'cpp', 'c' ] }

"由接口快速生成实现框架
Plug 'derekwyatt/vim-protodef', { 'for': [ 'cpp', 'c', 'objc' ] }

"gutentags ctags 管理器
Plug 'chengxie/vim-gutentags'

"YouCompleteMe 自动补全, 语义分析
if has('mac') || has('unix') || has('linux')
    Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer' }
else
    Plug 'ycm-core/YouCompleteMe', { 'do': 'echo \"do noting\"' } 
endif

"ycm_simple_conf 使用一个xml文件生成YouCompleteMe的配置
Plug 'chengxie/ycm_simple_conf', { 'for': [ 'cpp', 'c', 'objc' ] }

"vim-instant-markdown
if has('mac')
    Plug 'suan/vim-instant-markdown', {'for': 'markdown' }
endif

call plug#end()


if isdirectory($HOME.'/.vim/plugged/vim-airline-themes')
    let g:airline_theme='solarized'
endif

"if isdirectory($HOME.'/.vim/plugged/vim-material-monokai')
    "let g:materialmonokai_subtle_spell=1
    "let g:materialmonokai_subtle_airline=0
    "let g:materialmonokai_custom_lint_indicators=0
    "let g:airline_theme='materialmonokai'
    "colorscheme material-monokai
"endif

if isdirectory($HOME.'/.vim/plugged/my-vim-themes/colors')
    colorscheme monokai
    "colorscheme solarized
    "colorscheme termcolor
endif






"==============================================================
"	Airline 
"==============================================================
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#fugitiveline#enabled = 0
nmap <silent><leader>q	:bn<CR>:bd #<CR>
nnoremap <silent><C-L>	:bn!<CR>
nnoremap <silent><C-H>	:bp!<CR>




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



"==============================================================
"	TarBar 函数列表
"==============================================================
let g:tagbar_left = 1
let g:tagbar_hide_nonpublic = 0
"let g:tagbar_map_close='<ESC><ESC>'
nnoremap <silent><F2> :TagbarToggle<CR>



"==============================================================
"LeaderF 文件模糊查找
"==============================================================
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_ShortcutF = ',,'
let g:Lf_ShortcutB = '..'



"==============================================================
"	FlyGrep 全文即时搜索
"==============================================================
nmap <silent>f :FlyGrep<CR>


"==============================================================
"	CtrlSF 全文搜索
"==============================================================
nmap <silent>\f :CtrlSFToggle<CR>
nmap <silent>F :CtrlSF<CR>:CtrlSFFocus<CR>


"==============================================================
"	Doxygen注释相关
"==============================================================
let g:DoxygenToolkit_briefTag_pre="@brief \t" 
let g:DoxygenToolkit_paramTag_pre="@Param \t" 
let g:DoxygenToolkit_returnTag="@Returns \t" 
let g:DoxygenToolkit_fileTag = "@file \t"
let g:DoxygenToolkit_authorTag = "@author\t"
let g:DoxygenToolkit_versionString = "$Id$"
let g:DoxygenToolkit_dateTag = "@date \t"
let g:DoxygenToolkit_authorName="My name is CHENG XIE, and I am your God, wa hahaha..." 
"let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------------" 
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_compactDoc = "yes"
"let g:DoxygenToolkit_licenseTag="My own license"   <-- !!! Does not end with "\<enter>"


"==============================================================
"	vim-signature 书签
"==============================================================
highlight bookmark_color ctermbg=137 ctermfg=235 guibg=grey guifg=RoyalBlue3
highlight SignatureMarkText guifg=red
highlight SignatureMarkLine guibg=royalblue4 
highlight SignatureMarkerText guifg=green
highlight SignatureMarkerLine guibg=red4 
"let g:SignatureMarkTextHLDynamic=1
"let g:SignatureMarkerTextHLDynamic=1
"let g:SignatureMarkerLineHL='bookmark_color'
"let g:SignatureMarkLineHL='bookmark_color'



"==============================================================
"	ultisnips 模板补全
"==============================================================
let g:UltiSnipsSnippetDirectories=["mysnippets"] "UltiSnips



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




"==============================================================
"	protodef 由接口快速生成实现框架
"==============================================================
" 设置 pullproto.pl 脚本路径
let g:protodefprotogetter='~/.vim/plugged/vim-protodef/pullproto.pl'
" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=0



"==============================================================
"	gutentags ctags自动生成
"==============================================================
"let g:gutentags_trace = 1 
"是否不启用gutentags
let g:gutentags_dont_load=0
"let g:gutentags_ctags_auto_set_tags = 1
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.svn', '.git', '.ycm_extra_conf.py', '.ycm_simple_conf.xml' ]
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazlS', '--extra=+qf']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+plxcdefgmnstuv', '--language-force=c++']
let g:gutentags_ctags_extra_args += ['--c-kinds=+pxl']
" 如果使用 universal ctags 需要指定--output-format
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']	
let g:gutentags_file_list_command = 'find . -type f -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.m" -o -name "*.mm"'
"let g:gutentags_modules=['ctags', 'cscope']
"let g:gutentags_enabled=1
"let g:gutentags_define_advanced_commands=1
"nmap <silent><F12> :GutentagsToggleEnabled<CR>
" 正向遍历同名标签
nmap tn :tnext<CR>
" 反向遍历同名标签
nmap tp :tprevious<CR>





"==============================================================
"	YouCompleteMe 自动代码补全
"==============================================================
"补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
"set completeopt=longest,menu
if !has('mac') && !has('unix') && !has('linux')
    let g:ycm_server_python_interpreter='/mingw64/bin/python3.8'
endif
let g:ycm_confirm_extra_conf=1
"开启语法引擎, 关键字补全
let g:ycm_seed_identifiers_with_syntax=1	
"开启标签引擎, 基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files=1
"从字符串和注释中收集标识符用于补全, 否
let g:ycm_collect_identifiers_from_comments_and_strings=0
"禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
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
"是否启用诊断提示,否
let g:ycm_enable_diagnostic_signs=0 
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion=1
"autocmd User YcmQuickFixOpened cclose
"映射按键
let g:ycm_key_list_select_completion=['<C-J>']
let g:ycm_key_list_previous_completion=['<C-K>']
let g:ycm_key_list_stop_completion=['<C-SPACE>', '<CR>' ]
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>x <C-X><C-O>
nnoremap <silent><leader>jj :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <silent><leader>jd	:YcmCompleter GoToDeclaration<CR>
nnoremap <silent><leader>jc :YcmCompleter GoToDefinition<CR>
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "vim":1,
			\ "lua":1,
			\ "php":1,
			\ "javascript":1,
			\ "css":1,
			\ "html":1,
			\ }
"let g:ycm_semantic_triggers =  {
			"\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			"\ 'cs,lua,javascript': ['re!\w{2}'],
			"\ }






"==============================================================
"vim-instant-markdown
"==============================================================
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1


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
	inoremap {<CR> 		{}<Left><CR><ESC>ko
	"新开窗口显示 ctags
	nmap <C-\>		    <C-W><C-]>
	setlocal foldenable foldmethod=syntax
	normal! zR
endfunction

function! s:on_filetype_python() abort	
	setlocal et sta sw=4 sts=4 
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
imap 		    <BS>	
"将winows换行符替换为unix换行符
nmap <silent><F8>	<ESC>:%s/\r\n/\r/g<CR><ESC>:w<CR><ESC>:%s/\r/\r/g<CR>
"光标所在单词的全文替换
nmap <F10>	#:%s/<C-R>=expand("<cword>")<CR>//g<Left><Left>
"清除搜索高亮
"nmap <silent><F11>	:nohl<CR>

"let map_leader=","

"启动vim时,当前目录下如果存在.myvim,就加载它
"au VimEnter * silent! source .profile.vim

