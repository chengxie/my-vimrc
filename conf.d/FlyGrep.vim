"==============================================================
"	FlyGrep 全文即时搜索
"==============================================================
let g:spacevim_data_dir='~/.cache'
nnoremap <silent><space>f :FlyGrep<CR>
let g:FlyGrep_search_tools = ['ag']
"let g:forbidgrepdir_ag=['--ignore', 'MyConfig', '--ignore', 'Config', '--ignore', 'xml', '--ignore', 'BattleZoneConfig']
let g:forbidgrepdir_ag=['--ignore', '*.bak', '--ignore', '*.xml', '--ignore', '*.pb.*', '--ignore', 'xmlconfig_*', '--ignore', '*.d', '--ignore', '*.log.*', '--ignore', '*.log', '--ignore', 'tags', '--ignore', '*.swp', '--ignore', '*.pyc', '--ignore', '*__pycache__*', '--ignore', 'bin' ]
