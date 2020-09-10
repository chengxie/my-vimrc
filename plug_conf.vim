call plug#begin('~/.vim/plugged')

"中文手册
Plug 'yianwillis/vimcdoc'

"airline
Plug 'vim-airline/vim-airline'

"NERDTree 文件管理器
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

"NERDTree插件，在NERDTree中为文件扩展名添加语法高亮, 配合vim-devicons显示icon
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

"NERDTree插件，在NERDTree中根据文件类型显示icon
Plug 'ryanoasis/vim-devicons'

"LeaderF 文件模糊查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

"CtrlSF 全文搜索
Plug 'dyng/ctrlsf.vim', { 'on': [ 'CtrlSF', 'CtrlSFToggle' ] }

"多选光标，多处替换
Plug 'terryma/vim-multiple-cursors'

"注释开关
Plug 'scrooloose/nerdcommenter'

"书签
Plug 'kshenoy/vim-signature'

"模版补全,需要python3.7+支持
Plug 'SirVer/ultisnips'

"snippets for ultisnips
Plug 'honza/vim-snippets'

"Write JavaScript ES6 easily with vim.
Plug 'isRuslan/vim-es6'

"缩进线
Plug 'Yggdroot/indentLine'

"c++语法高亮, 支持stl库关键字
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'cpp', 'c' ] }

"fswitch 切换cpp,h, 功能与A.vim重复, 但是vim-protodef依赖这个
Plug 'derekwyatt/vim-fswitch'

"由接口快速生成实现框架, 依赖vim-fswitch
Plug 'derekwyatt/vim-protodef', { 'for': [ 'cpp', 'c', 'objc' ] }

"代码自动对齐
Plug 'godlygeek/tabular'

"YouCompleteMe 自动补全, 语义分析
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer' }

"monokai主题
Plug 'chengxie/vim-material-monokai'

"TagBar tags标签列表
Plug 'chengxie/tagbar', { 'on': 'TagbarToggle' }

"FlyGrep 全文即时搜索
Plug 'chengxie/FlyGrep.vim', { 'on': 'FlyGrep' }

"DoxygenToolkit
Plug 'chengxie/DoxygenToolkit.vim', { 'for': [ 'cpp', 'c', 'objc', 'php', 'python' ] }

"my vim snippets for ultisnips
"Plug 'chengxie/my-vim-snippets'

"a.vim 切换cpp,h
Plug 'chengxie/a.vim', { 'for': [ 'cpp', 'c', 'objc' ] }

"gutentags ctags 管理器
Plug 'chengxie/vim-gutentags'

"ycm_simple_conf 使用一个xml文件生成YouCompleteMe的配置
Plug 'chengxie/ycm_simple_conf'

"vim-instant-markdown
if has('mac')
	"markdown语法高亮, 必须在tabular之后加载
	Plug 'plasticboy/vim-markdown', {'for': 'markdown' }
	"markdown目录链接自动生成,支持 GFM 和 Redcarpet 两种链接风格
	Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown' }
	"markdown即时预览
	Plug 'suan/vim-instant-markdown', {'for': 'markdown' }
endif

call plug#end()

