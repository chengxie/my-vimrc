"有道翻译插件

let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"

"--普通模式下，<Leader>d 即可翻译光标下的文本，并在命令行回显
nmap <silent> <Leader>d <Plug>DictSearch

"--可视化模式下，<Leader>d 即可翻译选中的文本，并在命令行回显
vmap <silent> <Leader>d <Plug>DictVSearch

"--普通模式下，<Leader>w 即可翻译光标下的文本，并且在Dict新窗口显示
nmap <silent> <Leader>w <Plug>DictWSearch

"--可视化模式下，<Leader>w 即可翻译选中的文本，并且在Dict新窗口显示
vmap <silent> <Leader>w <Plug>DictWVSearch
