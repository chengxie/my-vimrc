"==============================================================
"	vim-signature 书签
"==============================================================
"let g:SignatureMap = {
			"\ 'Leader'             :  "m",
			"\ 'PlaceNextMark'      :  "m,",
			"\ 'ToggleMarkAtLine'   :  "m.",
			"\ 'PurgeMarksAtLine'   :  "m-",
			"\ 'DeleteMark'         :  "dm",
			"\ 'PurgeMarks'         :  "m<Space>",
			"\ 'PurgeMarkers'       :  "m<BS>",
			"\ 'GotoNextLineAlpha'  :  "']",
			"\ 'GotoPrevLineAlpha'  :  "'[",
			"\ 'GotoNextSpotAlpha'  :  "`]",
			"\ 'GotoPrevSpotAlpha'  :  "`[",
			"\ 'GotoNextLineByPos'  :  "]'",
			"\ 'GotoPrevLineByPos'  :  "['",
			"\ 'GotoNextSpotByPos'  :  "]`",
			"\ 'GotoPrevSpotByPos'  :  "[`",
			"\ 'GotoNextMarker'     :  "]-",
			"\ 'GotoPrevMarker'     :  "[-",
			"\ 'GotoNextMarkerAny'  :  "]=",
			"\ 'GotoPrevMarkerAny'  :  "[=",
			"\ 'ListBufferMarks'    :  "m/",
			"\ 'ListBufferMarkers'  :  "m?"
			"\ }
highlight bookmark_color ctermbg=137 ctermfg=235 guibg=grey guifg=RoyalBlue3
highlight SignatureMarkText guifg=red
highlight SignatureMarkLine guibg=royalblue4 
highlight SignatureMarkerText guifg=green
highlight SignatureMarkerLine guibg=red4 
"let g:SignatureMarkTextHLDynamic=1
"let g:SignatureMarkerTextHLDynamic=1
"let g:SignatureMarkerLineHL='bookmark_color'
"let g:SignatureMarkLineHL='bookmark_color'
"highlight clear SignColumn 
set scl=auto

nmap <F4>	m.
nmap <F5>	['
nmap <F6>	]'
