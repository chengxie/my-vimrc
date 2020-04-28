"==============================================================
"	FlyGrep 全文即时搜索
"==============================================================
let g:spacevim_data_dir='~/.cache'
nmap <silent><Leader>f :FlyGrep<CR>
let g:forbidgrepdir_ag=['--ignore', '*.xml', '--ignore', '*.pb.*', '--ignore', 'xmlconfig_*' ]

