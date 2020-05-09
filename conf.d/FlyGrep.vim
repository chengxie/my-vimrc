"==============================================================
"	FlyGrep 全文即时搜索
"==============================================================
let g:spacevim_data_dir='~/.cache'
nmap <silent><Leader>f :FlyGrep<CR>
"let g:forbidgrepdir_ag=['--ignore', 'MyConfig', '--ignore', 'Config', '--ignore', 'xml', '--ignore', 'BattleZoneConfig']
let g:forbidgrepdir_ag=['--ignore', '*.bak', '--ignore', '*.xml', '--ignore', '*.pb.*', '--ignore', 'xmlconfig_*', '--ignore', '*.d' ]
